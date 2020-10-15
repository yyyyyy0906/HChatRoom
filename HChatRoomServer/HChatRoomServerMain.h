// (author: sjxnhjp@gmail.com)

#ifndef HCHATROOMSERVERMAIN_H
#define HCHATROOMSERVERMAIN_H

#include <QWidget>
#include <QMessageBox>

class HChatRoomServerMain_;

QT_BEGIN_NAMESPACE
namespace Ui { class HChatRoomServerMain; }
QT_END_NAMESPACE

class HChatRoomServerMain : public QWidget {
    Q_OBJECT

public:
    HChatRoomServerMain(QWidget *parent = nullptr);
    ~HChatRoomServerMain();

public:
    ///
    /// \brief initHChatRoomServerWindowStyle
    /// \brief 初始化Window样式
    ///
    void initHChatRoomServerWindowStyle();

protected:
    ///
    /// \brief eventFilter
    /// \brief 自定义部分Mouse事件
    /// \param watched
    /// \param evt
    /// \return
    ///
    bool eventFilter(QObject *watched, QEvent *evt) override;
private:
    ///
    /// \brief scanAllAddressForDevice
    /// \brief 扫描本地所以ip
    ///
    void scanAllAddressForDevice();

private slots:
    ///
    /// \brief onMenuCloseButton
    /// \brief 开启服务槽函数
    ///
    void onStartServerButton(void);
    ///
    /// \brief onNewConnection
    ///
    void onNewConnection();
    ///
    /// \brief onClientDisconnect
    ///
    void onClientDisconnect();
    ///
    /// \brief onReadyReadData
    ///
    void onReadyReadData();
    ///
    /// \brief onSendMessageToClient
    ///
    void onSendMessageToClient();

private:
    Ui::HChatRoomServerMain *ui;
    friend class HChatRoomServerMain_;
    HChatRoomServerMain_ *s_;
};
#endif // HCHATROOMSERVERMAIN_H