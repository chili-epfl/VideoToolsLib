#-------------------------------------------------
#
# Project created by QtCreator 2014-01-08T11:12:24
#
#-------------------------------------------------

QT       -= core gui

TARGET = libvideotools
TEMPLATE = lib

DEFINES += LIBVIDEOTOOLS_LIBRARY

SOURCES += libvideotools.cpp \
    CDataUtils.cpp \
    CPcaCompression.cpp \
    CXNormSize.cpp \
    CXGrayscale.cpp \
    CXCrop.cpp \
    CFilterNMS.cpp \
    CVecUtils.cpp

INCLUDEPATH += /usr/local/include
LIBS += -lglog -L/usr/local/lib -lopencv_core -lopencv_imgproc

QMAKE_CXXFLAGS += -std=c++0x
QMAKE_CXXFLAGS_RELEASE += -O3 -march=native -DNDEBUG

HEADERS += \
    ../../include/libvideotools_global.h \
    ../../include/libvideotools.h \
    ../../include/CDataUtils.h \
    globalInclude.h \
    ../../include/CCompressorInterface.h \
    ../../include/CPcaCompression.h \
    ../../include/CXNormSize.h \
    CXGrayscale.h \
    ../../include/IXfmr.h \
    CXCrop.h \
    ../../include/imgTransformers/IXfmr.h \
    ../../include/imgTransformers/CXNormSize.h \
    ../../include/imgTransformers/CXGrayscale.h \
    ../../include/imgTransformers/CXCrop.h \
    ../../include/imgTransformers/all.h \
    ../../include/filters/CFilterNMS.h \
    ../../include/filters/IGenericPostFilter.h \
    ../../include/filters/IGenericPreFilter.h \
    ../../include/CVecUtils.h

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
