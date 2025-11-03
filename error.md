[builder 5/5] RUN cmake -S . -B build         -G Ninja         -DCMAKE_BUILD_TYPE=Release         -DINSTALL_TO_PATH=ON         -DINSTALL_PATH=/opt/rathena &&     cmake --build build --target install

-- The C compiler identification is GNU 12.2.0

-- The CXX compiler identification is GNU 12.2.0

-- Detecting C compiler ABI info

-- Detecting C compiler ABI info - done

-- Check for working C compiler: /usr/bin/cc - skipped

-- Detecting C compile features

-- Detecting C compile features - done

-- Detecting CXX compiler ABI info

-- Detecting CXX compiler ABI info - done

-- Check for working CXX compiler: /usr/bin/c++ - skipped

-- Detecting CXX compile features

-- Detecting CXX compile features - done

-- Detecting git

-- Found Git: /usr/bin/git (found version "2.39.5") 
-- Found git : /usr/bin/git version (2.39.5)

-- Detecting threads library

-- git Version: unknow, unknow

-- Performing Test CMAKE_HAVE_LIBC_PTHREAD

-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success

-- Found Threads: TRUE  

-- Detecting threads library - done
-- Check if supporting Thread local storage (TLS)

-- Performing Test HAVE_TLS

-- Performing Test HAVE_TLS - Success
-- Check for TLS- yes
-- Detecting math library (m)

-- Looking for math.h

-- Looking for math.h - found

-- Looking for floor

-- Looking for floor - not found

-- Looking for floor in m

-- Looking for floor

-- Looking for floor - found
-- Found floor in m: /usr/lib/x86_64-linux-gnu/libm.so
-- Adding global library: /usr/lib/x86_64-linux-gnu/libm.so
-- Detecting math library (m) - done

-- Detecting dynamic loading library (dl)

-- Looking for dlopen

-- Looking for dlopen - found
-- Found dlopen in global libraries
-- Detecting dynamic loading library (dl) - done
-- Detecting networking library (socket/nsl/ws2_32)

-- Looking for gethostbyname

-- Looking for gethostbyname - found
-- Found gethostbyname in global libraries

-- Detecting networking library (socket/nsl/ws2_32) - done

-- Check for monotonic clock

-- Performing Test HAVE_MONOTONIC_CLOCK

-- Performing Test HAVE_MONOTONIC_CLOCK - Success

-- Check for monotonic clock - yes

-- Looking for setrlimit

-- Looking for setrlimit - found
-- Looking for strnlen

-- Looking for strnlen - found
-- Looking for getpid

-- Looking for getpid - found
-- Looking for gettid

-- Looking for gettid - found

-- Disabled package creation

CMake Deprecation Warning at 3rdparty/httplib/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 2.8.12 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.



CMake Deprecation Warning at 3rdparty/json/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 2.8.12 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.



-- Detecting system MYSQL

-- Found MYSQL: /usr/lib/x86_64-linux-gnu/libmysqlclient.so (found version "") 
-- Detecting system MYSQL - done
-- Configuring for system MYSQL
-- Configuring for system MYSQL - done

-- Detecting system PCRE

-- Found PCRE: /usr/lib/x86_64-linux-gnu/libpcre.so (found version "8.39") 
-- Detecting system PCRE - done

-- Configuring for system PCRE
-- Configuring for system PCRE - done

-- ryml: using C++ standard: C++17

-- ryml: importing subproject c4core (SUBDIRECTORY)... /src/3rdparty/rapidyaml/ext/c4core

-- c4core: using C++ standard: C++17

-- ryml: -----> target ryml PUBLIC incorporating lib c4core

CMake Deprecation Warning at 3rdparty/yaml-cpp/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 2.8.12 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.



-- Detecting system ZLIB

-- Found ZLIB: /usr/lib/x86_64-linux-gnu/libz.so (found version "1.2.13") 
-- Detecting system ZLIB - done
-- Configuring for system ZLIB
-- Configuring for system ZLIB - done

-- Creating version.hpp
-- Creating version.hpp - done

-- Creating target common_base

-- Creating target common_base - done
-- Creating target common

-- Creating target common - done

-- Creating target login-server

-- Creating target login-server - done

-- Creating target char-server

-- Creating target char-server - done

-- Creating target map-server

-- Enabled PCRE code

-- Creating target map-server - done

-- Creating target web-server

-- Creating target web-server - done

-- Creating target mapcache

-- Creating target csv2yaml

-- Creating target yaml2sql
-- Creating target yamlupgrade

-- Available targets:
-- 	common_base
-- 	common
-- 	login-server
-- 	char-server
-- 	map-server
-- 	web-server
-- 	mapcache
-- 	csv2yaml
-- 	yaml2sql
-- 	yamlupgrade

-- Configuring done

-- Generating done

-- Build files have been written to: /src/build

[1/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/language.cpp.o

[2/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/language.cpp.o

[3/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/memory_util.cpp.o

[4/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/memory_util.cpp.o

[5/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/error.cpp.o

[6/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/error.cpp.o

[7/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/common.cpp.o

[8/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/preprocess.cpp.o

[9/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/char_traits.cpp.o

[10/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/char_traits.cpp.o

[11/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/memory_resource.cpp.o

[12/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/memory_resource.cpp.o

[13/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/directives.cpp.o

[14/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/exceptions.cpp.o

[15/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/null.cpp.o

[16/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/depthguard.cpp.o

[17/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/node.cpp.o

[18/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/utf.cpp.o

[19/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/binary.cpp.o

[20/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/utf.cpp.o

[21/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/base64.cpp.o

[22/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/base64.cpp.o

[23/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/node.cpp.o

[24/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/format.cpp.o

[25/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/format.cpp.o

[26/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/ostream_wrapper.cpp.o

[27/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/exp.cpp.o

[28/205] Linking CXX static library /src/lib/libc4corer.a

[29/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emit.cpp.o

[30/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/scanctx.c.o

[31/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/regex_yaml.cpp.o

[32/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/memory.cpp.o

[33/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/strbuf.c.o

[34/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/grammar.c.o

[35/205] Building CXX object src/common/CMakeFiles/common_base.dir/conf.cpp.o

[36/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitfromevents.cpp.o

[37/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/nodeevents.cpp.o

[38/205] Building CXX object src/common/CMakeFiles/minicore.dir/core.cpp.o

[39/205] Building CXX object src/common/CMakeFiles/common_base.dir/des.cpp.o

[40/205] Building CXX object src/common/CMakeFiles/minicore.dir/malloc.cpp.o

[41/205] Building CXX object src/common/CMakeFiles/minicore.dir/showmsg.cpp.o

[42/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitterstate.cpp.o

[43/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/tag.cpp.o

[44/205] Building CXX object src/common/CMakeFiles/common_base.dir/ers.cpp.o

[45/205] Building CXX object src/common/CMakeFiles/minicore.dir/strlib.cpp.o

[46/205] Building CXX object src/common/CMakeFiles/common_base.dir/nullpo.cpp.o

[47/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/stream.cpp.o

[48/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitter.cpp.o

[49/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/scanner.c.o

[50/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/contrib/graphbuilderadapter.cpp.o

[51/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/contrib/graphbuilder.cpp.o

[52/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/convert.cpp.o

[53/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/nodebuilder.cpp.o

[54/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/libconfig.c.o

[55/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/simplekey.cpp.o

[56/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/parse.cpp.o

[57/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/parser.cpp.o

[58/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/node_data.cpp.o

[59/205] Building CXX object src/common/CMakeFiles/common_base.dir/msg_conf.cpp.o

[60/205] Building CXX object src/common/CMakeFiles/common_base.dir/grfio.cpp.o

[61/205] Linking CXX static library /src/lib/libminicorer.a

[62/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/strbuf.c.o

[63/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/scanctx.c.o

[64/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/grammar.c.o

[65/205] Building CXX object src/common/CMakeFiles/common_base.dir/mapindex.cpp.o

[66/205] Building CXX object src/common/CMakeFiles/common_base.dir/malloc.cpp.o

[67/205] Building CXX object src/common/CMakeFiles/common_base.dir/timer.cpp.o

[68/205] Building CXX object src/common/CMakeFiles/common_base.dir/utils.cpp.o

[69/205] Building CXX object src/common/CMakeFiles/common_base.dir/db.cpp.o

[70/205] Building CXX object src/common/CMakeFiles/common_base.dir/cli.cpp.o

[71/205] Building CXX object src/common/CMakeFiles/common_base.dir/showmsg.cpp.o

[72/205] Building CXX object src/common/CMakeFiles/common_base.dir/strlib.cpp.o

[73/205] Building CXX object src/common/CMakeFiles/common_base.dir/random.cpp.o

[74/205] Building CXX object src/common/CMakeFiles/common_base.dir/socket.cpp.o

[75/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/libconfig.c.o

[76/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scanscalar.cpp.o

[77/205] Building CXX object src/common/CMakeFiles/common_base.dir/md5calc.cpp.o

[78/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginlog.cpp.o

[79/205] Building CXX object src/login/CMakeFiles/login-server.dir/ipban.cpp.o

[80/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/scanner.c.o

[81/205] Building CXX object src/login/CMakeFiles/login-server.dir/logincnslif.cpp.o

[82/205] Building CXX object src/common/CMakeFiles/common.dir/sql.cpp.o

[83/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scantag.cpp.o

[84/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_cnslif.cpp.o

[85/205] Building CXX object src/login/CMakeFiles/login-server.dir/account.cpp.o

[86/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/singledocparser.cpp.o

[87/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginchrif.cpp.o

[88/205] Building CXX object src/common/CMakeFiles/common_base.dir/core.cpp.o

[89/205] Building CXX object src/common/CMakeFiles/common_base.dir/utilities.cpp.o

[90/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/tree.cpp.o

[91/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginclif.cpp.o

[92/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scanner.cpp.o

[93/205] Building CXX object src/login/CMakeFiles/login-server.dir/login.cpp.o

[94/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_achievement.cpp.o

[95/205] Building CXX object src/map/CMakeFiles/map-server.dir/date.cpp.o

[96/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_mercenary.cpp.o

[97/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_elemental.cpp.o

[98/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_quest.cpp.o

[99/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_homun.cpp.o

[100/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_clan.cpp.o

[101/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scantoken.cpp.o

[102/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_logif.cpp.o

[103/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_auction.cpp.o

[104/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitterutils.cpp.o

[105/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_storage.cpp.o

[106/205] Linking CXX static library /src/lib/libyaml-cppr.a

[107/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_party.cpp.o

[108/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_mapif.cpp.o

[109/205] Building CXX object src/map/CMakeFiles/map-server.dir/navi.cpp.o

[110/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_clif.cpp.o

[111/205] Building CXX object src/char/CMakeFiles/char-server.dir/char.cpp.o

[112/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_mail.cpp.o

[113/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_pet.cpp.o

[114/205] Building CXX object src/common/CMakeFiles/common_base.dir/database.cpp.o

[115/205] Building CXX object src/char/CMakeFiles/char-server.dir/inter.cpp.o

[116/205] Building CXX object src/map/CMakeFiles/map-server.dir/mapreg.cpp.o

[117/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/parse.cpp.o

[118/205] Linking CXX static library /src/lib/librymlr.a

[119/205] Linking CXX static library /src/lib/libcommon_baser.a

[120/205] Linking CXX static library /src/lib/libcommonr.a

[121/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_guild.cpp.o

[122/205] Linking CXX executable /src/login-server

[123/205] Linking CXX executable /src/char-server

[124/205] Building CXX object src/map/CMakeFiles/map-server.dir/path.cpp.o

[125/205] Building CXX object src/map/CMakeFiles/map-server.dir/skill.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/skill.cpp.o 

/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/skill.cpp.o -MF src/map/CMakeFiles/map-server.dir/skill.cpp.o.d -o src/map/CMakeFiles/map-server.dir/skill.cpp.o -c /src/src/map/skill.cpp
In file included from /src/src/map/skill.cpp:26:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[126/205] Building CXX object src/map/CMakeFiles/map-server.dir/searchstore.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/searchstore.cpp.o 

/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/searchstore.cpp.o -MF src/map/CMakeFiles/map-server.dir/searchstore.cpp.o.d -o src/map/CMakeFiles/map-server.dir/searchstore.cpp.o -c /src/src/map/searchstore.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/searchstore.cpp:13:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[127/205] Building CXX object src/map/CMakeFiles/map-server.dir/quest.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/quest.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/quest.cpp.o -MF src/map/CMakeFiles/map-server.dir/quest.cpp.o.d -o src/map/CMakeFiles/map-server.dir/quest.cpp.o -c /src/src/map/quest.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/quest.cpp:27:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[128/205] Building CXX object src/map/CMakeFiles/map-server.dir/pet.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/pet.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pet.cpp.o -MF src/map/CMakeFiles/map-server.dir/pet.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pet.cpp.o -c /src/src/map/pet.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/pet.hpp:14,
                 from /src/src/map/pet.cpp:4:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[129/205] Building CXX object src/map/CMakeFiles/map-server.dir/instance.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/instance.cpp.o 

/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/instance.cpp.o -MF src/map/CMakeFiles/map-server.dir/instance.cpp.o.d -o src/map/CMakeFiles/map-server.dir/instance.cpp.o -c /src/src/map/instance.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/instance.cpp:26:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[130/205] Building CXX object src/map/CMakeFiles/map-server.dir/party.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/party.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/party.cpp.o -MF src/map/CMakeFiles/map-server.dir/party.cpp.o.d -o src/map/CMakeFiles/map-server.dir/party.cpp.o -c /src/src/map/party.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/party.cpp:28:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[131/205] Building CXX object src/map/CMakeFiles/map-server.dir/clan.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/clan.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/clan.cpp.o -MF src/map/CMakeFiles/map-server.dir/clan.cpp.o.d -o src/map/CMakeFiles/map-server.dir/clan.cpp.o -c /src/src/map/clan.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/clan.cpp:19:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[132/205] Building CXX object src/map/CMakeFiles/map-server.dir/guild.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/guild.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/guild.cpp.o -MF src/map/CMakeFiles/map-server.dir/guild.cpp.o.d -o src/map/CMakeFiles/map-server.dir/guild.cpp.o -c /src/src/map/guild.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/guild.cpp:31:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[133/205] Building CXX object src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o -MF src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o -c /src/src/map/pc_groups.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/pc_groups.cpp:12:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[134/205] Building CXX object src/map/CMakeFiles/map-server.dir/duel.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/duel.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/duel.cpp.o -MF src/map/CMakeFiles/map-server.dir/duel.cpp.o.d -o src/map/CMakeFiles/map-server.dir/duel.cpp.o -c /src/src/map/duel.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/duel.cpp:16:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[135/205] Building CXX object src/map/CMakeFiles/map-server.dir/homunculus.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/homunculus.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/homunculus.cpp.o -MF src/map/CMakeFiles/map-server.dir/homunculus.cpp.o.d -o src/map/CMakeFiles/map-server.dir/homunculus.cpp.o -c /src/src/map/homunculus.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/homunculus.cpp:25:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[136/205] Building CXX object src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o -MF src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o.d -o src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o -c /src/src/map/npc_chat.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/npc_chat.cpp:16:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[137/205] Building CXX object src/map/CMakeFiles/map-server.dir/mercenary.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/mercenary.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mercenary.cpp.o -MF src/map/CMakeFiles/map-server.dir/mercenary.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mercenary.cpp.o -c /src/src/map/mercenary.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/mercenary.cpp:27:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[138/205] Building CXX object src/map/CMakeFiles/map-server.dir/map.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/map.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/map.cpp.o -MF src/map/CMakeFiles/map-server.dir/map.cpp.o.d -o src/map/CMakeFiles/map-server.dir/map.cpp.o -c /src/src/map/map.cpp
In file included from /src/src/map/map.cpp:29:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[139/205] Building CXX object src/map/CMakeFiles/map-server.dir/channel.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/channel.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/channel.cpp.o -MF src/map/CMakeFiles/map-server.dir/channel.cpp.o.d -o src/map/CMakeFiles/map-server.dir/channel.cpp.o -c /src/src/map/channel.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/channel.cpp:21:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[140/205] Building CXX object src/map/CMakeFiles/map-server.dir/itemdb.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/itemdb.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/itemdb.cpp.o -MF src/map/CMakeFiles/map-server.dir/itemdb.cpp.o.d -o src/map/CMakeFiles/map-server.dir/itemdb.cpp.o -c /src/src/map/itemdb.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/itemdb.cpp:27:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[141/205] Building CXX object src/map/CMakeFiles/map-server.dir/intif.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/intif.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/intif.cpp.o -MF src/map/CMakeFiles/map-server.dir/intif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/intif.cpp.o -c /src/src/map/intif.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/intif.cpp:29:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[142/205] Building CXX object src/map/CMakeFiles/map-server.dir/cashshop.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/cashshop.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/cashshop.cpp.o -MF src/map/CMakeFiles/map-server.dir/cashshop.cpp.o.d -o src/map/CMakeFiles/map-server.dir/cashshop.cpp.o -c /src/src/map/cashshop.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/cashshop.cpp:15:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[143/205] Building CXX object src/map/CMakeFiles/map-server.dir/chat.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/chat.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/chat.cpp.o -MF src/map/CMakeFiles/map-server.dir/chat.cpp.o.d -o src/map/CMakeFiles/map-server.dir/chat.cpp.o -c /src/src/map/chat.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/chat.cpp:21:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[144/205] Building CXX object src/map/CMakeFiles/map-server.dir/npc.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/npc.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/npc.cpp.o -MF src/map/CMakeFiles/map-server.dir/npc.cpp.o.d -o src/map/CMakeFiles/map-server.dir/npc.cpp.o -c /src/src/map/npc.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/npc.cpp:34:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[145/205] Building CXX object src/map/CMakeFiles/map-server.dir/atcommand.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/atcommand.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/atcommand.cpp.o -MF src/map/CMakeFiles/map-server.dir/atcommand.cpp.o.d -o src/map/CMakeFiles/map-server.dir/atcommand.cpp.o -c /src/src/map/atcommand.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/atcommand.cpp:55:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[146/205] Building CXX object src/map/CMakeFiles/map-server.dir/mob.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/mob.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mob.cpp.o -MF src/map/CMakeFiles/map-server.dir/mob.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mob.cpp.o -c /src/src/map/mob.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/mob.cpp:40:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[147/205] Building CXX object src/map/CMakeFiles/map-server.dir/mail.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/mail.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mail.cpp.o -MF src/map/CMakeFiles/map-server.dir/mail.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mail.cpp.o -c /src/src/map/mail.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/mail.cpp:19:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[148/205] Building CXX object src/map/CMakeFiles/map-server.dir/pc.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/pc.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pc.cpp.o -MF src/map/CMakeFiles/map-server.dir/pc.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pc.cpp.o -c /src/src/map/pc.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/pc.cpp:4:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[149/205] Building CXX object src/map/CMakeFiles/map-server.dir/elemental.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/elemental.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/elemental.cpp.o -MF src/map/CMakeFiles/map-server.dir/elemental.cpp.o.d -o src/map/CMakeFiles/map-server.dir/elemental.cpp.o -c /src/src/map/elemental.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/elemental.cpp:27:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[150/205] Building CXX object src/map/CMakeFiles/map-server.dir/log.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/log.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/log.cpp.o -MF src/map/CMakeFiles/map-server.dir/log.cpp.o.d -o src/map/CMakeFiles/map-server.dir/log.cpp.o -c /src/src/map/log.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/log.cpp:20:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[151/205] Building CXX object src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o -MF src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o.d -o src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o -c /src/src/map/buyingstore.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/buyingstore.cpp:25:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[152/205] Building CXX object src/map/CMakeFiles/map-server.dir/achievement.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/achievement.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/achievement.cpp.o -MF src/map/CMakeFiles/map-server.dir/achievement.cpp.o.d -o src/map/CMakeFiles/map-server.dir/achievement.cpp.o -c /src/src/map/achievement.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/achievement.cpp:29:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[153/205] Building CXX object src/map/CMakeFiles/map-server.dir/script.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/script.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/script.cpp.o -MF src/map/CMakeFiles/map-server.dir/script.cpp.o.d -o src/map/CMakeFiles/map-server.dir/script.cpp.o -c /src/src/map/script.cpp
In file included from /src/src/map/script.cpp:37:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[154/205] Building CXX object src/map/CMakeFiles/map-server.dir/chrif.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/chrif.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/chrif.cpp.o -MF src/map/CMakeFiles/map-server.dir/chrif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/chrif.cpp.o -c /src/src/map/chrif.cpp
In file included from /src/src/map/pc.hpp:17,
                 from /src/src/map/chrif.cpp:30:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[155/205] Building CXX object src/map/CMakeFiles/map-server.dir/clif.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/clif.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/clif.cpp.o -MF src/map/CMakeFiles/map-server.dir/clif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/clif.cpp.o -c /src/src/map/clif.cpp
In file included from /src/src/map/clif.cpp:31:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[156/205] Building CXX object src/map/CMakeFiles/map-server.dir/battleground.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/battleground.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/battleground.cpp.o -MF src/map/CMakeFiles/map-server.dir/battleground.cpp.o.d -o src/map/CMakeFiles/map-server.dir/battleground.cpp.o -c /src/src/map/battleground.cpp
In file included from /src/src/map/battleground.cpp:4:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[157/205] Building CXX object src/map/CMakeFiles/map-server.dir/battle.cpp.o
FAILED: src/map/CMakeFiles/map-server.dir/battle.cpp.o 
/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/battle.cpp.o -MF src/map/CMakeFiles/map-server.dir/battle.cpp.o.d -o src/map/CMakeFiles/map-server.dir/battle.cpp.o -c /src/src/map/battle.cpp
In file included from /src/src/map/battle.cpp:21:
/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known
  157 | struct mmo_guild bg_guild[];
      |                  ^~~~~~~~

[158/205] Building CXX object 3rdparty/httplib/CMakeFiles/httplib.dir/httplib.cc.o

ninja: build stopped: subcommand failed.