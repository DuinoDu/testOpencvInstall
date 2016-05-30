cmake_minimum_required(VERSION 2.8)
project(DisplayImage)

find_package( OpenCV REQUIRED )
#find_package(PkgConfig)
#pkg_check_modules(OpenCV opencv>=3.1.0)
#set(OpenCV_INCLUDE_DIRS ${OpenCV_INCLUDE_DIRS} /usr/local/opencv_itseesz/include/opencv2)
#set(OpenCV_LIBS ${OpenCV_LIBRARIES})

add_executable( DisplayImage DisplayImage.cpp)
target_link_libraries( DisplayImage ${OpenCV_LIBS})

