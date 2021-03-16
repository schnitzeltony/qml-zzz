import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Rectangle  {
    width: 200
    height: 100
    Material.theme: Material.Dark
    color: Material.backgroundColor
    Item {
        id: animatedItem
        anchors.centerIn: parent
        height: parent.height*0.8
        width: parent.width
        clip: true
        Image {
            source: "qrc:/Ready-narrow.svg"
            sourceSize.width: parent.width
            fillMode: Image.TileHorizontally
            height: parent.height
            width: parent.width*2

            NumberAnimation on x {
                running: true
                loops: Animation.Infinite
                from: 0
                to: -animatedItem.width/4
                duration: 500
            }
        }
    }
}
