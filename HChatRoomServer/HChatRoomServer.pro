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
    AppConfig.cpp \
    HChatDataBaseMgr.cpp \
    HChatMessageNotify.cpp \
    HChatMessageNotifyManage.cpp \
    HChatRoomMessageBox.cpp \
    HChatServer.cpp \
    HChatServerSocket.cpp \
    main.cpp \
    HChatRoomServerMain.cpp

HEADERS += \
    AppConfig.h \
    Global.h \
    HChatDataBaseMgr.h \
    HChatMessageNotify.h \
    HChatMessageNotifyManage.h \
    HChatRoomLog.h \
    HChatRoomMessageBox.h \
    HChatRoomServerMain.h \
    HChatServer.h \
    HChatServerSocket.h

FORMS += \
    HChatRoomServerMain.ui

RESOURCES += \
    Image.qrc \
    $$PWD/qss/style.qrc

RC_ICONS += $$PWD/ico/server.ico

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
