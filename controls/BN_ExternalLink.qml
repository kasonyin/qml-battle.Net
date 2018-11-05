import QtQuick 2.11
import QtQuick.Controls 2.4

Button {
    id: control

    property bool hasIcon: true

    implicitHeight: contentItem.implicitHeight

    topPadding: 0
    bottomPadding: 0
    leftPadding: 2
    rightPadding: 9

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.NoButton
        cursorShape: Qt.PointingHandCursor
    }

    background: Item {}
    contentItem:  Text {
        rightPadding: indicator.visible ? control.indicator.width : 0
        text: control.text
        color: control.hovered ? "#FFFFFF" : "#00AEFF"
        verticalAlignment: Text.AlignVCenter
        font {
            pixelSize: 16
            family: "Arial"
            weight: Font.Bold
        }
        Behavior on color { ColorAnimation {duration: 200} }
    }
    indicator: Image {
        anchors.verticalCenter: control.verticalCenter
        anchors.right: control.right
        source: "qrc:/image/image/external-link-square.png"
        visible: control.hasIcon
    }
}
