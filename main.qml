import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("ZZZ frame")
    Column {
        anchors.top: parent.top
        anchors.left: parent.left

        Zzz {
        }
        Ready {
        }
        ReadyNarrow {
        }
        Row {
            spacing: 10
            Text {
                text: qsTr("text")
                color: "#E000E0"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#FF70FF"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#8b4513"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#bc8f8f"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#00C000"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#80FF80"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#000000"
                font.pointSize: 15
            }
            Text {
                text: qsTr("text")
                color: "#606060"
                font.pointSize: 15
            }
        }
    }
}
