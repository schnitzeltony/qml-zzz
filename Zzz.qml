import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Rectangle  {
    width: 200
    height: 100
    Material.theme: Material.Dark
    color: Material.backgroundColor
    Item {
        id: waitAnimantion
        anchors.centerIn: parent
        height: parent.height * 0.75 *(1+animationValue)
        width: parent.width
        property real animationValue
        property real pointSizeBase: height > 0 ? height * 0.5 : 5
        Label {
            id: z1
            text: "Z"
            font.pointSize: waitAnimantion.pointSizeBase
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            horizontalAlignment: Label.AlignHCenter
            verticalAlignment: Label.AlignBottom
            color: Material.foreground
        }
        Label {
            id: z2
            text: "Z"
            font.pointSize: waitAnimantion.pointSizeBase * 0.8
            horizontalAlignment: Label.AlignHCenter
            verticalAlignment: Label.AlignVCenter
            x: parent.width * (0.48 - waitAnimantion.animationValue*0.08)
            y: parent.height * (0.12 - waitAnimantion.animationValue*0.05)
            color: Material.foreground
        }
        Label {
            id: z3
            text: "Z"
            font.pointSize: waitAnimantion.pointSizeBase * 0.6
            anchors.right: parent.right
            horizontalAlignment: Label.AlignHCenter
            verticalAlignment: Label.AlignBottom
            anchors.top: parent.top
            color: Material.foreground
        }
        SequentialAnimation on animationValue {
            running: waitAnimantion.visible
            loops: Animation.Infinite
            NumberAnimation {
                from: 0
                to: 0.5
                duration: 600
            }
            NumberAnimation {
                duration: 700
            }
            NumberAnimation {
                from: 0.5
                to: 0
                duration: 1500
            }
            NumberAnimation {
                duration: 100
            }
        }
    }
}
