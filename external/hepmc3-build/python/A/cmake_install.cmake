# Install script for directory: /Users/brentonsuriah/alice-simulation/external/HepMC3/python/A

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/pyHepMC3.cpython-314-darwin.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3" TYPE MODULE FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/3.14.7/pyHepMC3/pyHepMC3.cpython-314-darwin.so")
  if(EXISTS "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/pyHepMC3.cpython-314-darwin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/pyHepMC3.cpython-314-darwin.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib"
      -add_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-install/lib"
      "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/pyHepMC3.cpython-314-darwin.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/pyHepMC3.cpython-314-darwin.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/CMakeFiles/CPythonpyHepMC33.14.7.dir/install-cxx-module-bmi-RELEASE.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/__init__.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3" TYPE FILE FILES "/Users/brentonsuriah/alice-simulation/external/HepMC3/python/A/../src//__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info/METADATA")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info" TYPE FILE RENAME "METADATA" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.metadata")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info/INSTALLER")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info" TYPE FILE RENAME "INSTALLER" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.installer")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info/RECORD")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info" TYPE FILE RENAME "RECORD" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.record")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info/WHEEL")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3-3.3.1.dist-info" TYPE FILE RENAME "WHEEL" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/pyHepMC3.wheel")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search" TYPE MODULE FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/3.14.7/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so")
  if(EXISTS "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib"
      -add_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-install/lib"
      "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/pyHepMC3search.cpython-314-darwin.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/CMakeFiles/CPythonpyHepMC3search3.14.7.dir/install-cxx-module-bmi-RELEASE.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search/__init__.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/search" TYPE FILE FILES "/Users/brentonsuriah/alice-simulation/external/HepMC3/python/A/../src/search/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info/METADATA")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info" TYPE FILE RENAME "METADATA" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.search.metadata")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info/INSTALLER")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info" TYPE FILE RENAME "INSTALLER" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.search.installer")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info/RECORD")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info" TYPE FILE RENAME "RECORD" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.search.record")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonsearch" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info/WHEEL")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.search-3.3.1.dist-info" TYPE FILE RENAME "WHEEL" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/pyHepMC3.search.wheel")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO" TYPE MODULE FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/3.14.7/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so")
  if(EXISTS "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/outputs/lib"
      -add_rpath "/Users/brentonsuriah/alice-simulation/external/hepmc3-install/lib"
      "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/pyHepMC3rootIO.cpython-314-darwin.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/CMakeFiles/CPythonpyHepMC3rootIO3.14.7.dir/install-cxx-module-bmi-RELEASE.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO/__init__.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3/rootIO" TYPE FILE FILES "/Users/brentonsuriah/alice-simulation/external/HepMC3/python/A/../src/rootIO/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info/METADATA")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info" TYPE FILE RENAME "METADATA" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.rootIO.metadata")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info/INSTALLER")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info" TYPE FILE RENAME "INSTALLER" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.rootIO.installer")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info/RECORD")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info" TYPE FILE RENAME "RECORD" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/../pyHepMC3.rootIO.record")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pythonrootIO" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info/WHEEL")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/lib/python3.14/site-packages/pyHepMC3.rootIO-3.3.1.dist-info" TYPE FILE RENAME "WHEEL" FILES "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/pyHepMC3.rootIO.wheel")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/brentonsuriah/alice-simulation/external/hepmc3-build/python/A/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
