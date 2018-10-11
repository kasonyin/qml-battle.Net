import QtQuick 2.11
import QtQuick.Controls 2.4

Button {
    id: control

    background: Rectangle {
        color: control.hovered ? "#00AEFF" : "#0E86CA";
        border {
            width: 2;
            color: control.hovered ? "#00AEFF" : "#10A1DE";
        }
    }

    contentItem: Text {
        text: control.text
        font: control.font
        color: "white"/*control.down ? "#17a81a" : "#21be2b"*/
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
