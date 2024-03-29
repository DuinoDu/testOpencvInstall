######################################################################
# Automatically generated by qmake (3.0) ?? 8? 14 07:32:32 2016
######################################################################

TEMPLATE = app
TARGET = testopencvinstall
INCLUDEPATH += .

# Input
SOURCES += src/DisplayImage.cpp

#configuration variables


unix:!macx{

PATH_OPENCV_INCLUDE   = "/usr/local/include"
PATH_OPENCV_LIBRARIES = "/usr/local/lib"
VERSION_OPENCV        = 310

#include and build

INCLUDEPATH += $${PATH_OPENCV_INCLUDE}

LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_core
LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_highgui
LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_imgcodecs
#add more module

}


win32 {

PATH_OPENCV_INCLUDE   = "E:\OpenCV\build\include"
PATH_OPENCV_LIBRARIES = "E:\OpenCV\build\x64\vc12\lib"
VERSION_OPENCV        = 249

#include and build

INCLUDEPATH += $${PATH_OPENCV_INCLUDE}

LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_core$${VERSION_OPENCV}
LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_highgui$${VERSION_OPENCV}
#add more module

}
