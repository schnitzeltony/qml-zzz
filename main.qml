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
    }
}
