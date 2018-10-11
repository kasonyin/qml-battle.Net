import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

TextField {
    id: control

    color: ((control.hovered | control.activeFocus) & (text.length > 0)) ? "#FFFFFF" : "#B3B3B3"

    font {
        family: "Arial"
        weight: Font.Light
        pixelSize: 14
    }

    background: Item{
        implicitWidth: 100
        implicitHeight: 34

        RectangularGlow {
            anchors.fill: roundaryRect
            color: "#1D5E98"
            visible: control.activeFocus
            spread: 0.0
            glowRadius: 1
            cornerRadius: 2
        }

        Rectangle {
            id: roundaryRect
            anchors.fill: parent
            border.width: 1
            border.color: control.activeFocus ? "#1D5E98"
                                              : control.hovered ? "#4B4F58"
                                                                : "#343942"
            color: "#0F1217"
            radius: 2
        }
    }
}
