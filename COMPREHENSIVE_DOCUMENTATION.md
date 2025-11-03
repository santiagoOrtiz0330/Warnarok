# rAthena Server - Comprehensive Documentation

## 📖 Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture & Design](#architecture--design)
3. [Directory Structure](#directory-structure)
4. [Server Components](#server-components)
5. [Database System](#database-system)
6. [Configuration System](#configuration-system)
7. [Build System](#build-system)
8. [Development Guidelines](#development-guidelines)
9. [Troubleshooting](#troubleshooting)

---

## 🎯 Project Overview

**rAthena** is a collaborative open-source emulation project for the MMORPG Ragnarok Online. It recreates the official AEGIS server software used by the original game, enabling private server hosting and customization.

### Key Features
- **Multi-Server Architecture**: Separate login, character, map, and web servers
- **Database Flexibility**: Support for both SQL and YAML configurations
- **Client Compatibility**: Supports multiple Ragnarok Online client versions
- **Extensibility**: Rich scripting system for NPCs, items, and game mechanics
- **Platform Support**: Windows, Linux, and other POSIX systems

### Project History
- **Origin**: Evolution from eAthena (Aegis Athena emulator)
- **Contributors**: 100+ developers worldwide (see AUTHORS file)
- **License**: GNU General Public License
- **Community**: Active development with regular updates and bug fixes

---

## 🏗️ Architecture & Design

### AEGIS Emulation Structure
rAthena emulates the official AEGIS server architecture with 4 core components:

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ Login-Serv  │    │ Char-Serv   │    │ Map-Serv    │    │ Web-Serv    │
│             │    │             │    │             │    │             │
│ Account     │◄──►│ Character   │◄──►│ Game Logic  │    │ Web Panel   │
│ Management  │    │ Management  │    │ & Actions   │    │ & API       │
│             │    │             │    │             │    │             │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
        │                  │                  │                  │
        └──────────────────┼──────────────────┼──────────────────┘
                           │                  │
                    ┌─────────────┐    ┌─────────────┐
                    │   Database  │    │   Client    │
                    │   (MySQL)   │    │   Players   │
                    └─────────────┘    └─────────────┘
```

### Server Aggregation Limits
- **1 Login-Server** can manage up to **30 Char-Servers**
- **1 Char-Server** can manage up to **30 Map-Servers**
- Login and Map servers **never communicate directly**

### Communication Types

#### 1. Inter-Server Communication (Packets)
- **Login ↔ Char**: Account validation, character lists
- **Char ↔ Map**: Character data, party/guild management
- **Packet Prefixes**: AH, HA, HZ, ZH

#### 2. Client Communication (Packets) 
- **Client ↔ Login**: Authentication, server selection
- **Client ↔ Char**: Character selection, creation
- **Client ↔ Map**: Game actions, movement, combat
- **Packet Prefixes**: AC, CA, HC, CH, ZC, CZ

#### 3. Console Communication (Runtime)
- Local terminal input to servers
- Runtime configuration changes
- Administrative commands

---

## 📁 Directory Structure

### Root Level Files
```
RagnarokSrv/
├── 1winnerRo.bat          # Quick launcher script
├── athena-start           # Linux start script
├── AUTHORS                # Contributor list
├── charserv.bat          # Character server launcher
├── CMakeLists.txt        # CMake build configuration
├── configure             # POSIX build configuration
├── LICENSE               # GPL license
├── logserv.bat          # Login server launcher
├── mapserv.bat          # Map server launcher
├── README.md            # Project overview
├── rAthena.sln          # Visual Studio solution
├── runserver.bat        # All servers launcher
├── webserv.bat          # Web server launcher
└── ...                  # Additional utility scripts
```

### Core Directories

#### 📦 `3rdparty/` - External Libraries
```
3rdparty/
├── cmake/               # CMake modules
├── httplib/            # HTTP client/server library
├── json/               # JSON parsing library
├── libconfig/          # Configuration file parsing
├── mysql/              # MySQL client libraries
├── pcre/               # Perl Compatible Regular Expressions
├── rapidyaml/          # Fast YAML parser
├── yaml-cpp/           # YAML C++ library
└── zlib/               # Compression library
```

#### ⚙️ `conf/` - Configuration Files
```
conf/
├── atcommands.yml       # Admin command definitions
├── battle_athena.conf   # Battle system settings
├── char_athena.conf     # Character server config
├── login_athena.conf    # Login server config
├── map_athena.conf      # Map server config
├── groups.yml           # Player permission groups
├── inter_athena.conf    # Inter-server settings
├── battle/              # Detailed battle configurations
├── import/              # Custom configuration overrides
└── msg_conf/            # Localized message files
```

#### 🗃️ `db/` - Database Files
```
db/
├── item_db.yml          # Item definitions
├── mob_db.yml           # Monster definitions
├── skill_db.yml         # Skill definitions
├── quest_db.yml         # Quest definitions
├── achievement_db.yml   # Achievement system
├── battleground_db.yml  # Battleground configurations
├── guild_skill_tree.yml # Guild skill progression
├── emblems/             # Guild emblem files
├── pre-re/              # Pre-Renewal databases
├── re/                  # Renewal databases
└── import/              # Custom database overrides
```

#### 📖 `doc/` - Documentation
```
doc/
├── source_doc.txt       # Source code documentation
├── script_commands.txt  # NPC scripting reference
├── atcommands.txt       # Admin commands reference
├── item_bonus.txt       # Item bonus documentation
├── packet_*.txt         # Network packet documentation
├── status.txt           # Status effect documentation
└── model/               # Data structure diagrams
```

#### 🎮 `npc/` - Game Content Scripts
```
npc/
├── cities/              # City NPCs and warps
├── dungeons/            # Dungeon NPCs and monsters
├── guilds/              # Guild-related NPCs
├── jobs/                # Job change quests
├── merchants/           # Shop NPCs
├── mobs/                # Monster spawn scripts
├── quests/              # Quest NPCs and logic
├── warps/               # Warp point definitions
└── scripts_*.conf       # Script loading configurations
```

#### 💾 `sql-files/` - Database Schemas
```
sql-files/
├── main.sql             # Core database structure
├── logs.sql             # Logging tables
├── item_db.sql          # Item database structure
├── mob_db.sql           # Monster database structure
├── upgrades/            # Database upgrade scripts
└── tools/               # Database maintenance tools
```

#### 🔧 `src/` - Source Code
```
src/
├── common/              # Shared utilities and libraries
├── login/               # Login server implementation
├── char/                # Character server implementation
├── map/                 # Map server implementation
├── web/                 # Web server implementation
├── tool/                # Utility programs
├── config/              # Build configuration
└── custom/              # Custom modifications
```

#### 🛠️ `tools/` - Development Tools
```
tools/
├── mapcache            # Map cache generator
├── csv2yaml           # Database conversion tools
├── yaml2sql           # YAML to SQL converter
└── navigation         # Navigation data generator
```

---

## 🖥️ Server Components

### 1. Login Server (`src/login/`)

**Purpose**: Authentication and server selection

**Key Modules**:
- `account.cpp` - Account data persistence
- `login.cpp` - Main login server logic
- `loginclif.cpp` - Client communication interface
- `loginchrif.cpp` - Character server communication
- `ipban.cpp` - IP banning system
- `loginlog.cpp` - Login event logging

**Responsibilities**:
- Validate user credentials
- Manage account information
- Handle server selection
- IP ban enforcement
- Account registration (if enabled)

**Database Tables**:
- `login` - Account information
- `loginlog` - Login attempt logs
- `ipbanlist` - Banned IP addresses

### 2. Character Server (`src/char/`)

**Purpose**: Character management and inter-server coordination

**Key Modules**:
- `char.cpp` - Main character server logic
- `char_clif.cpp` - Client communication
- `char_mapif.cpp` - Map server communication
- `char_logif.cpp` - Login server communication
- `inter.cpp` - Inter-server data management

**Inter-Server Submodules**:
- `int_guild.cpp` - Guild data management
- `int_party.cpp` - Party data management
- `int_storage.cpp` - Storage systems
- `int_mail.cpp` - Mail system
- `int_auction.cpp` - Auction house
- `int_quest.cpp` - Quest progress tracking

**Responsibilities**:
- Character creation/deletion
- Character data persistence
- Guild and party management
- Inter-server data synchronization
- Mail and auction systems

### 3. Map Server (`src/map/`)

**Purpose**: Real-time game logic and player interactions

**Critical Modules**:

#### Core Systems
- `map.cpp` - Main map server and world management
- `clif.cpp` - Client communication interface
- `chrif.cpp` - Character server communication
- `intif.cpp` - Inter-server interface

#### Player Systems
- `pc.cpp` - Player character logic
- `pc_groups.cpp` - Permission system
- `status.cpp` - Status effects and calculations
- `skill.cpp` - Skill system implementation
- `battle.cpp` - Combat calculations

#### World Systems
- `mob.cpp` - Monster AI and behavior
- `npc.cpp` - NPC scripting and interaction
- `script.cpp` - Script language interpreter
- `map.cpp` - World map management
- `unit.cpp` - Movement and action control

#### Social Systems
- `guild.cpp` - Guild functionality
- `party.cpp` - Party system
- `chat.cpp` - Chat rooms
- `channel.cpp` - Chat channels

#### Economic Systems
- `itemdb.cpp` - Item database management
- `trade.cpp` - Player trading
- `vending.cpp` - Merchant vending
- `buyingstore.cpp` - Buying store system
- `storage.cpp` - Storage systems

#### Special Systems
- `battleground.cpp` - PvP battleground system
- `instance.cpp` - Instanced dungeons
- `quest.cpp` - Quest log system
- `log.cpp` - Game event logging

#### Supporting Systems
- `atcommand.cpp` - GM commands
- `pet.cpp` - Pet system
- `homunculus.cpp` - Homunculus system
- `mercenary.cpp` - Mercenary system
- `elemental.cpp` - Elemental system

### 4. Web Server (`src/web/`)

**Purpose**: Web-based administration and API services

**Features**:
- REST API endpoints
- Character statistics
- Server status monitoring
- Administrative tools
- Integration with external systems

---

## 🗃️ Database System

### Database Independence
Each server can theoretically run on separate hosts with dedicated databases:
- **Login Server**: Account data and registration logs
- **Character Server**: Character data, guilds, parties, inter-server data
- **Map Server**: Runtime data, global variables, live markets

### SQL vs YAML Configuration
rAthena supports dual database approaches:

#### SQL Database (Production)
- **Advantages**: High performance, ACID compliance, scalability
- **Use Cases**: Live servers, large player bases
- **Tables**: 40+ tables covering all game systems

#### YAML Files (Development)
- **Advantages**: Easy editing, version control friendly, no SQL setup
- **Use Cases**: Development, testing, small servers
- **Files**: `db/*.yml` configuration files

### Key Database Tables

#### Login Server Tables
```sql
-- Account management
login              -- Account credentials and info
loginlog           -- Login attempt history
ipbanlist          -- IP ban records
```

#### Character Server Tables
```sql
-- Character data
char               -- Character information
inventory          -- Character items
cart               -- Cart contents
storage            -- Kafra storage
skill              -- Learned skills
hotkey             -- Hotkey configurations

-- Social systems
guild              -- Guild information
guild_member       -- Guild membership
guild_storage      -- Guild storage
party              -- Party information
friend             -- Friend relationships

-- Communication
mail               -- Mail system
auction            -- Auction house

-- Progress tracking
quest              -- Quest completion
achievement        -- Achievement progress
```

#### Map Server Tables
```sql
-- Global data
mapreg             -- Global script variables

-- Live markets
vending            -- Active vending shops
vending_items      -- Items being sold
buyingstore        -- Active buying stores
buyingstore_items  -- Items being purchased

-- Optional SQL databases (alternative to YAML)
item_db            -- Item definitions
mob_db             -- Monster definitions
mob_skill_db       -- Monster skills
```

---

## ⚙️ Configuration System

### Configuration Hierarchy
1. **Base Configuration** - Default settings in main config files
2. **Import Templates** - Example configurations in `import-tmpl/`
3. **Import Overrides** - Custom settings in `import/` (git-ignored)

### Key Configuration Files

#### Server Startup
- `login_athena.conf` - Login server settings
- `char_athena.conf` - Character server settings  
- `map_athena.conf` - Map server settings
- `inter_athena.conf` - Inter-server communication

#### Game Balance
- `battle_athena.conf` - Core battle system
- `battle/*.conf` - Detailed balance settings
  - `drops.conf` - Item drop rates
  - `exp.conf` - Experience rates
  - `items.conf` - Item usage rules
  - `monster.conf` - Monster behavior
  - `player.conf` - Player mechanics
  - `skill.conf` - Skill mechanics

#### Security & Permissions
- `groups.yml` - Player permission groups
- `atcommands.yml` - Admin command definitions
- `channels.conf` - Chat channel settings
- `packet_athena.conf` - Packet validation

#### Database Connections
```yaml
# Example inter_athena.conf structure
login_server_ip: "127.0.0.1"
login_server_port: 6900
char_server_ip: "127.0.0.1"
char_server_port: 6121

// MySQL Configuration
sql.db_hostname: "127.0.0.1"
sql.db_port: 3306
sql.db_username: "ragnarok"
sql.db_password: "password"
sql.db_database: "ragnarok"
```

### Message Localization
- `msg_conf/` - Localized messages by language
- Support for multiple languages
- Server messages, error codes, system notifications

---

## 🔨 Build System

### Supported Build Methods

#### 1. Visual Studio (Windows)
```bash
# Open solution file
rAthena.sln

# Build configurations:
- Debug: Development builds with debugging symbols
- Release: Optimized production builds
```

#### 2. CMake (Cross-Platform)
```bash
# Generate build files
mkdir build && cd build
cmake .. -G "Unix Makefiles"  # Linux/macOS
cmake .. -G "Visual Studio 16 2019"  # Windows

# Build
cmake --build . --config Release
```

#### 3. Configure + Make (POSIX)
```bash
# Configure build
chmod +x configure
./configure

# Compile
make clean
make all

# Install
make install
```

### Build Dependencies

#### Required
- **C++ Compiler**: GCC 7+, Clang 5+, or MSVC 2017+
- **MySQL/MariaDB**: Client libraries for database connectivity
- **zlib**: Compression library

#### Optional
- **PCRE**: Perl Compatible Regular Expressions
- **Git**: Version control for development

### Build Outputs
```
# Executables produced:
login-server(.exe)    # Authentication server
char-server(.exe)     # Character management server  
map-server(.exe)      # Game logic server
web-server(.exe)      # Web API server
mapcache(.exe)        # Map cache generator
```

---

## 👩‍💻 Development Guidelines

### Code Organization

#### Naming Conventions
```cpp
// Functions: module_functionname
pc_addspiritball()     // Player module function
mob_spawn()            // Monster module function

// Structures: s_structname
struct s_quest_db      // Quest database structure
struct s_battleground_data  // Battleground data

// Enums: e_enumname
enum e_race { ... }    // Race enumeration
enum e_element { ... } // Element enumeration

// Status Effects: SC_STATUSNAME
SC_POISON             // Poison status
SC_BLESSING           // Blessing status

// Skills: CLASS_SKILLNAME
AL_TELEPORT           // Acolyte teleport
MG_FIREBALL           // Mage fireball

// Bonuses: SP_BONUSNAME
SP_ATK_RATE           // Attack rate bonus
SP_MATK_RATE          // Magic attack rate bonus
```

#### Variable Conventions
```cpp
// Common variable names
struct map_session_data *sd;    // Session data (player)
struct map_session_data *tsd;   // Target session data
struct mob_data *md;            // Monster data
struct npc_data *nd;            // NPC data
struct block_list *bl;          // Block list (generic unit)
struct status_change *sc;       // Status change data
int fd;                         // File descriptor (socket)
uint32 aid;                     // Account ID
uint32 cid;                     // Character ID
```

### Adding New Features

#### 1. Atcommands (GM Commands)
```cpp
// In src/map/atcommand.cpp
ACMD_FUNC(mycommand)
{
    // Command implementation
    clif_displaymessage(fd, "Command executed!");
    return 0;
}

// Register command
ACMD_DEF(mycommand),  // Available to all GMs
// OR
ACMD_DEFR(mycommand, 2),  // Restrict usage in scripts
```

#### 2. Script Commands (NPC Functions)
```cpp
// In src/map/script.cpp
BUILDIN_FUNC(mynpccommand)
{
    int value = script_getnum(st, 2);
    const char *text = script_getstr(st, 3);
    
    // Function implementation
    script_pushint(st, result);
    return 0;
}

// Register command
BUILDIN_DEF(mynpccommand, "is"),  // int, string parameters
```

#### 3. New Database Tables
```sql
-- Create table structure
CREATE TABLE `my_new_table` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `char_id` INT NOT NULL,
    `data` TEXT,
    INDEX `char_id` (`char_id`)
);

-- Add to appropriate server module
// In src/char/char.cpp or src/map/map.cpp
```

### Debugging and Logging

#### Debug Output
```cpp
// Debug messages (only in debug builds)
ShowDebug("Debug info: %d\n", value);

// Information messages
ShowInfo("Server started successfully\n");

// Warning messages  
ShowWarning("Configuration issue detected\n");

// Error messages
ShowError("Critical error occurred: %s\n", error);

// Fatal errors (terminates server)
ShowFatalError("Cannot continue: %s\n", reason);
```

#### Log Categories
- **Login Log**: Authentication attempts, account actions
- **Char Log**: Character creation, deletion, transfers
- **Map Log**: Player actions, item usage, skill usage
- **GM Log**: Administrative command usage
- **Chat Log**: Player communications

---

## 🔍 Troubleshooting

### Common Build Issues

#### Missing Dependencies
```bash
# Linux: Install development packages
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
sudo apt-get install libpcre3-dev zlib1g-dev

# Windows: Use vcpkg or manual installation
vcpkg install mysql:x64-windows pcre:x64-windows zlib:x64-windows
```

#### CMake Configuration Issues
```bash
# Clear cache and reconfigure
rm -rf build/
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
```

#### Visual Studio Issues
- Ensure correct platform target (x64 vs x86)
- Check library paths in project properties
- Verify Windows SDK version compatibility

### Runtime Issues

#### Database Connection Problems
```bash
# Check MySQL service status
systemctl status mysql    # Linux
net start mysql          # Windows

# Test connection
mysql -u ragnarok -p -h localhost ragnarok

# Verify configuration
grep -r "sql\." conf/
```

#### Server Communication Issues
```bash
# Check port availability
netstat -an | grep 6900   # Login server
netstat -an | grep 6121   # Char server  
netstat -an | grep 5121   # Map server

# Test inter-server connectivity
telnet localhost 6900
```

#### Performance Issues
- **High CPU**: Check for infinite loops in scripts
- **High Memory**: Monitor for memory leaks in custom code
- **Network Lag**: Optimize database queries, check network infrastructure

### Debug Tools

#### Memory Debugging
```cpp
// Enable in core.hpp
#define DEBUG_MEMMGR

// Check for leaks on shutdown
memmgr_report();
```

#### Packet Debugging
```cpp
// Enable in clif.cpp
#define DUMP_UNKNOWN_PACKET
#define DUMP_INVALID_PACKET

// Monitor specific packets
clif_parse_debug(fd, sd, packet_id, packet, length);
```

#### Script Debugging
```cpp
// Enable detailed script output
script_config.verbose_mode = 1;

// Add debug prints in NPCs
debugmes "Debug: Variable value = " + .@variable;
```

---

## 📚 Additional Resources

### Official Documentation
- **GitHub Repository**: https://github.com/rathena/rathena
- **Wiki**: https://github.com/rathena/rathena/wiki
- **Forum**: https://rathena.org/board/

### Development Resources
- **Scripting Reference**: `doc/script_commands.txt`
- **Database Format**: `doc/yaml/`
- **Packet Documentation**: `doc/packet_*.txt`
- **Status Effects**: `doc/status.txt`

### Community Resources
- **Discord**: Active developer community
- **IRC**: #rathena on irc.rizon.net
- **Issue Tracker**: Bug reports and feature requests

---

*This documentation provides a comprehensive overview of the rAthena codebase. For specific implementation details, refer to the source code and inline documentation.*

**Last Updated**: Generated from codebase analysis
**Version**: Based on current rAthena development branch
**Contributors**: rAthena Development Team