# Install script for directory: /home/syy/mqtt.copy.c

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/samples" TYPE FILE FILES
    "/home/syy/mqtt.copy.c/src/samples/MQTTAsync_publish.c"
    "/home/syy/mqtt.copy.c/src/samples/MQTTAsync_subscribe.c"
    "/home/syy/mqtt.copy.c/src/samples/MQTTClient_publish.c"
    "/home/syy/mqtt.copy.c/src/samples/MQTTClient_publish_async.c"
    "/home/syy/mqtt.copy.c/src/samples/MQTTClient_subscribe.c"
    "/home/syy/mqtt.copy.c/src/samples/paho_c_pub.c"
    "/home/syy/mqtt.copy.c/src/samples/paho_c_sub.c"
    "/home/syy/mqtt.copy.c/src/samples/paho_cs_pub.c"
    "/home/syy/mqtt.copy.c/src/samples/paho_cs_sub.c"
    "/home/syy/mqtt.copy.c/src/samples/pubsub_opts.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/syy/mqtt.copy.c/CONTRIBUTING.md"
    "/home/syy/mqtt.copy.c/epl-v10"
    "/home/syy/mqtt.copy.c/edl-v10"
    "/home/syy/mqtt.copy.c/README.md"
    "/home/syy/mqtt.copy.c/notice.html"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/syy/mqtt.copy.c/cmake-build-debug/src/cmake_install.cmake")
  include("/home/syy/mqtt.copy.c/cmake-build-debug/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/syy/mqtt.copy.c/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
