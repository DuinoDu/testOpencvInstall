cmake_minimum_required(VERSION 2.8)
project(DisplayImage)

find_package( OpenCV REQUIRED )

#
#find_package(PkgConfig)
#pkg_check_modules(OpenCV REQUIRED opencv>=2.4.9)
#set(OpenCV_INCLUDE_DIRS ${OpenCV_INCLUDE_DIRS})
#set(OpenCV_LIBS ${OpenCV_LIBRARIES})
#LINK_DIRECTORIES(/usr/local/opencv_itseez/lib) #change to your own lib containing **.so


add_executable( DisplayImage DisplayImage.cpp)
target_link_libraries( DisplayImage ${OpenCV_LIBS})

#message(${OpenCV_INCLUDE_DIRS})
#message(${OpenCV_LIBS})
