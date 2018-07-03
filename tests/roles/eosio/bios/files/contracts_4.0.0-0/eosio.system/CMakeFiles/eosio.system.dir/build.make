# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deck/git/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deck/git/eos/build

# Utility rule file for eosio.system.

# Include the progress variables for this target.
include contracts/eosio.system/CMakeFiles/eosio.system.dir/progress.make

contracts/eosio.system/CMakeFiles/eosio.system: contracts/eosio.system/eosio.system.wast.hpp
contracts/eosio.system/CMakeFiles/eosio.system: contracts/eosio.system/eosio.system.abi.hpp


contracts/eosio.system/eosio.system.wast.hpp: contracts/eosio.system/eosio.system.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating eosio.system.wast.hpp"
	cd /home/deck/git/eos/build/contracts/eosio.system && echo "const char* const eosio_system_wast = R\"=====(" > /home/deck/git/eos/build/contracts/eosio.system/eosio.system.wast.hpp
	cd /home/deck/git/eos/build/contracts/eosio.system && cat /home/deck/git/eos/build/contracts/eosio.system/eosio.system.wast >> /home/deck/git/eos/build/contracts/eosio.system/eosio.system.wast.hpp
	cd /home/deck/git/eos/build/contracts/eosio.system && echo ")=====\";" >> /home/deck/git/eos/build/contracts/eosio.system/eosio.system.wast.hpp

contracts/eosio.system/eosio.system.abi.hpp: contracts/eosio.system/eosio.system.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating eosio.system.abi.hpp"
	cd /home/deck/git/eos/build/contracts/eosio.system && echo "const char* const eosio_system_abi = R\"=====(" > /home/deck/git/eos/build/contracts/eosio.system/eosio.system.abi.hpp
	cd /home/deck/git/eos/build/contracts/eosio.system && cat /home/deck/git/eos/build/contracts/eosio.system/eosio.system.abi >> /home/deck/git/eos/build/contracts/eosio.system/eosio.system.abi.hpp
	cd /home/deck/git/eos/build/contracts/eosio.system && echo ")=====\";" >> /home/deck/git/eos/build/contracts/eosio.system/eosio.system.abi.hpp

contracts/eosio.system/eosio.system.wast: contracts/eosio.system/eosio.system.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WAST eosio.system.wast"
	cd /home/deck/git/eos/build/contracts/eosio.system && /home/deck/git/eos/build/externals/binaryen/bin/eosio-s2wasm -o /home/deck/git/eos/build/contracts/eosio.system/eosio.system.wast -s 4096 eosio.system.s

contracts/eosio.system/eosio.system.s: contracts/eosio.system/eosio.system.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating textual assembly eosio.system.s"
	cd /home/deck/git/eos/build/contracts/eosio.system && /home/deck/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o eosio.system.s eosio.system.bc

contracts/eosio.system/eosio.system.bc: contracts/eosio.system/eosio.system.cpp.bc
contracts/eosio.system/eosio.system.bc: contracts/libc++/libc++.bc
contracts/eosio.system/eosio.system.bc: contracts/musl/libc.bc
contracts/eosio.system/eosio.system.bc: contracts/eosiolib/eosiolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking LLVM bitcode executable eosio.system.bc"
	cd /home/deck/git/eos/build/contracts/eosio.system && /home/deck/opt/wasm/bin/llvm-link -only-needed -o eosio.system.bc eosio.system.cpp.bc /home/deck/git/eos/build/contracts/libc++/libc++.bc /home/deck/git/eos/build/contracts/musl/libc.bc /home/deck/git/eos/build/contracts/eosiolib/eosiolib.bc

contracts/eosio.system/eosio.system.cpp.bc: ../contracts/eosio.system/eosio.system.cpp
contracts/eosio.system/eosio.system.cpp.bc: ../contracts/eosio.system/eosio.system.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/deck/git/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building LLVM bitcode eosio.system.cpp.bc"
	cd /home/deck/git/eos/build/contracts/eosio.system && /home/deck/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /home/deck/git/eos/contracts/eosio.system/eosio.system.cpp -o eosio.system.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /home/deck/git/eos/contracts -I /home/deck/git/eos/externals/magic_get/include -isystem /home/deck/git/eos/contracts/libc++/upstream/include -isystem /home/deck/git/eos/contracts/musl/upstream/include -isystem /home/deck/opt/boost_1_66_0/include -isystem /home/deck/git/eos/contracts/libc++/upstream/include -isystem /home/deck/git/eos/contracts/musl/upstream/include -isystem /home/deck/opt/boost_1_66_0/include

eosio.system: contracts/eosio.system/CMakeFiles/eosio.system
eosio.system: contracts/eosio.system/eosio.system.wast.hpp
eosio.system: contracts/eosio.system/eosio.system.abi.hpp
eosio.system: contracts/eosio.system/eosio.system.wast
eosio.system: contracts/eosio.system/eosio.system.s
eosio.system: contracts/eosio.system/eosio.system.bc
eosio.system: contracts/eosio.system/eosio.system.cpp.bc
eosio.system: contracts/eosio.system/CMakeFiles/eosio.system.dir/build.make

.PHONY : eosio.system

# Rule to build all files generated by this target.
contracts/eosio.system/CMakeFiles/eosio.system.dir/build: eosio.system

.PHONY : contracts/eosio.system/CMakeFiles/eosio.system.dir/build

contracts/eosio.system/CMakeFiles/eosio.system.dir/clean:
	cd /home/deck/git/eos/build/contracts/eosio.system && $(CMAKE_COMMAND) -P CMakeFiles/eosio.system.dir/cmake_clean.cmake
.PHONY : contracts/eosio.system/CMakeFiles/eosio.system.dir/clean

contracts/eosio.system/CMakeFiles/eosio.system.dir/depend:
	cd /home/deck/git/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deck/git/eos /home/deck/git/eos/contracts/eosio.system /home/deck/git/eos/build /home/deck/git/eos/build/contracts/eosio.system /home/deck/git/eos/build/contracts/eosio.system/CMakeFiles/eosio.system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/eosio.system/CMakeFiles/eosio.system.dir/depend
