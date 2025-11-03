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
-- git Version: unknow, unknow
-- Detecting threads library
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
CMake Error at 3rdparty/CMakeLists.txt:50 (add_subdirectory):
  add_subdirectory given source "httplib" which is not an existing directory.
CMake Error at 3rdparty/CMakeLists.txt:51 (add_subdirectory):
  add_subdirectory given source "json" which is not an existing directory.
CMake Error at 3rdparty/CMakeLists.txt:52 (add_subdirectory):
  add_subdirectory given source "libconfig" which is not an existing
  directory.
CMake Error at 3rdparty/CMakeLists.txt:53 (add_subdirectory):
  add_subdirectory given source "mysql" which is not an existing directory.
CMake Error at 3rdparty/CMakeLists.txt:54 (add_subdirectory):
  add_subdirectory given source "pcre" which is not an existing directory.
CMake Error at 3rdparty/CMakeLists.txt:55 (add_subdirectory):
  add_subdirectory given source "rapidyaml" which is not an existing
  directory.
CMake Error at 3rdparty/CMakeLists.txt:56 (add_subdirectory):
  add_subdirectory given source "yaml-cpp" which is not an existing
  directory.
CMake Error at 3rdparty/CMakeLists.txt:57 (add_subdirectory):
  add_subdirectory given source "zlib" which is not an existing directory.
CMake Error at src/CMakeLists.txt:13 (add_subdirectory):
  add_subdirectory given source "common" which is not an existing directory.
CMake Error at src/CMakeLists.txt:24 (add_subdirectory):
  add_subdirectory given source "login" which is not an existing directory.
CMake Error at src/CMakeLists.txt:25 (add_subdirectory):
  add_subdirectory given source "char" which is not an existing directory.
CMake Error at src/CMakeLists.txt:26 (add_subdirectory):
  add_subdirectory given source "map" which is not an existing directory.
-- Disabled server targets (requires common)
CMake Error at src/CMakeLists.txt:27 (add_subdirectory):
  add_subdirectory given source "web" which is not an existing directory.
CMake Error at src/CMakeLists.txt:28 (add_subdirectory):
  add_subdirectory given source "tool" which is not an existing directory.
CMake Error at CMakeLists.txt:625 (message):
  no targets available
-- Configuring incomplete, errors occurred!
See also "/src/build/CMakeFiles/CMakeOutput.log".
See also "/src/build/CMakeFiles/CMakeError.log".