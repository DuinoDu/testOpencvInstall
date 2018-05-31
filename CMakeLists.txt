cmake_minimum_required(VERSION 2.8)
project(DisplayImage)

find_package( OpenCV REQUIRED )
add_compile_options(-std=c++11)

#find_package(PkgConfig)
#pkg_check_modules(OpenCV REQUIRED opencv>=2.4.9)
#set(OpenCV_INCLUDE_DIRS ${OpenCV_INCLUDE_DIRS} /usr/local/opencv_itseez/include/opencv2)
#set(OpenCV_LIBS ${OpenCV_LIBRARIES})
#LINK_DIRECTORIES(${OpenCV_LIBDIR}) 

include_directories(${OpenCV_INCLUDE_DIRS})
add_executable( DisplayImage DisplayImage.cpp)
target_link_libraries( DisplayImage ${OpenCV_LIBS})
