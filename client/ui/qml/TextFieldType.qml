import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
    id: root
    property bool error: false
//    font.
    selectionColor: "darkgray"
    font.pixelSize: 16
    color: "#333333"
    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        border.width: 1
        color: {
            if (root.error) {
                return Qt.rgba(213, 40, 60, 255)
            }
            return root.enabled ? "#F4F4F4" : Qt.rgba(127, 127, 127, 255)
        }
        border.color: {
            if (!root.enabled) {
                return Qt.rgba(127, 127, 127, 255)
            }
            if (root.error) {
                return Qt.rgba(213, 40, 60, 255)
            }
            if (root.focus) {
                return "#A7A7A7"
            }
            return "#A7A7A7"
        }
    }
}
