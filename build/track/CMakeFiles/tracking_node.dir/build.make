# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/olstob/track_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/olstob/track_ws/build

# Include any dependencies generated for this target.
include track/CMakeFiles/tracking_node.dir/depend.make

# Include the progress variables for this target.
include track/CMakeFiles/tracking_node.dir/progress.make

# Include the compile flags for this target's objects.
include track/CMakeFiles/tracking_node.dir/flags.make

track/CMakeFiles/tracking_node.dir/track.cpp.o: track/CMakeFiles/tracking_node.dir/flags.make
track/CMakeFiles/tracking_node.dir/track.cpp.o: /home/olstob/track_ws/src/track/track.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olstob/track_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object track/CMakeFiles/tracking_node.dir/track.cpp.o"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tracking_node.dir/track.cpp.o -c /home/olstob/track_ws/src/track/track.cpp

track/CMakeFiles/tracking_node.dir/track.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tracking_node.dir/track.cpp.i"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olstob/track_ws/src/track/track.cpp > CMakeFiles/tracking_node.dir/track.cpp.i

track/CMakeFiles/tracking_node.dir/track.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tracking_node.dir/track.cpp.s"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olstob/track_ws/src/track/track.cpp -o CMakeFiles/tracking_node.dir/track.cpp.s

track/CMakeFiles/tracking_node.dir/track.cpp.o.requires:
.PHONY : track/CMakeFiles/tracking_node.dir/track.cpp.o.requires

track/CMakeFiles/tracking_node.dir/track.cpp.o.provides: track/CMakeFiles/tracking_node.dir/track.cpp.o.requires
	$(MAKE) -f track/CMakeFiles/tracking_node.dir/build.make track/CMakeFiles/tracking_node.dir/track.cpp.o.provides.build
.PHONY : track/CMakeFiles/tracking_node.dir/track.cpp.o.provides

track/CMakeFiles/tracking_node.dir/track.cpp.o.provides.build: track/CMakeFiles/tracking_node.dir/track.cpp.o

track/CMakeFiles/tracking_node.dir/robot.cpp.o: track/CMakeFiles/tracking_node.dir/flags.make
track/CMakeFiles/tracking_node.dir/robot.cpp.o: /home/olstob/track_ws/src/track/robot.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/olstob/track_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object track/CMakeFiles/tracking_node.dir/robot.cpp.o"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tracking_node.dir/robot.cpp.o -c /home/olstob/track_ws/src/track/robot.cpp

track/CMakeFiles/tracking_node.dir/robot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tracking_node.dir/robot.cpp.i"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/olstob/track_ws/src/track/robot.cpp > CMakeFiles/tracking_node.dir/robot.cpp.i

track/CMakeFiles/tracking_node.dir/robot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tracking_node.dir/robot.cpp.s"
	cd /home/olstob/track_ws/build/track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/olstob/track_ws/src/track/robot.cpp -o CMakeFiles/tracking_node.dir/robot.cpp.s

track/CMakeFiles/tracking_node.dir/robot.cpp.o.requires:
.PHONY : track/CMakeFiles/tracking_node.dir/robot.cpp.o.requires

track/CMakeFiles/tracking_node.dir/robot.cpp.o.provides: track/CMakeFiles/tracking_node.dir/robot.cpp.o.requires
	$(MAKE) -f track/CMakeFiles/tracking_node.dir/build.make track/CMakeFiles/tracking_node.dir/robot.cpp.o.provides.build
.PHONY : track/CMakeFiles/tracking_node.dir/robot.cpp.o.provides

track/CMakeFiles/tracking_node.dir/robot.cpp.o.provides.build: track/CMakeFiles/tracking_node.dir/robot.cpp.o

# Object files for target tracking_node
tracking_node_OBJECTS = \
"CMakeFiles/tracking_node.dir/track.cpp.o" \
"CMakeFiles/tracking_node.dir/robot.cpp.o"

# External object files for target tracking_node
tracking_node_EXTERNAL_OBJECTS =

/home/olstob/track_ws/devel/lib/track/tracking_node: track/CMakeFiles/tracking_node.dir/track.cpp.o
/home/olstob/track_ws/devel/lib/track/tracking_node: track/CMakeFiles/tracking_node.dir/robot.cpp.o
/home/olstob/track_ws/devel/lib/track/tracking_node: track/CMakeFiles/tracking_node.dir/build.make
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/libroscpp.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/librosconsole.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/liblog4cxx.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/librostime.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /opt/ros/indigo/lib/libcpp_common.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_videostab.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_superres.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_stitching.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_contrib.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_nonfree.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_ocl.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_gpu.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_photo.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_objdetect.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_legacy.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_video.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_ml.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_calib3d.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_features2d.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_highgui.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_imgproc.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_flann.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: /usr/local/lib/libopencv_core.so.2.4.11
/home/olstob/track_ws/devel/lib/track/tracking_node: track/CMakeFiles/tracking_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/olstob/track_ws/devel/lib/track/tracking_node"
	cd /home/olstob/track_ws/build/track && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tracking_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
track/CMakeFiles/tracking_node.dir/build: /home/olstob/track_ws/devel/lib/track/tracking_node
.PHONY : track/CMakeFiles/tracking_node.dir/build

track/CMakeFiles/tracking_node.dir/requires: track/CMakeFiles/tracking_node.dir/track.cpp.o.requires
track/CMakeFiles/tracking_node.dir/requires: track/CMakeFiles/tracking_node.dir/robot.cpp.o.requires
.PHONY : track/CMakeFiles/tracking_node.dir/requires

track/CMakeFiles/tracking_node.dir/clean:
	cd /home/olstob/track_ws/build/track && $(CMAKE_COMMAND) -P CMakeFiles/tracking_node.dir/cmake_clean.cmake
.PHONY : track/CMakeFiles/tracking_node.dir/clean

track/CMakeFiles/tracking_node.dir/depend:
	cd /home/olstob/track_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/olstob/track_ws/src /home/olstob/track_ws/src/track /home/olstob/track_ws/build /home/olstob/track_ws/build/track /home/olstob/track_ws/build/track/CMakeFiles/tracking_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : track/CMakeFiles/tracking_node.dir/depend

