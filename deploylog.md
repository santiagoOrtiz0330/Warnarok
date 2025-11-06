[builder 5/5] RUN chmod +x ./configure &&     ./configure --enable-packetver=20200902 &&     make server -j"$(nproc)"

checking for g++... 
g++

checking whether the C++ compiler works... 
yes
checking for C++ compiler default output file name... a.out

checking for suffix of executables... 

checking whether we are cross compiling... 
no

checking for suffix of object files... 
o

checking whether we are using the GNU C++ compiler... 
yes
checking whether g++ accepts -g... 
yes

checking how to run the C++ preprocessor... 
g++ -E

checking for grep that handles long lines and -e... 
/usr/bin/grep

checking for egrep... 
/usr/bin/grep -E

checking for ANSI C header files... 
yes

checking for sys/types.h... 
yes

checking for sys/stat.h... 
yes

checking for stdlib.h... 
yes

checking for string.h... 
yes

checking for memory.h... 
yes

checking for strings.h... 
yes

checking for inttypes.h... 
yes

checking for stdint.h... 
yes

checking for unistd.h... 
yes

checking minix/config.h usability... 
no
checking minix/config.h presence... 
no
checking for minix/config.h... 
no

checking whether it is safe to define __EXTENSIONS__... 
yes

checking whether make sets $(MAKE)... 
yes

checking for gcc... 
gcc

checking whether we are using the GNU C compiler... 
yes
checking whether gcc accepts -g... 
yes
checking for gcc option to accept ISO C89... 
none needed

checking whether we are using the GNU C++ compiler... (cached) yes
checking whether g++ accepts -g... 
(cached) 
yes

checking for ar... 
/usr/bin/ar

checking whether byte ordering is bigendian... 
no
checking whether gcc produces 32bit code... 
no

checking whether gcc supports __thread specifier (TLS)... 
yes

checking whether gcc supports -Wno-unused-parameter... 
yes
checking whether gcc can actually use -Wno-unused-parameter... 
not needed but enabled

checking whether gcc supports -Wempty-body... 
yes

checking whether gcc supports -Wno-switch... 
yes

checking whether gcc supports -Wno-missing-field-initializers... 
yes

checking whether compiler is clang... 
no
checking whether gcc supports -Wno-maybe-uninitialized... 
yes

checking whether gcc supports -Wno-clobbered... 
yes

checking whether gcc supports -Wshadow... 
yes

checking whether gcc can efficiently use -Wshadow... 
yes

checking whether gcc supports -fPIC... 
yes

checking how to make shared objects... 
not supported
configure: compiler is unable to generate shared objects, disabled plugins (optional)
checking whether gcc supports -fno-strict-aliasing... 
yes

checking for setrlimit... 
yes

checking for strnlen... 
yes

checking for uselocale... 
yes

checking for newlocale... 
yes

checking for freelocale... 
yes

checking for xlocale.h... 
no

checking for library containing inflateEnd... 
-lz
checking for zlib.h... 
yes
checking for library containing sqrt... 
none required
checking for library containing clock_gettime... 
none required
checking whether CLOCK_MONOTONIC is supported and works... 
yes

checking for library containing pthread_create... 
none required
checking for library containing pthread_sigmask... 
none required
checking for library containing pthread_attr_init... 
none required
checking for library containing pthread_attr_setstacksize... 
none required
checking for library containing pthread_attr_destroy... 
none required
checking for library containing pthread_cancel... 
none required
checking for library containing pthread_join... 
none required

checking for mysql_config... 
/usr/bin/mysql_config

checking for mysql_init in -lmysqlclient... 
yes

checking mysql.h usability... 
yes
checking mysql.h presence... 
yes
checking for mysql.h... 
yes

checking MySQL library (required)... 
yes (8.0.43)

checking for library containing pcre_study... 
-lpcre
checking PCRE library (optional)... 
yes (8.39)

checking host OS... 
Linux

checking for MinGW... 
no

configure: Configure finish

configure: CPPFLAGS=  -I../common -DHAS_TLS -fno-strict-aliasing -DHAVE_SETRLIMIT -DHAVE_STRNLEN -DPACKETVER=20200902  -I/usr/include -DHAVE_MONOTONIC_CLOCK

configure: CFLAGS=  -g -O2 -pipe -ffast-math -Wall -Wempty-body -Wno-switch -Wno-missing-field-initializers -Wno-maybe-uninitialized -Wno-clobbered -Wshadow
configure: CFLAGS_AR=   -g -O2 -pipe -ffast-math -Wall -Wempty-body -Wno-switch -Wno-missing-field-initializers -Wno-maybe-uninitialized -Wno-clobbered -Wshadow
configure: LDFLAGS=  -L/usr/lib

configure: output name =  login-server, char-server, map-server, web-server

configure: creating ./config.status

config.status: creating Makefile

config.status: creating src/common/Makefile

config.status: creating 3rdparty/libconfig/Makefile

config.status: creating 3rdparty/yaml-cpp/Makefile

config.status: creating 3rdparty/rapidyaml/Makefile

config.status: creating 3rdparty/httplib/Makefile

config.status: creating src/char/Makefile

config.status: creating src/login/Makefile

config.status: creating src/map/Makefile

config.status: creating src/tool/Makefile

config.status: creating src/web/Makefile

make[1]: Entering directory '/rathena/3rdparty/libconfig'

make[1]: Entering directory '/rathena/3rdparty/rapidyaml'

make[1]: Entering directory '/rathena/3rdparty/yaml-cpp'

make[1]: Entering directory '/rathena/3rdparty/httplib'

building conf/import, conf/msg_conf/import and db/import folder...

	MKDIR	obj

	CC	grammar.c

	CC	libconfig.c

	MKDIR	obj/src/contrib

	MKDIR	obj

	CC	scanctx.c

	CXX	httplib.cc

	CC	scanner.c

	CC	strbuf.c

	CXX	src/emit.cpp

	CXX	src/scanner.cpp

	CXX	src/tag.cpp

	CXX	src/convert.cpp

Assembler messages:
Fatal error: can't create obj/grammar.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/scanctx.o: No such file or directory

	CXX	src/stream.cpp

Assembler messages:
Fatal error: can't create obj/libconfig.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/httplib.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/scanner.o: No such file or directory

	CXX	src/nodeevents.cpp

	CXX	src/emitfromevents.cpp

Assembler messages:
Fatal error: can't create obj/src/emit.o: No such file or directory

	CXX	src/ostream_wrapper.cpp

Assembler messages:
Fatal error: can't create obj/strbuf.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/src/scanner.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/src/tag.o: No such file or directory

	CXX	src/node.cpp

Assembler messages:
Fatal error: can't create obj/src/convert.o: No such file or directory

	CXX	src/node_data.cpp

	CXX	src/null.cpp

Assembler messages:
Fatal error: can't create obj/src/stream.o: No such file or directory

	CXX	src/parse.cpp

Assembler messages:
Assembler messages:
Fatal error: Fatal error: can't create obj/src/emitfromevents.o: No such file or directorycan't create obj/src/nodeevents.o: No such file or directory


Assembler messages:
Fatal error: can't create obj/src/ostream_wrapper.o: No such file or directory

	CXX	src/scanscalar.cpp

	CXX	src/emitter.cpp

	CXX	src/memory.cpp

Assembler messages:
Fatal error: can't create obj/src/node.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/src/node_data.o: No such file or directory

	CXX	src/scantoken.cpp

Assembler messages:
Fatal error: can't create obj/src/null.o: No such file or directory

	CXX	src/depthguard.cpp

Assembler messages:
Fatal error: can't create obj/src/parse.o: No such file or directory

	CXX	src/emitterutils.cpp

Assembler messages:
Fatal error: can't create obj/src/scanscalar.o: No such file or directory

	CXX	src/binary.cpp

Assembler messages:
Fatal error: can't create obj/src/emitter.o: No such file or directory

	CXX	src/scantag.cpp

	CXX	src/regex_yaml.cpp

Assembler messages:
Fatal error: can't create obj/src/memory.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/src/scantoken.o: No such file or directory

Assembler messages:
Fatal error: can't create obj/src/depthguard.o: No such file or directory

	MKDIR	obj

	CXX	src/contrib/graphbuilder.cpp

	CXX	src/contrib/graphbuilderadapter.cpp

	CXX	src/nodebuilder.cpp

	CXX	ext/c4core/src/c4/utf.cpp

make[1]: *** [Makefile:33: obj/strbuf.o] Error 2
make[1]: *** Waiting for unfinished jobs....

	CXX	src/directives.cpp

make[1]: *** [Makefile:33: obj/scanctx.o] Error 2

	CXX	src/emitterstate.cpp

make[1]: *** [Makefile:33: obj/scanner.o] Error 2

make[1]: *** [Makefile:33: obj/libconfig.o] Error 2

	CXX	ext/c4core/src/c4/format.cpp

	CXX	src/exp.cpp

make[1]: *** [Makefile:33: obj/grammar.o] Error 2

make[1]: Leaving directory '/rathena/3rdparty/libconfig'

make: *** [Makefile:59: libconfig] Error 2
make: *** Waiting for unfinished jobs....

	CXX	src/simplekey.cpp

make[1]: *** [Makefile:36: obj/src/null.o] Error 2
make[1]: *** Waiting for unfinished jobs....

	CXX	ext/c4core/src/c4/time.cpp

	CXX	ext/c4core/src/c4/error.cpp

make[1]: *** [Makefile:36: obj/src/depthguard.o] Error 2

	CXX	ext/c4core/src/c4/base64.cpp

	CXX	ext/c4core/src/c4/memory_util.cpp

	CXX	ext/c4core/src/c4/memory_resource.cpp

make[1]: *** [Makefile:35: obj/src/tag.o] Error 2

	CXX	ext/c4core/src/c4/char_traits.cpp

	CXX	ext/c4core/src/c4/language.cpp

make[1]: *** [Makefile:35: obj/src/stream.o] Error 2

	CXX	src/c4/yml/tree.cpp
	CXX	src/c4/yml/common.cpp

	CXX	src/c4/yml/preprocess.cpp

	CXX	src/c4/yml/node.cpp

	CXX	src/c4/yml/parse.cpp

make[1]: *** [Makefile:35: obj/src/scanscalar.o] Error 2

make[1]: *** [Makefile:35: obj/src/ostream_wrapper.o] Error 2

make[1]: *** [Makefile:35: obj/src/node.o] Error 2

make[1]: *** [Makefile:35: obj/src/memory.o] Error 2

make[1]: *** [Makefile:35: obj/src/emit.o] Error 2

make[1]: *** [Makefile:35: obj/src/emitfromevents.o] Error 2

make[1]: *** [Makefile:35: obj/src/nodeevents.o] Error 2

make[1]: *** [Makefile:35: obj/src/emitter.o] Error 2

make[1]: *** [Makefile:35: obj/src/parse.o] Error 2

make[1]: *** [Makefile:35: obj/src/scantoken.o] Error 2

make[1]: *** [Makefile:35: obj/src/node_data.o] Error 2

make[1]: *** [Makefile:35: obj/src/scanner.o] Error 2

make[1]: *** [Makefile:35: obj/src/convert.o] Error 2

make[1]: Leaving directory '/rathena/3rdparty/yaml-cpp'

make: *** [Makefile:69: yaml-cpp] Error 2

make[1]: Leaving directory '/rathena/3rdparty/httplib'

make[1]: *** [Makefile:37: obj/httplib.o] Error 2

make: *** [Makefile:72: httplib] Error 2

	AR	obj/ryml.a

make[1]: Leaving directory '/rathena/3rdparty/rapidyaml'