QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG  += c++11 warn_off
TARGET   = HChatRoomServer
TEMPLATE = app
DESTDIR += $$PWD/dist

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    HChatMessageNotify.cpp \
    HChatMessageNotifyManage.cpp \
    HChatRoomDataBase.cpp \
    main.cpp \
    HChatRoomServerMain.cpp

HEADERS += \
    HChatMessageNotify.h \
    HChatMessageNotifyManage.h \
    HChatRoomDataBase.h \
    HChatRoomServerMain.h

FORMS += \
    HChatRoomServerMain.ui

RESOURCES += \
    Image.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target