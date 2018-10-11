import QtQuick 2.11
import QtQuick.Window 2.11
import "./windows"

QtObject {
    property var loginWindow: LoginWindow {
        Component.onCompleted: show()
    }
}
