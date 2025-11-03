{
  "message": "[builder 5/5] RUN cmake -S . -B build         -G Ninja         -DCMAKE_BUILD_TYPE=Release         -DINSTALL_TO_PATH=ON         -DINSTALL_PATH=/opt/rathena &&     cmake --build build --target install",
  "timestamp": "2025-11-03T16:04:58.832354699Z",
  "children": [
    {
      "message": "-- The C compiler identification is GNU 12.2.0\n",
      "timestamp": "2025-11-03T16:05:01.971910568Z"
    },
    {
      "message": "-- The CXX compiler identification is GNU 12.2.0\n",
      "timestamp": "2025-11-03T16:05:02.082221137Z"
    },
    {
      "message": "-- Detecting C compiler ABI info\n",
      "timestamp": "2025-11-03T16:05:02.101360814Z"
    },
    {
      "message": "-- Detecting C compiler ABI info - done\n",
      "timestamp": "2025-11-03T16:05:02.204487195Z"
    },
    {
      "message": "-- Check for working C compiler: /usr/bin/cc - skipped\n",
      "timestamp": "2025-11-03T16:05:02.218146329Z"
    },
    {
      "message": "-- Detecting C compile features\n",
      "timestamp": "2025-11-03T16:05:02.218850415Z"
    },
    {
      "message": "-- Detecting C compile features - done\n",
      "timestamp": "2025-11-03T16:05:02.219475323Z"
    },
    {
      "message": "-- Detecting CXX compiler ABI info\n",
      "timestamp": "2025-11-03T16:05:02.225687824Z"
    },
    {
      "message": "-- Detecting CXX compiler ABI info - done\n",
      "timestamp": "2025-11-03T16:05:02.354285631Z"
    },
    {
      "message": "-- Check for working CXX compiler: /usr/bin/c++ - skipped\n",
      "timestamp": "2025-11-03T16:05:02.368385307Z"
    },
    {
      "message": "-- Detecting CXX compile features\n",
      "timestamp": "2025-11-03T16:05:02.368943604Z"
    },
    {
      "message": "-- Detecting CXX compile features - done\n",
      "timestamp": "2025-11-03T16:05:02.369790976Z"
    },
    {
      "message": "-- Detecting git\n",
      "timestamp": "2025-11-03T16:05:02.374563616Z"
    },
    {
      "message": "-- Found Git: /usr/bin/git (found version \"2.39.5\") \n-- Found git : /usr/bin/git version (2.39.5)\n",
      "timestamp": "2025-11-03T16:05:02.380958011Z"
    },
    {
      "message": "-- Detecting threads library\n",
      "timestamp": "2025-11-03T16:05:02.390747568Z"
    },
    {
      "message": "-- git Version: unknow, unknow\n",
      "timestamp": "2025-11-03T16:05:02.390757033Z"
    },
    {
      "message": "-- Performing Test CMAKE_HAVE_LIBC_PTHREAD\n",
      "timestamp": "2025-11-03T16:05:02.392182722Z"
    },
    {
      "message": "-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success\n",
      "timestamp": "2025-11-03T16:05:02.494659047Z"
    },
    {
      "message": "-- Found Threads: TRUE  \n",
      "timestamp": "2025-11-03T16:05:02.496606939Z"
    },
    {
      "message": "-- Detecting threads library - done\n-- Check if supporting Thread local storage (TLS)\n",
      "timestamp": "2025-11-03T16:05:02.496780209Z"
    },
    {
      "message": "-- Performing Test HAVE_TLS\n",
      "timestamp": "2025-11-03T16:05:02.497068983Z"
    },
    {
      "message": "-- Performing Test HAVE_TLS - Success\n-- Check for TLS- yes\n-- Detecting math library (m)\n",
      "timestamp": "2025-11-03T16:05:02.599823024Z"
    },
    {
      "message": "-- Looking for math.h\n",
      "timestamp": "2025-11-03T16:05:02.600138207Z"
    },
    {
      "message": "-- Looking for math.h - found\n",
      "timestamp": "2025-11-03T16:05:02.718618063Z"
    },
    {
      "message": "-- Looking for floor\n",
      "timestamp": "2025-11-03T16:05:02.71884915Z"
    },
    {
      "message": "-- Looking for floor - not found\n",
      "timestamp": "2025-11-03T16:05:02.82190224Z"
    },
    {
      "message": "-- Looking for floor in m\n",
      "timestamp": "2025-11-03T16:05:02.822080948Z"
    },
    {
      "message": "-- Looking for floor\n",
      "timestamp": "2025-11-03T16:05:02.82476794Z"
    },
    {
      "message": "-- Looking for floor - found\n-- Found floor in m: /usr/lib/x86_64-linux-gnu/libm.so\n-- Adding global library: /usr/lib/x86_64-linux-gnu/libm.so\n-- Detecting math library (m) - done\n",
      "timestamp": "2025-11-03T16:05:02.94047753Z"
    },
    {
      "message": "-- Detecting dynamic loading library (dl)\n",
      "timestamp": "2025-11-03T16:05:02.940512813Z"
    },
    {
      "message": "-- Looking for dlopen\n",
      "timestamp": "2025-11-03T16:05:02.940706954Z"
    },
    {
      "message": "-- Looking for dlopen - found\n-- Found dlopen in global libraries\n-- Detecting dynamic loading library (dl) - done\n-- Detecting networking library (socket/nsl/ws2_32)\n",
      "timestamp": "2025-11-03T16:05:03.05019561Z"
    },
    {
      "message": "-- Looking for gethostbyname\n",
      "timestamp": "2025-11-03T16:05:03.050403872Z"
    },
    {
      "message": "-- Looking for gethostbyname - found\n-- Found gethostbyname in global libraries\n",
      "timestamp": "2025-11-03T16:05:03.153117603Z"
    },
    {
      "message": "-- Detecting networking library (socket/nsl/ws2_32) - done\n",
      "timestamp": "2025-11-03T16:05:03.153152876Z"
    },
    {
      "message": "-- Check for monotonic clock\n",
      "timestamp": "2025-11-03T16:05:03.153313898Z"
    },
    {
      "message": "-- Performing Test HAVE_MONOTONIC_CLOCK\n",
      "timestamp": "2025-11-03T16:05:03.15403514Z"
    },
    {
      "message": "-- Performing Test HAVE_MONOTONIC_CLOCK - Success\n",
      "timestamp": "2025-11-03T16:05:03.289822475Z"
    },
    {
      "message": "-- Check for monotonic clock - yes\n",
      "timestamp": "2025-11-03T16:05:03.290027312Z"
    },
    {
      "message": "-- Looking for setrlimit\n",
      "timestamp": "2025-11-03T16:05:03.290048704Z"
    },
    {
      "message": "-- Looking for setrlimit - found\n-- Looking for strnlen\n",
      "timestamp": "2025-11-03T16:05:03.395833974Z"
    },
    {
      "message": "-- Looking for strnlen - found\n-- Looking for getpid\n",
      "timestamp": "2025-11-03T16:05:03.503412454Z"
    },
    {
      "message": "-- Looking for getpid - found\n-- Looking for gettid\n",
      "timestamp": "2025-11-03T16:05:03.608368759Z"
    },
    {
      "message": "-- Looking for gettid - found\n",
      "timestamp": "2025-11-03T16:05:03.715050544Z"
    },
    {
      "message": "-- Disabled package creation\n",
      "timestamp": "2025-11-03T16:05:03.715377064Z"
    },
    {
      "message": "CMake Deprecation Warning at 3rdparty/httplib/CMakeLists.txt:1 (cmake_minimum_required):\n  Compatibility with CMake < 2.8.12 will be removed from a future version of\n  CMake.\n\n  Update the VERSION argument <min> value or use a ...<max> suffix to tell\n  CMake that the project does not need compatibility with older versions.\n\n\n",
      "timestamp": "2025-11-03T16:05:03.728610529Z"
    },
    {
      "message": "CMake Deprecation Warning at 3rdparty/json/CMakeLists.txt:1 (cmake_minimum_required):\n  Compatibility with CMake < 2.8.12 will be removed from a future version of\n  CMake.\n\n  Update the VERSION argument <min> value or use a ...<max> suffix to tell\n  CMake that the project does not need compatibility with older versions.\n\n\n",
      "timestamp": "2025-11-03T16:05:03.729580475Z"
    },
    {
      "message": "-- Detecting system MYSQL\n",
      "timestamp": "2025-11-03T16:05:03.730887466Z"
    },
    {
      "message": "-- Found MYSQL: /usr/lib/x86_64-linux-gnu/libmysqlclient.so (found version \"\") \n-- Detecting system MYSQL - done\n-- Configuring for system MYSQL\n-- Configuring for system MYSQL - done\n",
      "timestamp": "2025-11-03T16:05:03.73490897Z"
    },
    {
      "message": "-- Detecting system PCRE\n",
      "timestamp": "2025-11-03T16:05:03.735680868Z"
    },
    {
      "message": "-- Found PCRE: /usr/lib/x86_64-linux-gnu/libpcre.so (found version \"8.39\") \n-- Detecting system PCRE - done\n",
      "timestamp": "2025-11-03T16:05:03.739398386Z"
    },
    {
      "message": "-- Configuring for system PCRE\n-- Configuring for system PCRE - done\n",
      "timestamp": "2025-11-03T16:05:03.739417454Z"
    },
    {
      "message": "-- ryml: using C++ standard: C++17\n",
      "timestamp": "2025-11-03T16:05:03.753286753Z"
    },
    {
      "message": "-- ryml: importing subproject c4core (SUBDIRECTORY)... /src/3rdparty/rapidyaml/ext/c4core\n",
      "timestamp": "2025-11-03T16:05:03.756798753Z"
    },
    {
      "message": "-- c4core: using C++ standard: C++17\n",
      "timestamp": "2025-11-03T16:05:03.764237764Z"
    },
    {
      "message": "-- ryml: -----> target ryml PUBLIC incorporating lib c4core\n",
      "timestamp": "2025-11-03T16:05:03.776267654Z"
    },
    {
      "message": "CMake Deprecation Warning at 3rdparty/yaml-cpp/CMakeLists.txt:1 (cmake_minimum_required):\n  Compatibility with CMake < 2.8.12 will be removed from a future version of\n  CMake.\n\n  Update the VERSION argument <min> value or use a ...<max> suffix to tell\n  CMake that the project does not need compatibility with older versions.\n\n\n",
      "timestamp": "2025-11-03T16:05:03.784690481Z"
    },
    {
      "message": "-- Detecting system ZLIB\n",
      "timestamp": "2025-11-03T16:05:03.785306325Z"
    },
    {
      "message": "-- Found ZLIB: /usr/lib/x86_64-linux-gnu/libz.so (found version \"1.2.13\") \n-- Detecting system ZLIB - done\n-- Configuring for system ZLIB\n-- Configuring for system ZLIB - done\n",
      "timestamp": "2025-11-03T16:05:03.790289812Z"
    },
    {
      "message": "-- Creating version.hpp\n-- Creating version.hpp - done\n",
      "timestamp": "2025-11-03T16:05:03.791170434Z"
    },
    {
      "message": "-- Creating target common_base\n",
      "timestamp": "2025-11-03T16:05:03.79125484Z"
    },
    {
      "message": "-- Creating target common_base - done\n-- Creating target common\n",
      "timestamp": "2025-11-03T16:05:03.791569472Z"
    },
    {
      "message": "-- Creating target common - done\n",
      "timestamp": "2025-11-03T16:05:03.791648982Z"
    },
    {
      "message": "-- Creating target login-server\n",
      "timestamp": "2025-11-03T16:05:03.792049182Z"
    },
    {
      "message": "-- Creating target login-server - done\n",
      "timestamp": "2025-11-03T16:05:03.79232128Z"
    },
    {
      "message": "-- Creating target char-server\n",
      "timestamp": "2025-11-03T16:05:03.792628201Z"
    },
    {
      "message": "-- Creating target char-server - done\n",
      "timestamp": "2025-11-03T16:05:03.793068121Z"
    },
    {
      "message": "-- Creating target map-server\n",
      "timestamp": "2025-11-03T16:05:03.793435002Z"
    },
    {
      "message": "-- Enabled PCRE code\n",
      "timestamp": "2025-11-03T16:05:03.793636764Z"
    },
    {
      "message": "-- Creating target map-server - done\n",
      "timestamp": "2025-11-03T16:05:03.79422004Z"
    },
    {
      "message": "-- Creating target web-server\n",
      "timestamp": "2025-11-03T16:05:03.794576795Z"
    },
    {
      "message": "-- Creating target web-server - done\n",
      "timestamp": "2025-11-03T16:05:03.794987661Z"
    },
    {
      "message": "-- Creating target mapcache\n",
      "timestamp": "2025-11-03T16:05:03.795336895Z"
    },
    {
      "message": "-- Creating target csv2yaml\n",
      "timestamp": "2025-11-03T16:05:03.795364857Z"
    },
    {
      "message": "-- Creating target yaml2sql\n-- Creating target yamlupgrade\n",
      "timestamp": "2025-11-03T16:05:03.795457636Z"
    },
    {
      "message": "-- Available targets:\n-- \tcommon_base\n-- \tcommon\n-- \tlogin-server\n-- \tchar-server\n-- \tmap-server\n-- \tweb-server\n-- \tmapcache\n-- \tcsv2yaml\n-- \tyaml2sql\n-- \tyamlupgrade\n",
      "timestamp": "2025-11-03T16:05:03.795669504Z"
    },
    {
      "message": "-- Configuring done\n",
      "timestamp": "2025-11-03T16:05:03.796624988Z"
    },
    {
      "message": "-- Generating done\n",
      "timestamp": "2025-11-03T16:05:03.833085964Z"
    },
    {
      "message": "-- Build files have been written to: /src/build\n",
      "timestamp": "2025-11-03T16:05:03.839410373Z"
    },
    {
      "message": "[1/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/language.cpp.o\n",
      "timestamp": "2025-11-03T16:05:03.917830033Z"
    },
    {
      "message": "[2/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/language.cpp.o\n",
      "timestamp": "2025-11-03T16:05:03.922385488Z"
    },
    {
      "message": "[3/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/memory_util.cpp.o\n",
      "timestamp": "2025-11-03T16:05:03.978152721Z"
    },
    {
      "message": "[4/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/memory_util.cpp.o\n",
      "timestamp": "2025-11-03T16:05:03.982187304Z"
    },
    {
      "message": "[5/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/error.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.026166511Z"
    },
    {
      "message": "[6/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/error.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.037490431Z"
    },
    {
      "message": "[7/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/common.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.038214457Z"
    },
    {
      "message": "[8/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/preprocess.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.098277425Z"
    },
    {
      "message": "[9/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/char_traits.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.165864312Z"
    },
    {
      "message": "[10/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/char_traits.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.182108795Z"
    },
    {
      "message": "[11/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/memory_resource.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.235611831Z"
    },
    {
      "message": "[12/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/memory_resource.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.242527056Z"
    },
    {
      "message": "[13/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/directives.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.29434273Z"
    },
    {
      "message": "[14/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/exceptions.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.340782438Z"
    },
    {
      "message": "[15/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/null.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.344889731Z"
    },
    {
      "message": "[16/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/depthguard.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.358274413Z"
    },
    {
      "message": "[17/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/node.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.41926302Z"
    },
    {
      "message": "[18/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/utf.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.470250571Z"
    },
    {
      "message": "[19/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/binary.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.474177343Z"
    },
    {
      "message": "[20/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/utf.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.48339947Z"
    },
    {
      "message": "[21/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/base64.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.490096979Z"
    },
    {
      "message": "[22/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/base64.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.502890694Z"
    },
    {
      "message": "[23/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/node.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.514335596Z"
    },
    {
      "message": "[24/205] Building CXX object 3rdparty/rapidyaml/subprojects/c4core/build/CMakeFiles/c4core.dir/src/c4/format.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.534462464Z"
    },
    {
      "message": "[25/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/ext/c4core/src/c4/format.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.538278289Z"
    },
    {
      "message": "[26/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/ostream_wrapper.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.561153481Z"
    },
    {
      "message": "[27/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/exp.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.567266623Z"
    },
    {
      "message": "[28/205] Linking CXX static library /src/lib/libc4corer.a\n",
      "timestamp": "2025-11-03T16:05:04.567724951Z"
    },
    {
      "message": "[29/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emit.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.606416394Z"
    },
    {
      "message": "[30/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/scanctx.c.o\n",
      "timestamp": "2025-11-03T16:05:04.626228129Z"
    },
    {
      "message": "[31/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/regex_yaml.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.637130346Z"
    },
    {
      "message": "[32/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/memory.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.650446837Z"
    },
    {
      "message": "[33/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/strbuf.c.o\n",
      "timestamp": "2025-11-03T16:05:04.662088303Z"
    },
    {
      "message": "[34/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/grammar.c.o\n",
      "timestamp": "2025-11-03T16:05:04.705438025Z"
    },
    {
      "message": "[35/205] Building CXX object src/common/CMakeFiles/common_base.dir/conf.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.717309967Z"
    },
    {
      "message": "[36/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitfromevents.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.722171542Z"
    },
    {
      "message": "[37/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/nodeevents.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.742856878Z"
    },
    {
      "message": "[38/205] Building CXX object src/common/CMakeFiles/minicore.dir/core.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.753812015Z"
    },
    {
      "message": "[39/205] Building CXX object src/common/CMakeFiles/common_base.dir/des.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.781130463Z"
    },
    {
      "message": "[40/205] Building CXX object src/common/CMakeFiles/minicore.dir/malloc.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.802753346Z"
    },
    {
      "message": "[41/205] Building CXX object src/common/CMakeFiles/minicore.dir/showmsg.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.808437825Z"
    },
    {
      "message": "[42/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitterstate.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.842114283Z"
    },
    {
      "message": "[43/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/tag.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.842977678Z"
    },
    {
      "message": "[44/205] Building CXX object src/common/CMakeFiles/common_base.dir/ers.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.850255348Z"
    },
    {
      "message": "[45/205] Building CXX object src/common/CMakeFiles/minicore.dir/strlib.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.86142079Z"
    },
    {
      "message": "[46/205] Building CXX object src/common/CMakeFiles/common_base.dir/nullpo.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.874901267Z"
    },
    {
      "message": "[47/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/stream.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.877280386Z"
    },
    {
      "message": "[48/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitter.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.892055114Z"
    },
    {
      "message": "[49/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/scanner.c.o\n",
      "timestamp": "2025-11-03T16:05:04.908683683Z"
    },
    {
      "message": "[50/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/contrib/graphbuilderadapter.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.909217955Z"
    },
    {
      "message": "[51/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/contrib/graphbuilder.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.910630835Z"
    },
    {
      "message": "[52/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/convert.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.922558071Z"
    },
    {
      "message": "[53/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/nodebuilder.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.926185273Z"
    },
    {
      "message": "[54/205] Building C object src/common/CMakeFiles/minicore.dir/__/__/3rdparty/libconfig/libconfig.c.o\n",
      "timestamp": "2025-11-03T16:05:04.940571668Z"
    },
    {
      "message": "[55/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/simplekey.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.942086992Z"
    },
    {
      "message": "[56/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/parse.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.954259926Z"
    },
    {
      "message": "[57/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/parser.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.959819687Z"
    },
    {
      "message": "[58/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/node_data.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.961012087Z"
    },
    {
      "message": "[59/205] Building CXX object src/common/CMakeFiles/common_base.dir/msg_conf.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.965101873Z"
    },
    {
      "message": "[60/205] Building CXX object src/common/CMakeFiles/common_base.dir/grfio.cpp.o\n",
      "timestamp": "2025-11-03T16:05:04.965770296Z"
    },
    {
      "message": "[61/205] Linking CXX static library /src/lib/libminicorer.a\n",
      "timestamp": "2025-11-03T16:05:04.972759913Z"
    },
    {
      "message": "[62/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/strbuf.c.o\n",
      "timestamp": "2025-11-03T16:05:04.975605212Z"
    },
    {
      "message": "[63/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/scanctx.c.o\n",
      "timestamp": "2025-11-03T16:05:04.985589943Z"
    },
    {
      "message": "[64/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/grammar.c.o\n",
      "timestamp": "2025-11-03T16:05:05.030221838Z"
    },
    {
      "message": "[65/205] Building CXX object src/common/CMakeFiles/common_base.dir/mapindex.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.04586566Z"
    },
    {
      "message": "[66/205] Building CXX object src/common/CMakeFiles/common_base.dir/malloc.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.078306284Z"
    },
    {
      "message": "[67/205] Building CXX object src/common/CMakeFiles/common_base.dir/timer.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.082206456Z"
    },
    {
      "message": "[68/205] Building CXX object src/common/CMakeFiles/common_base.dir/utils.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.101153724Z"
    },
    {
      "message": "[69/205] Building CXX object src/common/CMakeFiles/common_base.dir/db.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.114195442Z"
    },
    {
      "message": "[70/205] Building CXX object src/common/CMakeFiles/common_base.dir/cli.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.126520054Z"
    },
    {
      "message": "[71/205] Building CXX object src/common/CMakeFiles/common_base.dir/showmsg.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.130243931Z"
    },
    {
      "message": "[72/205] Building CXX object src/common/CMakeFiles/common_base.dir/strlib.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.200048445Z"
    },
    {
      "message": "[73/205] Building CXX object src/common/CMakeFiles/common_base.dir/random.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.222243306Z"
    },
    {
      "message": "[74/205] Building CXX object src/common/CMakeFiles/common_base.dir/socket.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.24644587Z"
    },
    {
      "message": "[75/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/libconfig.c.o\n",
      "timestamp": "2025-11-03T16:05:05.254786684Z"
    },
    {
      "message": "[76/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scanscalar.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.258640787Z"
    },
    {
      "message": "[77/205] Building CXX object src/common/CMakeFiles/common_base.dir/md5calc.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.274506541Z"
    },
    {
      "message": "[78/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginlog.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.277428065Z"
    },
    {
      "message": "[79/205] Building CXX object src/login/CMakeFiles/login-server.dir/ipban.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.293969334Z"
    },
    {
      "message": "[80/205] Building C object src/common/CMakeFiles/common_base.dir/__/__/3rdparty/libconfig/scanner.c.o\n",
      "timestamp": "2025-11-03T16:05:05.297823116Z"
    },
    {
      "message": "[81/205] Building CXX object src/login/CMakeFiles/login-server.dir/logincnslif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.298521964Z"
    },
    {
      "message": "[82/205] Building CXX object src/common/CMakeFiles/common.dir/sql.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.323573041Z"
    },
    {
      "message": "[83/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scantag.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.37578557Z"
    },
    {
      "message": "[84/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_cnslif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.425627212Z"
    },
    {
      "message": "[85/205] Building CXX object src/login/CMakeFiles/login-server.dir/account.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.443468401Z"
    },
    {
      "message": "[86/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/singledocparser.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.450127782Z"
    },
    {
      "message": "[87/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginchrif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.459586534Z"
    },
    {
      "message": "[88/205] Building CXX object src/common/CMakeFiles/common_base.dir/core.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.493270343Z"
    },
    {
      "message": "[89/205] Building CXX object src/common/CMakeFiles/common_base.dir/utilities.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.702472238Z"
    },
    {
      "message": "[90/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/tree.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.912943879Z"
    },
    {
      "message": "[91/205] Building CXX object src/login/CMakeFiles/login-server.dir/loginclif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:05.919779455Z"
    },
    {
      "message": "[92/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scanner.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.050848219Z"
    },
    {
      "message": "[93/205] Building CXX object src/login/CMakeFiles/login-server.dir/login.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.086477127Z"
    },
    {
      "message": "[94/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_achievement.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.174571664Z"
    },
    {
      "message": "[95/205] Building CXX object src/map/CMakeFiles/map-server.dir/date.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.226138073Z"
    },
    {
      "message": "[96/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_mercenary.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.233535733Z"
    },
    {
      "message": "[97/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_elemental.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.259112658Z"
    },
    {
      "message": "[98/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_quest.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.260468753Z"
    },
    {
      "message": "[99/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_homun.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.332291155Z"
    },
    {
      "message": "[100/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_clan.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.338349745Z"
    },
    {
      "message": "[101/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/scantoken.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.386419288Z"
    },
    {
      "message": "[102/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_logif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.420901195Z"
    },
    {
      "message": "[103/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_auction.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.490615203Z"
    },
    {
      "message": "[104/205] Building CXX object 3rdparty/yaml-cpp/CMakeFiles/yaml-cpp.dir/src/emitterutils.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.889556772Z"
    },
    {
      "message": "[105/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_storage.cpp.o\n",
      "timestamp": "2025-11-03T16:05:06.959622739Z"
    },
    {
      "message": "[106/205] Linking CXX static library /src/lib/libyaml-cppr.a\n",
      "timestamp": "2025-11-03T16:05:06.976557658Z"
    },
    {
      "message": "[107/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_party.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.043679657Z"
    },
    {
      "message": "[108/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_mapif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.074869905Z"
    },
    {
      "message": "[109/205] Building CXX object src/map/CMakeFiles/map-server.dir/navi.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.195595581Z"
    },
    {
      "message": "[110/205] Building CXX object src/char/CMakeFiles/char-server.dir/char_clif.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.248823584Z"
    },
    {
      "message": "[111/205] Building CXX object src/char/CMakeFiles/char-server.dir/char.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.27943318Z"
    },
    {
      "message": "[112/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_mail.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.417799905Z"
    },
    {
      "message": "[113/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_pet.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.49200418Z"
    },
    {
      "message": "[114/205] Building CXX object src/common/CMakeFiles/common_base.dir/database.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.961020129Z"
    },
    {
      "message": "[115/205] Building CXX object src/char/CMakeFiles/char-server.dir/inter.cpp.o\n",
      "timestamp": "2025-11-03T16:05:07.986919418Z"
    },
    {
      "message": "[116/205] Building CXX object src/map/CMakeFiles/map-server.dir/mapreg.cpp.o\n",
      "timestamp": "2025-11-03T16:05:18.161839441Z"
    },
    {
      "message": "[117/205] Building CXX object 3rdparty/rapidyaml/CMakeFiles/ryml.dir/src/c4/yml/parse.cpp.o\n",
      "timestamp": "2025-11-03T16:05:18.570250138Z"
    },
    {
      "message": "[118/205] Linking CXX static library /src/lib/librymlr.a\n",
      "timestamp": "2025-11-03T16:05:18.61311398Z"
    },
    {
      "message": "[119/205] Linking CXX static library /src/lib/libcommon_baser.a\n",
      "timestamp": "2025-11-03T16:05:18.664158838Z"
    },
    {
      "message": "[120/205] Linking CXX static library /src/lib/libcommonr.a\n",
      "timestamp": "2025-11-03T16:05:18.683511074Z"
    },
    {
      "message": "[121/205] Building CXX object src/char/CMakeFiles/char-server.dir/int_guild.cpp.o\n",
      "timestamp": "2025-11-03T16:05:18.695462255Z"
    },
    {
      "message": "[122/205] Linking CXX executable /src/login-server\n",
      "timestamp": "2025-11-03T16:05:25.956893199Z"
    },
    {
      "message": "[123/205] Linking CXX executable /src/char-server\n",
      "timestamp": "2025-11-03T16:05:26.051818764Z"
    },
    {
      "message": "[124/205] Building CXX object src/map/CMakeFiles/map-server.dir/path.cpp.o\n",
      "timestamp": "2025-11-03T16:05:28.788249217Z"
    },
    {
      "message": "[125/205] Building CXX object src/map/CMakeFiles/map-server.dir/skill.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/skill.cpp.o \n",
      "timestamp": "2025-11-03T16:05:59.668302496Z"
    },
    {
      "message": "/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/skill.cpp.o -MF src/map/CMakeFiles/map-server.dir/skill.cpp.o.d -o src/map/CMakeFiles/map-server.dir/skill.cpp.o -c /src/src/map/skill.cpp\nIn file included from /src/src/map/skill.cpp:26:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:05:59.66909163Z"
    },
    {
      "message": "[126/205] Building CXX object src/map/CMakeFiles/map-server.dir/searchstore.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/searchstore.cpp.o \n",
      "timestamp": "2025-11-03T16:06:06.420413318Z"
    },
    {
      "message": "/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/searchstore.cpp.o -MF src/map/CMakeFiles/map-server.dir/searchstore.cpp.o.d -o src/map/CMakeFiles/map-server.dir/searchstore.cpp.o -c /src/src/map/searchstore.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/searchstore.cpp:13:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:06.42092076Z"
    },
    {
      "message": "[127/205] Building CXX object src/map/CMakeFiles/map-server.dir/quest.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/quest.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/quest.cpp.o -MF src/map/CMakeFiles/map-server.dir/quest.cpp.o.d -o src/map/CMakeFiles/map-server.dir/quest.cpp.o -c /src/src/map/quest.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/quest.cpp:27:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:07.404146666Z"
    },
    {
      "message": "[128/205] Building CXX object src/map/CMakeFiles/map-server.dir/pet.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/pet.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pet.cpp.o -MF src/map/CMakeFiles/map-server.dir/pet.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pet.cpp.o -c /src/src/map/pet.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/pet.hpp:14,\n                 from /src/src/map/pet.cpp:4:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:13.696196896Z"
    },
    {
      "message": "[129/205] Building CXX object src/map/CMakeFiles/map-server.dir/instance.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/instance.cpp.o \n",
      "timestamp": "2025-11-03T16:06:18.671536053Z"
    },
    {
      "message": "/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/instance.cpp.o -MF src/map/CMakeFiles/map-server.dir/instance.cpp.o.d -o src/map/CMakeFiles/map-server.dir/instance.cpp.o -c /src/src/map/instance.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/instance.cpp:26:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:18.67162079Z"
    },
    {
      "message": "[130/205] Building CXX object src/map/CMakeFiles/map-server.dir/party.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/party.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/party.cpp.o -MF src/map/CMakeFiles/map-server.dir/party.cpp.o.d -o src/map/CMakeFiles/map-server.dir/party.cpp.o -c /src/src/map/party.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/party.cpp:28:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:21.510588999Z"
    },
    {
      "message": "[131/205] Building CXX object src/map/CMakeFiles/map-server.dir/clan.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/clan.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/clan.cpp.o -MF src/map/CMakeFiles/map-server.dir/clan.cpp.o.d -o src/map/CMakeFiles/map-server.dir/clan.cpp.o -c /src/src/map/clan.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/clan.cpp:19:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:21.587293035Z"
    },
    {
      "message": "[132/205] Building CXX object src/map/CMakeFiles/map-server.dir/guild.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/guild.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/guild.cpp.o -MF src/map/CMakeFiles/map-server.dir/guild.cpp.o.d -o src/map/CMakeFiles/map-server.dir/guild.cpp.o -c /src/src/map/guild.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/guild.cpp:31:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:21.982040882Z"
    },
    {
      "message": "[133/205] Building CXX object src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o -MF src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pc_groups.cpp.o -c /src/src/map/pc_groups.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/pc_groups.cpp:12:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:23.045424566Z"
    },
    {
      "message": "[134/205] Building CXX object src/map/CMakeFiles/map-server.dir/duel.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/duel.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/duel.cpp.o -MF src/map/CMakeFiles/map-server.dir/duel.cpp.o.d -o src/map/CMakeFiles/map-server.dir/duel.cpp.o -c /src/src/map/duel.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/duel.cpp:16:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:24.774517536Z"
    },
    {
      "message": "[135/205] Building CXX object src/map/CMakeFiles/map-server.dir/homunculus.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/homunculus.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/homunculus.cpp.o -MF src/map/CMakeFiles/map-server.dir/homunculus.cpp.o.d -o src/map/CMakeFiles/map-server.dir/homunculus.cpp.o -c /src/src/map/homunculus.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/homunculus.cpp:25:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:25.508330244Z"
    },
    {
      "message": "[136/205] Building CXX object src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o -MF src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o.d -o src/map/CMakeFiles/map-server.dir/npc_chat.cpp.o -c /src/src/map/npc_chat.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/npc_chat.cpp:16:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:27.901650025Z"
    },
    {
      "message": "[137/205] Building CXX object src/map/CMakeFiles/map-server.dir/mercenary.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/mercenary.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mercenary.cpp.o -MF src/map/CMakeFiles/map-server.dir/mercenary.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mercenary.cpp.o -c /src/src/map/mercenary.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/mercenary.cpp:27:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:28.954599684Z"
    },
    {
      "message": "[138/205] Building CXX object src/map/CMakeFiles/map-server.dir/map.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/map.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/map.cpp.o -MF src/map/CMakeFiles/map-server.dir/map.cpp.o.d -o src/map/CMakeFiles/map-server.dir/map.cpp.o -c /src/src/map/map.cpp\nIn file included from /src/src/map/map.cpp:29:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:29.897822489Z"
    },
    {
      "message": "[139/205] Building CXX object src/map/CMakeFiles/map-server.dir/channel.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/channel.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/channel.cpp.o -MF src/map/CMakeFiles/map-server.dir/channel.cpp.o.d -o src/map/CMakeFiles/map-server.dir/channel.cpp.o -c /src/src/map/channel.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/channel.cpp:21:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:31.082267873Z"
    },
    {
      "message": "[140/205] Building CXX object src/map/CMakeFiles/map-server.dir/itemdb.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/itemdb.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/itemdb.cpp.o -MF src/map/CMakeFiles/map-server.dir/itemdb.cpp.o.d -o src/map/CMakeFiles/map-server.dir/itemdb.cpp.o -c /src/src/map/itemdb.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/itemdb.cpp:27:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:31.273116702Z"
    },
    {
      "message": "[141/205] Building CXX object src/map/CMakeFiles/map-server.dir/intif.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/intif.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/intif.cpp.o -MF src/map/CMakeFiles/map-server.dir/intif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/intif.cpp.o -c /src/src/map/intif.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/intif.cpp:29:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:31.850555607Z"
    },
    {
      "message": "[142/205] Building CXX object src/map/CMakeFiles/map-server.dir/cashshop.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/cashshop.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/cashshop.cpp.o -MF src/map/CMakeFiles/map-server.dir/cashshop.cpp.o.d -o src/map/CMakeFiles/map-server.dir/cashshop.cpp.o -c /src/src/map/cashshop.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/cashshop.cpp:15:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:32.31549593Z"
    },
    {
      "message": "[143/205] Building CXX object src/map/CMakeFiles/map-server.dir/chat.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/chat.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/chat.cpp.o -MF src/map/CMakeFiles/map-server.dir/chat.cpp.o.d -o src/map/CMakeFiles/map-server.dir/chat.cpp.o -c /src/src/map/chat.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/chat.cpp:21:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:32.461203639Z"
    },
    {
      "message": "[144/205] Building CXX object src/map/CMakeFiles/map-server.dir/npc.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/npc.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/npc.cpp.o -MF src/map/CMakeFiles/map-server.dir/npc.cpp.o.d -o src/map/CMakeFiles/map-server.dir/npc.cpp.o -c /src/src/map/npc.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/npc.cpp:34:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:32.997877001Z"
    },
    {
      "message": "[145/205] Building CXX object src/map/CMakeFiles/map-server.dir/atcommand.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/atcommand.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/atcommand.cpp.o -MF src/map/CMakeFiles/map-server.dir/atcommand.cpp.o.d -o src/map/CMakeFiles/map-server.dir/atcommand.cpp.o -c /src/src/map/atcommand.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/atcommand.cpp:55:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:33.0106465Z"
    },
    {
      "message": "[146/205] Building CXX object src/map/CMakeFiles/map-server.dir/mob.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/mob.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mob.cpp.o -MF src/map/CMakeFiles/map-server.dir/mob.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mob.cpp.o -c /src/src/map/mob.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/mob.cpp:40:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:33.045467755Z"
    },
    {
      "message": "[147/205] Building CXX object src/map/CMakeFiles/map-server.dir/mail.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/mail.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/mail.cpp.o -MF src/map/CMakeFiles/map-server.dir/mail.cpp.o.d -o src/map/CMakeFiles/map-server.dir/mail.cpp.o -c /src/src/map/mail.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/mail.cpp:19:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:33.455248087Z"
    },
    {
      "message": "[148/205] Building CXX object src/map/CMakeFiles/map-server.dir/pc.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/pc.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/pc.cpp.o -MF src/map/CMakeFiles/map-server.dir/pc.cpp.o.d -o src/map/CMakeFiles/map-server.dir/pc.cpp.o -c /src/src/map/pc.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/pc.cpp:4:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:33.602200614Z"
    },
    {
      "message": "[149/205] Building CXX object src/map/CMakeFiles/map-server.dir/elemental.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/elemental.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/elemental.cpp.o -MF src/map/CMakeFiles/map-server.dir/elemental.cpp.o.d -o src/map/CMakeFiles/map-server.dir/elemental.cpp.o -c /src/src/map/elemental.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/elemental.cpp:27:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:34.611719509Z"
    },
    {
      "message": "[150/205] Building CXX object src/map/CMakeFiles/map-server.dir/log.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/log.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/log.cpp.o -MF src/map/CMakeFiles/map-server.dir/log.cpp.o.d -o src/map/CMakeFiles/map-server.dir/log.cpp.o -c /src/src/map/log.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/log.cpp:20:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:34.77243095Z"
    },
    {
      "message": "[151/205] Building CXX object src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o -MF src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o.d -o src/map/CMakeFiles/map-server.dir/buyingstore.cpp.o -c /src/src/map/buyingstore.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/buyingstore.cpp:25:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:34.833480047Z"
    },
    {
      "message": "[152/205] Building CXX object src/map/CMakeFiles/map-server.dir/achievement.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/achievement.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/achievement.cpp.o -MF src/map/CMakeFiles/map-server.dir/achievement.cpp.o.d -o src/map/CMakeFiles/map-server.dir/achievement.cpp.o -c /src/src/map/achievement.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/achievement.cpp:29:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:34.877755328Z"
    },
    {
      "message": "[153/205] Building CXX object src/map/CMakeFiles/map-server.dir/script.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/script.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/script.cpp.o -MF src/map/CMakeFiles/map-server.dir/script.cpp.o.d -o src/map/CMakeFiles/map-server.dir/script.cpp.o -c /src/src/map/script.cpp\nIn file included from /src/src/map/script.cpp:37:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:35.101843819Z"
    },
    {
      "message": "[154/205] Building CXX object src/map/CMakeFiles/map-server.dir/chrif.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/chrif.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/chrif.cpp.o -MF src/map/CMakeFiles/map-server.dir/chrif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/chrif.cpp.o -c /src/src/map/chrif.cpp\nIn file included from /src/src/map/pc.hpp:17,\n                 from /src/src/map/chrif.cpp:30:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:35.199861323Z"
    },
    {
      "message": "[155/205] Building CXX object src/map/CMakeFiles/map-server.dir/clif.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/clif.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/clif.cpp.o -MF src/map/CMakeFiles/map-server.dir/clif.cpp.o.d -o src/map/CMakeFiles/map-server.dir/clif.cpp.o -c /src/src/map/clif.cpp\nIn file included from /src/src/map/clif.cpp:31:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:35.439573486Z"
    },
    {
      "message": "[156/205] Building CXX object src/map/CMakeFiles/map-server.dir/battleground.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/battleground.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/battleground.cpp.o -MF src/map/CMakeFiles/map-server.dir/battleground.cpp.o.d -o src/map/CMakeFiles/map-server.dir/battleground.cpp.o -c /src/src/map/battleground.cpp\nIn file included from /src/src/map/battleground.cpp:4:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:35.712026933Z"
    },
    {
      "message": "[157/205] Building CXX object src/map/CMakeFiles/map-server.dir/battle.cpp.o\nFAILED: src/map/CMakeFiles/map-server.dir/battle.cpp.o \n/usr/bin/c++ -DYAML_CPP_STATIC_DEFINE -I/src/build/src/common -I/src/3rdparty/libconfig -I/src/3rdparty/yaml-cpp/include -I/src/src -I/usr/include/mysql -I/src/3rdparty/rapidyaml/src -I/src/3rdparty/rapidyaml/ext/c4core/src -O3 -DNDEBUG  -fno-strict-aliasing -DHAVE_TLS -DHAVE_MONOTONIC_CLOCK -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DHAVE_GETPID -DHAVE_GETTID -DLIBCONFIG_STATIC -DPCRE_SUPPORT -std=gnu++17 -MD -MT src/map/CMakeFiles/map-server.dir/battle.cpp.o -MF src/map/CMakeFiles/map-server.dir/battle.cpp.o.d -o src/map/CMakeFiles/map-server.dir/battle.cpp.o -c /src/src/map/battle.cpp\nIn file included from /src/src/map/battle.cpp:21:\n/src/src/map/battleground.hpp:157:18: error: storage size of 'bg_guild' isn't known\n  157 | struct mmo_guild bg_guild[];\n      |                  ^~~~~~~~\n",
      "timestamp": "2025-11-03T16:06:35.881961772Z"
    },
    {
      "message": "[158/205] Building CXX object 3rdparty/httplib/CMakeFiles/httplib.dir/httplib.cc.o\n",
      "timestamp": "2025-11-03T16:06:37.37022298Z"
    },
    {
      "message": "ninja: build stopped: subcommand failed.\n",
      "timestamp": "2025-11-03T16:06:37.375325155Z"
    }
  ]
}

Build Failed: bc.Build: failed to solve: process "/bin/sh -c cmake -S . -B build         -G Ninja         -DCMAKE_BUILD_TYPE=Release         -DINSTALL_TO_PATH=ON         -DINSTALL_PATH=/opt/rathena &&     cmake --build build --target install" did not complete successfully: exit code: 1

