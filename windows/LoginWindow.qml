import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import "../common"
import "../controls"

Window {
    id: loginWindow

    minimumWidth: 365
    minimumHeight: 540

    flags: Qt.FramelessWindowHint | Qt.WindowSystemMenuHint | Qt.WindowMinimizeButtonHint | Qt.Window

    onActiveChanged: {
        if (active) {
            head.color = "#3B4657"
            head.borderColor = "#485162"
        } else {
            head.color = "#1C2534"
            head.borderColor = "#303B4D"
        }
        head.requestPaint()
    }

    DragArea {
        anchors.fill: parent
        target: loginWindow
    }

    Rectangle {
        id: background
        color: "#1D222C"
        anchors { fill: parent; margins: 2}
    }

    RadialGradient {
        anchors.fill: background
        source: background
        horizontalRadius: 300
        verticalRadius: 300
        verticalOffset: -270
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#273246" }
            GradientStop { position: 0.9; color: "#1E242F" }
        }
    }

    Rectangle {
        id: windowBorder
        anchors.fill: parent
        color: "transparent"
        border { width: 1; color: "#000000" }

        Canvas {
            id: head

            property color color: "#3B4657"
            property color borderColor: "#485162"
            width: parent.width - 105 * 2
            height: 9
            anchors { horizontalCenter: parent.horizontalCenter; top: parent.top; topMargin: 1 }

            onPaint: {
                var ctx = getContext("2d")
                ctx.lineWidth = 1
                ctx.fillStyle = head.color
                ctx.strokeStyle = head.borderColor

                ctx.beginPath()
                ctx.moveTo(0.5, 0.5);
                ctx.lineTo(8.5, 8.5)
                ctx.lineTo(width - 8.5, 8.5)
                ctx.lineTo(width-0.5, 0.5)

                ctx.closePath()
                ctx.stroke()
                ctx.fill()
            }
        }

        Rectangle {
            anchors { fill: parent; margins: 1 }
            color: "transparent"
            border { width: 1; color: "#2D323B" }
        }
    }

    Image {
        id: icon_blizzard
        anchors { horizontalCenter: background.horizontalCenter; top: background.top; topMargin: 35 }
        source: "qrc:/image/image/blizzard.png"
    }

    ColumnLayout {
        anchors {
            top: icon_blizzard.bottom
            topMargin: 15
            left: windowBorder.left
            leftMargin: 30
            right: windowBorder.right
            rightMargin: 30
        }

        spacing: 15

        Item {
            Layout.preferredHeight: 26
        }

        BN_TextField {
            id: tf_account
            Layout.fillWidth: true
            placeholderText: AppTr.tr_电子邮箱
        }

        BN_TextField {
            id: tf_password
            Layout.fillWidth: true
            placeholderText: AppTr.tr_密码
            echoMode: "Password"
        }

        Item {
            Layout.preferredHeight: 20
        }

        BN_Button_Accent {
            text: AppTr.tr_登录
            Layout.fillWidth: true
            Layout.preferredHeight: 35
        }
    }
}
