# Install script for directory: /Users/brentonsuriah/alice-simulation/external/HepMC3/rootIO

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/brentonsuriah/alice-simulation/external/hepmc3-install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOlibs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib/libHepMC3rootIO.3.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libHepMC3rootIO.3.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libHepMC3rootIO.3.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib"
      -add_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-install/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libHepMC3rootIO.3.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libHepMC3rootIO.3.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOlibs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib/libHepMC3rootIO.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOlibs" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/brentonsuriah/alice-simulation/external/hepmc3-build/rootIO/CMakeFiles/HepMC3rootIO.dir/install-cxx-module-bmi-RELEASE.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOlibs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib/" FILES_MATCHING REGEX "/[^/]*\\.pcm$" REGEX "/[^/]*\\.rootmap$" REGEX "/cmakefiles$" EXCLUDE REGEX "/src$" EXCLUDE REGEX "/include$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOdevel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/brentonsuriah/alice-simulation/external/HepMC3/rootIO/include/HepMC3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "rootIOdevel" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake/HepMC3rootIOTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake/HepMC3rootIOTargets.cmake"
         "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/rootIO/CMakeFiles/Export/cf3e329493f6024abbb60b82a27ccf67/HepMC3rootIOTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake/HepMC3rootIOTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake/HepMC3rootIOTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake" TYPE FILE FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/rootIO/CMakeFiles/Export/cf3e329493f6024abbb60b82a27ccf67/HepMC3rootIOTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/HepMC3/cmake" TYPE FILE FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/rootIO/CMakeFiles/Export/cf3e329493f6024abbb60b82a27ccf67/HepMC3rootIOTargets-release.cmake")
  endif()
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/rootIO/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
