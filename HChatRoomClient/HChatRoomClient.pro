QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG  += c++11 warn_off
DESTDIR += $$PWD/dist

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    HChatClientSocket.cpp \
    HChatDataBaseMgr.cpp \
    HChatRoomLogin.cpp \
    main.cpp \
    HChatRoomClient.cpp \
    AppConfig.cpp \
    $$PWD/componment/appinit.cpp \
    $$PWD/componment/iconhelper.cpp

HEADERS += \
    Global.h \
    HChatClientSocket.h \
    HChatDataBaseMgr.h \
    HChatRoomClient.h \
    HChatRoomLogin.h \
    AppConfig.h \
    $$PWD/componment/appinit.h \
    $$PWD/componment/iconhelper.h

INCLUDEPATH += \
    . \
    $$PWD/componment

FORMS += \
    HChatRoomClient.ui \
    HChatRoomLogin.ui

RESOURCES += \
    $$PWD/qss/style.qrc \
    $$PWD/ttf/ttf.qrc   \
    $$PWD/image/image.qrc

RC_ICONS += $$PWD/ico/client.ico

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
