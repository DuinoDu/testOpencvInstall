cmake_minimum_required(VERSION 2.8)
project(DisplayImage)

SET(CMAKE_MODULE_PATH "H:\0-Bak_software_data\OpenCV\build")
find_package( OpenCV REQUIRED )

#find_package(PkgConfig)
#pkg_check_modules(OpenCV REQUIRED opencv>=2.4.9)
#set(OpenCV_INCLUDE_DIRS ${OpenCV_INCLUDE_DIRS} /usr/local/opencv_itseez/include/opencv2)
#set(OpenCV_LIBS ${OpenCV_LIBRARIES})
#LINK_DIRECTORIES(${OpenCV_LIBDIR}) 

include_directories(${OpenCV_INCLUDE_DIRS})
add_executable( DisplayImage DisplayImage.cpp)
target_link_libraries( DisplayImage ${OpenCV_LIBS})

