import QtQuick 2.12
import QtQuick.Controls 2.12
import "./"

Item {
    id: root
    width: GC.screenWidth
    height: GC.screenHeight
    Text {
        font.family: "Lato"
        font.styleName: "normal"
        font.pixelSize: 24
        color: "#100A44"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: qsTr("Configuring...")
        x: 0
        y: 35
        width: 381
        height: 31
    }
    LabelType {
        x: 30
        y: 90
        width: 321
        height: 31
        text: qsTr("Please wait.")
    }
    LabelType {
        x: 40
        y: 560
        width: 301
        height: 41
        text: qsTr("Please wait, configuring process may take up to 5 minutes")
    }
    ProgressBar {
        id: pr
        anchors.horizontalCenter: parent.horizontalCenter
        y: 510
        width: 301
        height: 40
        from: 0
        to: 100
        value: UiLogic.progressBarNewServerConfiguringValue
        background: Rectangle {
            implicitWidth: parent.width
            implicitHeight: parent.height
            color: "#100A44"
            radius: 4
        }

        contentItem: Item {
            implicitWidth: parent.width
            implicitHeight: parent.height
            Rectangle {
                width: pr.visualPosition * parent.width
                height: parent.height
                radius: 4
                color: Qt.rgba(255, 255, 255, 0.15);
            }
        }

        LabelType {
            anchors.fill: parent
            text: qsTr("Configuring...")
            horizontalAlignment: Text.AlignHCenter
            font.family: "Lato"
            font.styleName: "normal"
            font.pixelSize: 16
            color: "#D4D4D4"
        }
    }
}
