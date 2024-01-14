import QtQuick 2.15

Rectangle {
    width: 100
    height: 30
    border.color: "black"
    color: "lightgrey"

    property string cellText: ""

    Text {
        anchors.centerIn: parent
        text: cellText
    }
}
