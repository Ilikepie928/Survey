import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.0
import connect_cpp

Window {
    width: 640
    height: 390
    visible: true
    title: qsTr("Hello World")

    Connection_obj {
        id: obj
    }

    Rectangle {
        id: rec
        height: parent.height/13
        width: parent.width
        color: "green"

        Text {
            id: name
            text: "Similarity test"
            height: parent.height
            width: parent.width
            font.pointSize: parent.height/2
            font.bold: true

            horizontalAlignment: Text.AlignHCenter

            color: "white"
        }
    }

    Column {
        id: startPg
        y: parent.height/15
        width: parent.width
        height: parent.height/1.2
        Button {
            id: startBt

            height: parent.height/6
            width: parent.height/2

            anchors.centerIn: parent

            background: Rectangle {
                radius: parent.parent.height/25
                color: "lightgreen"

                Text {
                    text: "Start test"
                    font.bold: true
                    color: "white"
                    anchors.centerIn: parent
                    font.pointSize: parent.height/3
                }
            }

            onClicked: {
                obj.started();
                startPg.destroy();
            }
        }
    }

    Connections {
        target: obj
        function onResponse(input) {
            name.text = "hi";
            console.log("hi");
        }
    }
}
