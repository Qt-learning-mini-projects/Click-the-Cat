# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appIntroduction2QML_01_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appIntroduction2QML_01_autogen.dir\\ParseCache.txt"
  "appIntroduction2QML_01_autogen"
  )
endif()
