# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/heatdeath/CLion-2019.2/clion-2019.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/heatdeath/CLion-2019.2/clion-2019.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/heatdeath/CLionProjects/pthread

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/heatdeath/CLionProjects/pthread/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pthread.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pthread.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pthread.dir/flags.make

CMakeFiles/pthread.dir/main.cpp.o: CMakeFiles/pthread.dir/flags.make
CMakeFiles/pthread.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/heatdeath/CLionProjects/pthread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pthread.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pthread.dir/main.cpp.o -c /home/heatdeath/CLionProjects/pthread/main.cpp

CMakeFiles/pthread.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pthread.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/heatdeath/CLionProjects/pthread/main.cpp > CMakeFiles/pthread.dir/main.cpp.i

CMakeFiles/pthread.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pthread.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/heatdeath/CLionProjects/pthread/main.cpp -o CMakeFiles/pthread.dir/main.cpp.s

CMakeFiles/pthread.dir/view.cpp.o: CMakeFiles/pthread.dir/flags.make
CMakeFiles/pthread.dir/view.cpp.o: ../view.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/heatdeath/CLionProjects/pthread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pthread.dir/view.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pthread.dir/view.cpp.o -c /home/heatdeath/CLionProjects/pthread/view.cpp

CMakeFiles/pthread.dir/view.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pthread.dir/view.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/heatdeath/CLionProjects/pthread/view.cpp > CMakeFiles/pthread.dir/view.cpp.i

CMakeFiles/pthread.dir/view.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pthread.dir/view.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/heatdeath/CLionProjects/pthread/view.cpp -o CMakeFiles/pthread.dir/view.cpp.s

CMakeFiles/pthread.dir/httpServer.cpp.o: CMakeFiles/pthread.dir/flags.make
CMakeFiles/pthread.dir/httpServer.cpp.o: ../httpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/heatdeath/CLionProjects/pthread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pthread.dir/httpServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pthread.dir/httpServer.cpp.o -c /home/heatdeath/CLionProjects/pthread/httpServer.cpp

CMakeFiles/pthread.dir/httpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pthread.dir/httpServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/heatdeath/CLionProjects/pthread/httpServer.cpp > CMakeFiles/pthread.dir/httpServer.cpp.i

CMakeFiles/pthread.dir/httpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pthread.dir/httpServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/heatdeath/CLionProjects/pthread/httpServer.cpp -o CMakeFiles/pthread.dir/httpServer.cpp.s

# Object files for target pthread
pthread_OBJECTS = \
"CMakeFiles/pthread.dir/main.cpp.o" \
"CMakeFiles/pthread.dir/view.cpp.o" \
"CMakeFiles/pthread.dir/httpServer.cpp.o"

# External object files for target pthread
pthread_EXTERNAL_OBJECTS =

pthread: CMakeFiles/pthread.dir/main.cpp.o
pthread: CMakeFiles/pthread.dir/view.cpp.o
pthread: CMakeFiles/pthread.dir/httpServer.cpp.o
pthread: CMakeFiles/pthread.dir/build.make
pthread: CMakeFiles/pthread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/heatdeath/CLionProjects/pthread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable pthread"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pthread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pthread.dir/build: pthread

.PHONY : CMakeFiles/pthread.dir/build

CMakeFiles/pthread.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pthread.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pthread.dir/clean

CMakeFiles/pthread.dir/depend:
	cd /home/heatdeath/CLionProjects/pthread/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/heatdeath/CLionProjects/pthread /home/heatdeath/CLionProjects/pthread /home/heatdeath/CLionProjects/pthread/cmake-build-debug /home/heatdeath/CLionProjects/pthread/cmake-build-debug /home/heatdeath/CLionProjects/pthread/cmake-build-debug/CMakeFiles/pthread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pthread.dir/depend

