#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib
CC=i386-mingw32-gcc
CCC=i386-mingw32-g++
CXX=i386-mingw32-g++
FC=i386-mingw32-g77
AS=i386-mingw32-as

# Macros
CND_PLATFORM=MinGW-MacOSX
CND_CONF=mingw-cross
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/utilsfuncs.o \
	${OBJECTDIR}/jvmlauncher.o \
	${OBJECTDIR}/ng.o \
	${OBJECTDIR}/jrubyexe.o \
	${OBJECTDIR}/platformlauncher.o \
	${OBJECTDIR}/jruby.o

# C Compiler Flags
CFLAGS=-m32

# CC Compiler Flags
CCFLAGS=-m32
CXXFLAGS=-m32

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-Llib -lws2_32 -static-libgcc -lws2_32 -Wl,--enable-auto-import -Wl,-Bstatic -lstdc++ -Wl,-Bdynamic -ljvm

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-mingw-cross.mk jruby.dll

jruby.dll: ${OBJECTFILES}
	${LINK.cc} -shared -o jruby.dll -Wl,-S ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/utilsfuncs.o: nbproject/Makefile-${CND_CONF}.mk utilsfuncs.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/utilsfuncs.o utilsfuncs.cpp

${OBJECTDIR}/jvmlauncher.o: nbproject/Makefile-${CND_CONF}.mk jvmlauncher.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/jvmlauncher.o jvmlauncher.cpp

${OBJECTDIR}/ng.o: nbproject/Makefile-${CND_CONF}.mk ng.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.c) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/ng.o ng.c

${OBJECTDIR}/jrubyexe.o: nbproject/Makefile-${CND_CONF}.mk jrubyexe.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/jrubyexe.o jrubyexe.cpp

${OBJECTDIR}/platformlauncher.o: nbproject/Makefile-${CND_CONF}.mk platformlauncher.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/platformlauncher.o platformlauncher.cpp

${OBJECTDIR}/jruby.o: nbproject/Makefile-${CND_CONF}.mk jruby.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -s -Iinclude -Iinclude/win32 -MMD -MP -MF $@.d -o ${OBJECTDIR}/jruby.o jruby.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/mingw-cross
	${RM} jruby.dll

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
