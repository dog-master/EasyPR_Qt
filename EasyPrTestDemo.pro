QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    LBP/helper.cpp \
    LBP/lbp.cpp \
    main.cpp \
    mser/mser2.cpp \
    src/core/chars_identify.cpp \
    src/core/chars_recognise.cpp \
    src/core/chars_segment.cpp \
    src/core/core_func.cpp \
    src/core/feature.cpp \
    src/core/params.cpp \
    src/core/plate_detect.cpp \
    src/core/plate_judge.cpp \
    src/core/plate_locate.cpp \
    src/core/plate_recognize.cpp \
    src/util/kv.cpp \
    src/util/program_options.cpp \
    src/util/util.cpp


HEADERS += \
    LBP/helper.hpp \
    LBP/lbp.hpp \
    easypr.h \
    easypr/api.hpp \
    easypr/config.h \
    easypr/core/character.hpp \
    easypr/core/chars_identify.h \
    easypr/core/chars_recognise.h \
    easypr/core/chars_segment.h \
    easypr/core/core_func.h \
    easypr/core/feature.h \
    easypr/core/params.h \
    easypr/core/plate.hpp \
    easypr/core/plate_detect.h \
    easypr/core/plate_judge.h \
    easypr/core/plate_locate.h \
    easypr/core/plate_recognize.h \
    easypr/util/kv.h \
    easypr/util/program_options.h \
    easypr/util/switch.hpp \
    easypr/util/util.h \
    easypr/version.h \
    mser/mser2.hpp
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


INCLUDEPATH += E:\opencv\OpencvBuildLib\include \
            E:\opencv\OpencvBuildLib\include\opencv \
            E:\opencv\OpencvBuildLib\include\opencv2


CONFIG(debug, debug|release): {
LIBS += E:\opencv\OpencvBuildLib\lib\libopencv_*.a

} else:CONFIG(release, debug|release): {

LIBS += E:\opencv\OpencvBuildLib\lib\libopencv_*.a

}

