#ifndef APPCONFIG_H
#define APPCONFIG_H

#include <QObject>
#include <QApplication>
#include <QSettings>
#include <QVariant>
#include <QFile>
#include <QWidget>
#include <QFontDatabase>
#include <QColor>

namespace App {
class AppConfig {
public:
    static QString conAppInstallPath;   // 应用程序路径
    static QString conAppDatasPath;     // 数据保存路径
    static QString conAppDataBasePath;  // 数据库目录
    static QString conConfigFilePath;   // 配置目录
    static QString conRecordsPath;      // 记录配置
    static QString conRecvFilePath;     // 文件路径
    static QString conIniFilePath;      // 配置ini
    static QString conServerAddress;    // 服务器地址
    static int     conServerMsgPort;    // 消息端口
    static int     conServerFilePort;   // 文件端口

    static int     conID_;

    static QString conUserName;         // 用户名
    static QString conPassWord;         // 密码

    static void initAppConfig(const QString& installPath);
    static void creatorConfig();
    static void readConfig();
    static void updateConfig(const QString& key, const QVariant& value);
    static void saveConfig();
    static void installStyle(QWidget* w);
    static void installEmoji();
    static void stringToHtmlFilter(QString& context);
    static void stringToHtml(QString& context, QColor color);
};
} // namespace App

#endif
