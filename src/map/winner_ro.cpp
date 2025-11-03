#include "winner_ro.hpp"

#include <cstdlib>
#include <sstream>
#include <string>

#include <common/cbasetypes.hpp>
#include <common/nullpo.hpp>
#include <common/showmsg.hpp>
#include <common/sql.hpp> // SQL_INNODB
#include <common/strlib.hpp>


#include "battle.hpp"
#include "pc.hpp"

/************************************************************************************************ 
------------------------TODO OK --------------------------

Lord Knight - OK
High Wizard - OK
Sniper - OK
High Priest - OK
Assassin Cross - OK
Whitesmith - OK
Paladin - OK
Professor - OK
Clown (Hombre) - OK
Gypsy (Mujer) - OK
Champion - OK
Stalker - OK
Creator - OK
Star Gladiator - OK
Soul Linker - OK
Ninja - OK
Gunslinger - OK

---------------------------------------------------------------------------------------------------------
Revisar que se pueda mostrar en el log de skill_recovery la curacion a emperium

------------------------------------------------------------

Las comidas de Combat no se estan guardando en el log de usables

*/

std::string log_path = "woe_log/";

/**
GUARDA EN UNA RUTA LOCAL EL LOG DE TODAS LAS SKILL UTILIZADAS PARA SER USADO EN EL LOG DE WINNER RO EN LA PAGINA WEB
*/
void save_skill_log_local(block_list *src, uint16 skill_id, uint16 skill_lv) {
	if (src && src->type == BL_PC) {
		map_session_data *sd = BL_CAST(BL_PC, src);
		if (sd) {
			map_data *mapdata = map_getmapdata(sd->bl.m);
			if (mapdata && mapdata->getMapFlag(MF_GVG)) {
				if (sd) {
					// guardamos la ultima habilidad usada sera util mas adelante en el kill_log
					sd->last_skill_id = skill_id;
					sd->last_skill_lv = skill_lv;

					// Obtener la fecha y hora actual
					time_t now = time(NULL);
					struct tm *t = localtime(&now);
					char time_str[32];
					strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", t);

					// Obtener el ID de la guild
					int guild_id = sd->status.guild_id;

					// Construir la ruta completa del archivo de log
					std::string full_log_path = log_path + "skill_log.txt";

					// Escribir en el log
					FILE *log_file = fopen(full_log_path.c_str(), "a"); // `c_str()` convierte `std::string` a `const char*`
					if (log_file) {
						fprintf(log_file, "%s|%d|%d|%d|%d\n",
								time_str, sd->status.char_id, guild_id, skill_id, skill_lv);
						fclose(log_file);
					} else {
						printf("Error: No se pudo abrir el archivo de skill log en %s\n", full_log_path.c_str());
					}
				}
			}
		}
	}
}

/* SUBE A LA BASE DE DATOS EL LOG DE SKILLS LOCAL QUE SE GENERO DURANTE LA WOE*/
void save_skill_log_db(void){
	// Construir la ruta completa del archivo de log
	std::string log_file_path = log_path + "skill_log.txt";

	// Abrir el archivo de log para leer los datos
	FILE *log_file = fopen(log_file_path.c_str(), "r");
	if (log_file) {
		char line[256];
		char time_str[32];
		int char_id, guild_id, skill_id, skill_lv;
		std::stringstream ss;
        int count = 0;
        const int BATCH_SIZE = 100; // Número de filas por lote


		while (fgets(line, sizeof(line), log_file)) {
			if (sscanf(line, "%31[^|]|%d|%d|%d|%d",
						time_str, &char_id, &guild_id, &skill_id, &skill_lv) == 5) {

				// Si ya se agregó al menos una fila, agrega una coma para separar los valores
				if (count > 0) {
					ss << ", ";
				}
				// Agregar la fila al stringstream; escapamos las comillas simples en time_str si fuera necesario
				ss << "('" << time_str << "', " << char_id << ", " << guild_id << ", "
					<< skill_id << ", " << skill_lv << ")";
				count++;

				// Si alcanzamos el tamaño de lote, ejecutamos el INSERT
				if (count >= BATCH_SIZE) {
					std::string query = "INSERT INTO woe_skill_log (timestamp, char_id, guild_id, skill_id, skill_lv) VALUES " + ss.str() + ";";
					if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
						Sql_ShowDebug(logmysql_handle);
					}
					// Limpiar el acumulador y reiniciar el contador
					ss.str("");
					ss.clear();
					count = 0;
				}
			}
		}
		// Insertar cualquier fila pendiente que no haya alcanzado el tamaño del lote
        if (count > 0) {
            std::string query = "INSERT INTO woe_skill_log (timestamp, char_id, guild_id, skill_id, skill_lv) VALUES " + ss.str() + ";";
            if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                Sql_ShowDebug(logmysql_handle);
            }
        }

		fclose(log_file);
		remove(log_file_path.c_str()); 

		ShowMessage("Se han guardado los logs de habilidades de WoE en la base de datos Winner Ro.\n");
	}
}

//GUARDA EN UNA RUTA LOCAL EL LOG DE TODOS LOS DAÑOS CAUSADOS PARA SER USADO EN EL LOG DE WINNER RO EN LA PAGINA WEB
void save_damage_log_local(block_list *src, block_list *target, int64 damage, uint16 skill_lv, uint16 skill_id) {
	if( src && src->type == BL_PC && target && target->type == BL_PC ) {
		map_session_data *sd = BL_CAST(BL_PC, src);
		map_session_data *tsd = BL_CAST(BL_PC, target);

		map_data *mapdata = map_getmapdata(sd->bl.m);
		if (mapdata && mapdata->getMapFlag(MF_GVG)) {
			if (sd && tsd) {
				// Obtener la fecha y hora actual
				char time_str[32];
				time_t now = time(NULL);
				struct tm *t = localtime(&now);
				strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", t);

				// Obtener el ID de la guild del atacante y victima
				int attacker_guild_id = sd->status.guild_id;
				int target_guild_id = tsd->status.guild_id;

				
				// Si el skill_id = 0 entonces es un ataque basico, asi podemos llevarlo en el kill log
				if (skill_id == 0) {
					sd->last_skill_id = skill_id;
					sd->last_skill_lv = skill_lv;
				} 

				// Construir la ruta completa del archivo de log
				std::string full_log_path = log_path + "damage_log.txt";
				
				// Escribir en el log
				FILE *log_file = fopen(full_log_path.c_str(), "a"); // `c_str()` convierte `std::string` a `const char*`

				if (log_file) {
					fprintf(log_file, "%s|%d|%d|%d|%d|%d|%d|%lld\n",
						time_str, sd->status.char_id, attacker_guild_id, skill_id, skill_lv, tsd->status.char_id, target_guild_id, (long long)damage);
					fclose(log_file);
				}
				else {
					printf("Error: No se pudo abrir el archivo de damage log en %s\n", full_log_path.c_str());
			
				}
			}
		}		
	}
}

/* SUBE A LA BASE DE DATOS EL LOG DE DANIO LOCAL QUE SE GENERO DURANTE LA WOE*/
void save_damage_log_db(void){
	// Construir la ruta completa del archivo de log
	std::string log_file_path = log_path + "damage_log.txt";

	// Abrir el archivo de log para leer los datos
	FILE *log_file = fopen(log_file_path.c_str(), "r");
	if (log_file) {
		char line[256];
		char time_str[32];
		int attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, target_char_id,target_guild_id, attacker_damage;
		std::stringstream ss;
        int count = 0;
        const int BATCH_SIZE = 100; // Número de filas por lote


		while (fgets(line, sizeof(line), log_file)) {
			if (sscanf(line, "%31[^|]|%d|%d|%d|%d|%d|%d|%d",
						time_str, &attacker_char_id, &attacker_guild_id, &attacker_skill_id, &attacker_skill_lv, &target_char_id, &target_guild_id, &attacker_damage) == 8) {
	
				// Si ya se agregó al menos una fila, agrega una coma para separar los valores
				if (count > 0) {
					ss << ", ";
				}
				// Agregar la fila al stringstream; escapamos las comillas simples en time_str si fuera necesario
				ss << "('" << time_str << "', " << attacker_char_id << ", " << attacker_guild_id << ", "
					<< attacker_skill_id << ", " << attacker_skill_lv << ", " << target_char_id << ", "
					<< target_guild_id << ", " << attacker_damage << ")";
				count++;

				// Si alcanzamos el tamaño de lote, ejecutamos el INSERT
				if (count >= BATCH_SIZE) {
					std::string query = "INSERT INTO woe_damage_log (timestamp, attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, target_char_id, target_guild_id, attacker_damage) VALUES " + ss.str() + ";";
					if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
						Sql_ShowDebug(logmysql_handle);
					}
					// Limpiar el acumulador y reiniciar el contador
					ss.str("");
					ss.clear();
					count = 0;
				}

			}
		}
		// Insertar cualquier fila pendiente que no haya alcanzado el tamaño del lote
        if (count > 0) {
            std::string query = "INSERT INTO woe_damage_log (timestamp, attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, target_char_id, target_guild_id, attacker_damage) VALUES " + ss.str() + ";";
            if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                Sql_ShowDebug(logmysql_handle);
            }
        }

		fclose(log_file);
		remove(log_file_path.c_str());

		ShowMessage("Se han guardado los logs de damage de WoE en la base de datos Winner Ro.\n");
	}
}


//GUARDA EN UNA RUTA LOCAL EL LOG DE TODAS LAS KILLS PARA DEPUES SUBIRLO AL LOG DE WINNER RO EN LA PAGINA WEB
void save_kill_log_local(map_session_data *sd, block_list *src) {
	
	if (src && src->type == BL_PC) {
		map_session_data *psd = (map_session_data *)src;
		map_data *mapdata = map_getmapdata(sd->bl.m);

		if (mapdata->getMapFlag(MF_GVG)){
			// Obtener la fecha y hora actual
			char time_str[32];
			time_t now = time(NULL);
			struct tm *t = localtime(&now);
			strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", t);
			
			// Obtener el ID de la guild del atacante y victima
			int attacker_guild_id = psd->status.guild_id;
			int victim_guild_id = sd->status.guild_id;

			// Construir la ruta completa del archivo de log
			std::string full_log_path = log_path + "kill_log.txt";
				
			// Escribir en el log
			FILE *log_file = fopen(full_log_path.c_str(), "a");

			if (log_file) {
				fprintf(log_file, "%s|%d|%d|%d|%d|%d|%d\n",
					time_str, psd->status.char_id, attacker_guild_id, psd->last_skill_id, psd-> last_skill_lv, sd->status.char_id, victim_guild_id);
				fclose(log_file);
			}
			else {
				printf("Error: No se pudo abrir el archivo de kill log en %s\n", full_log_path.c_str());
		
			}
		}
	}
}

/* SUBE A LA BASE DE DATOS EL LOG DE KILLS LOCAL QUE SE GENERO DURANTE LA WOE*/
void save_kill_log_db(void) {
    // Construir la ruta completa del archivo de log
    std::string log_file_path = log_path + "kill_log.txt";

    // Abrir el archivo de log para leer los datos
    FILE *log_file = fopen(log_file_path.c_str(), "r");
    if (log_file) {
        char line[256];
		char time_str[32];
		int attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, target_char_id,target_guild_id;
        std::stringstream ss;
        int count = 0;
        const int BATCH_SIZE = 100; // Número de filas por lote

        // Recorrer el archivo línea por línea
        while (fgets(line, sizeof(line), log_file)) {
            if (sscanf(line, "%31[^|]|%d|%d|%d|%d|%d|%d",
                       time_str,
                       &attacker_char_id,
                       &attacker_guild_id,
                       &attacker_skill_id,
                       &attacker_skill_lv,
                       &target_char_id,
                       &target_guild_id) == 7)
            {
                // Si ya se agregó al menos una fila, agrega una coma para separar los valores
                if (count > 0) {
                    ss << ", ";
                }
                // Agregar la fila al stringstream; escapamos las comillas simples en time_str si fuera necesario
                ss << "('" << time_str << "', " << attacker_char_id << ", " << attacker_guild_id << ", "
                   << attacker_skill_id << ", " << attacker_skill_lv << ", " << target_char_id << ", "
                   << target_guild_id << ")";
                count++;

                // Si alcanzamos el tamaño de lote, ejecutamos el INSERT
                if (count >= BATCH_SIZE) {
                    std::string query = "INSERT INTO woe_kill_log (timestamp, attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, victim_char_id, victim_guild_id) VALUES " + ss.str() + ";";
                    if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                        Sql_ShowDebug(logmysql_handle);
                    }
                    // Limpiar el acumulador y reiniciar el contador
                    ss.str("");
                    ss.clear();
                    count = 0;
                }
            }
        }
        // Insertar cualquier fila pendiente que no haya alcanzado el tamaño del lote
        if (count > 0) {
            std::string query = "INSERT INTO woe_kill_log (timestamp, attacker_char_id, attacker_guild_id, attacker_skill_id, attacker_skill_lv, victim_char_id, victim_guild_id) VALUES " + ss.str() + ";";
            if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                Sql_ShowDebug(logmysql_handle);
            }
        }
        fclose(log_file);
        remove(log_file_path.c_str());

        ShowMessage("Se han guardado los logs de kills de WoE en la base de datos Winner Ro.\n");
    }
}

//GUARDA EN UNA RUTA LOCAL EL LOG DE LAS RECOVERY SKILLS (Heal, AppleOfIdun, Spp) PARA DEPUES SUBIRLO AL LOG DE WINNER RO EN LA PAGINA WEB
void save_skill_recovery_log_local(block_list *src, block_list *target, int64 recovery, uint16 skill_lv, uint16 skill_id) {
	//if( src && src->type == BL_PC && target && target->type == BL_PC ) {
	if( src && src->type == BL_PC) {
		map_session_data *sd = BL_CAST(BL_PC, src);
		map_session_data *tsd = BL_CAST(BL_PC, target);

		map_data *mapdata = map_getmapdata(sd->bl.m);
		if (mapdata && mapdata->getMapFlag(MF_GVG)) {
			if (sd && tsd) {
				// Obtener la fecha y hora actual
				char time_str[32];
				time_t now = time(NULL);
				struct tm *t = localtime(&now);
				strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", t);

				// Obtener el ID de la guild
				int source_guild_id = sd->status.guild_id;
				int target_guild_id = sd->status.guild_id;

				// Construir la ruta completa del archivo de log
				std::string full_log_path = log_path + "skill_recovery_log.txt";
				
				// Escribir en el log
				FILE *log_file = fopen(full_log_path.c_str(), "a");

				if (log_file) {
					fprintf(log_file, "%s|%d|%d|%d|%d|%d|%d|%lld\n",
						time_str, sd->status.char_id, source_guild_id, skill_id, skill_lv, tsd->status.char_id, target_guild_id, (long long)recovery);
					fclose(log_file);
				}
				else {
					printf("Error: No se pudo abrir el archivo de damage log en %s\n", full_log_path.c_str());
			
				}
			}
		}		
	}
}

/* SUBE A LA BASE DE DATOS EL LOG SKILLS RECOVERY (Heal, AppleOfIdun, Spp) LOCAL QUE SE GENERO DURANTE LA WOE*/
void save_skill_recovery_log_db(void) {
    // Construir la ruta completa del archivo de log
    std::string log_file_path = log_path + "skill_recovery_log.txt";

    // Abrir el archivo de log para leer los datos
    FILE *log_file = fopen(log_file_path.c_str(), "r");
    if (log_file) {
        char line[256];
        char time_str[32];
        int source_char_id, source_guild_id, source_skill_id, source_skill_lv;
        int target_char_id, target_guild_id, recovery;
        std::stringstream ss;
        int count = 0;
        const int BATCH_SIZE = 100; // Número de filas por lote

        // Recorrer el archivo línea por línea
        while (fgets(line, sizeof(line), log_file)) {
            // Se asume que el formato es:
            // time_str|source_char_id|source_guild_id|source_skill_id|source_skill_lv|target_char_id|target_guild_id|recovery
            if (sscanf(line, "%31[^|]|%d|%d|%d|%d|%d|%d|%d",
                       time_str,
                       &source_char_id,
                       &source_guild_id,
                       &source_skill_id,
                       &source_skill_lv,
                       &target_char_id,
                       &target_guild_id,
                       &recovery) == 8)
            {
                // Si ya se agregó al menos una fila, agrega una coma para separar los valores
                if (count > 0) {
                    ss << ", ";
                }
                // Agregar la fila al stringstream; escapamos las comillas simples en time_str si fuera necesario
                ss << "('" << time_str << "', " << source_char_id << ", " << source_guild_id << ", "
                   << source_skill_id << ", " << source_skill_lv << ", " << target_char_id << ", "
                   << target_guild_id << ", " << recovery << ")";
                count++;

                // Si alcanzamos el tamaño de lote, ejecutamos el INSERT
                if (count >= BATCH_SIZE) {
                    std::string query = "INSERT INTO woe_skill_recovery_log (timestamp, source_char_id, source_guild_id, source_skill_id, source_skill_lv, target_char_id, target_guild_id, recovery) VALUES " + ss.str() + ";";
                    if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                        Sql_ShowDebug(logmysql_handle);
                    }
                    // Limpiar el acumulador y reiniciar el contador
                    ss.str("");
                    ss.clear();
                    count = 0;
                }
            }
        }
        // Insertar cualquier fila pendiente que no haya alcanzado el tamaño del lote
        if (count > 0) {
            std::string query = "INSERT INTO woe_skill_recovery_log (timestamp, source_char_id, source_guild_id, source_skill_id, source_skill_lv, target_char_id, target_guild_id, recovery) VALUES " + ss.str() + ";";
            if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                Sql_ShowDebug(logmysql_handle);
            }
        }
        fclose(log_file);
        remove(log_file_path.c_str());

        ShowMessage("Se han guardado los logs de curaciones de WoE en la base de datos Winner Ro.\n");
    }
}

/**
GUARDA EN UNA RUTA LOCAL EL LOG DE UNA LISTA DE LOS CONSUMIBLES PARA SER USADO EN EL LOG DE WINNER RO EN LA PAGINA WEB
*/
void save_usable_item_log_local(map_session_data *sd, item_data *item, int32 hp, int32 sp) {
	if (sd) {
		map_data *mapdata = map_getmapdata(sd->bl.m);
		if (mapdata && mapdata->getMapFlag(MF_GVG)) {
			if (sd) {
				// Obtener la fecha y hora actual
				time_t now = time(NULL);
				struct tm *t = localtime(&now);
				char time_str[32];
				strftime(time_str, sizeof(time_str), "%Y-%m-%d %H:%M:%S", t);

				// Obtener el ID de la guild
				int guild_id = sd->status.guild_id;

				// Construir la ruta completa del archivo de log
				std::string full_log_path = log_path + "usable_item_log.txt";

				// Escribir en el log
				FILE *log_file = fopen(full_log_path.c_str(), "a");
				if (log_file) {
					fprintf(log_file, "%s|%d|%d|%d|%d|%d|%d\n",
							time_str, sd->status.char_id, guild_id, item->type, item->nameid, hp, sp);
					fclose(log_file);
				} else {
					printf("Error: No se pudo abrir el archivo de skill log en %s\n", full_log_path.c_str());
				}
			}
		}
	}
}


/* SUBE A LA BASE DE DATOS EL LOG DE USABLE ITEMS QUE SE GENERO DURANTE LA WOE*/
void save_usable_item_log_db(void) {
    // Construir la ruta completa del archivo de log
    std::string log_file_path = log_path + "usable_item_log.txt";

    // Abrir el archivo de log para leer los datos
    FILE *log_file = fopen(log_file_path.c_str(), "r");
    if (log_file) {
        char line[256];
        char time_str[32];
        int char_id, guild_id, item_type, item_id, recovery_hp, recovery_sp;
        std::stringstream ss;
        int count = 0;
        const int BATCH_SIZE = 100; // Número de filas por lote

        // Recorrer el archivo línea por línea
        while (fgets(line, sizeof(line), log_file)) {
            // Se asume que el formato es:
            // time_str|char_id|guild_id|item_type|item_id|recovery_hp|recovery_sp
            if (sscanf(line, "%31[^|]|%d|%d|%d|%d|%d|%d",
                       time_str,
                       &char_id,
                       &guild_id,
                       &item_type,
                       &item_id,
                       &recovery_hp,
                       &recovery_sp) == 7)
            {
                // Si ya se agregó al menos una fila, agrega una coma para separar los valores
                if (count > 0) {
                    ss << ", ";
                }
                // Agregar la fila al stringstream; escapamos las comillas simples en time_str si fuera necesario
                ss << "('" << time_str << "', " << char_id << ", " << guild_id << ", "
                   << item_type << ", " << item_id << ", " << recovery_hp << ", "
                   << recovery_sp << ")";
                count++;

                // Si alcanzamos el tamaño de lote, ejecutamos el INSERT
                if (count >= BATCH_SIZE) {
                    std::string query = "INSERT INTO woe_usable_item_log (timestamp, char_id, guild_id, item_type, item_id, recovery_hp, recovery_sp) VALUES " + ss.str() + ";";
                    if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                        Sql_ShowDebug(logmysql_handle);
                    }
                    // Limpiar el acumulador y reiniciar el contador
                    ss.str("");
                    ss.clear();
                    count = 0;
                }
            }
        }
        // Insertar cualquier fila pendiente que no haya alcanzado el tamaño del lote
        if (count > 0) {
            std::string query = "INSERT INTO woe_usable_item_log (timestamp, char_id, guild_id, item_type, item_id, recovery_hp, recovery_sp) VALUES " + ss.str() + ";";
            if (Sql_Query(logmysql_handle, query.c_str()) != SQL_SUCCESS) {
                Sql_ShowDebug(logmysql_handle);
            }
        }
        fclose(log_file);
        remove(log_file_path.c_str());

        ShowMessage("Se han guardado los logs de usable items de WoE en la base de datos Winner Ro.\n");
    }
}
