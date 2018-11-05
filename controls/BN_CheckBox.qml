import QtQuick 2.11
import QtQuick.Controls 2.4

CheckBox {
    id: control

    padding: 0
    spacing: 10

    font {
        weight: Font.Light
        family: "Arial"
        pixelSize: 14
    }

    onPressed: {
        if (checked) {
            handle.x += 1
            handle.y += 1
        } else {
            handle.x -= 1
            handle.y -= 1
        }
    }

    indicator: Item {
        implicitWidth: 20
        implicitHeight: 20
        Rectangle {
            anchors.fill: parent
            color: "#0E1116"
            border.width: 1
            border.color: control.pressed ? "#343942"
                                          : control.hovered ? "#565961"
                                                            : "#343942"
            radius: 2
        }

        Image {
            id: handle
            x: 4
            y: 4
            source: "qrc:/image/image/check.png"
            visible: control.checked
        }
    }

    contentItem: Text {
        text: control.text
        font: control.font
        color: "#B3B3B3"
        opacity: enabled ? 1.0 : 0.3
        verticalAlignment: Text.AlignVCenter
        leftPadding: control.indicator.width + control.spacing
    }
}
