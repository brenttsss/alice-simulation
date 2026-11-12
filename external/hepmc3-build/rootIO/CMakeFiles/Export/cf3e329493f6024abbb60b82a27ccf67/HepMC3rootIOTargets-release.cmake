#----------------------------------------------------------------
# Generated CMake target import file for configuration "RELEASE".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "HepMC3::rootIO" for configuration "RELEASE"
set_property(TARGET HepMC3::rootIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(HepMC3::rootIO PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libHepMC3rootIO.3.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libHepMC3rootIO.3.dylib"
  )

list(APPEND _cmake_import_check_targets HepMC3::rootIO )
list(APPEND _cmake_import_check_files_for_HepMC3::rootIO "${_IMPORT_PREFIX}/lib/libHepMC3rootIO.3.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
