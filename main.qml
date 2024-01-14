import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "QML Excel-Like Table Example"

    Rectangle {
        width: parent.width
        height: parent.height

        Column {
            spacing: 0

            // Create the table headers
            Row {
                spacing: 1
                Repeater {
                    model: 1 // Number of columns
                    delegate: Rectangle {
                        width: 100
                        height: 30
                        color: "lightblue"
                        border.color: "blue"

                        Text {
                            anchors.centerIn: parent
                            text: "Name"
                        }
                    }
                }

                Row {
                    spacing: 1
                    Repeater {
                        model: 1 // Number of columns
                        delegate: Rectangle {
                            width: 100
                            height: 30
                            color: "lightblue"
                            border.color: "blue"

                            Text {
                                anchors.centerIn: parent
                                text: "Father's Name"
                            }
                        }
                    }
                }
            }



            // Create table rows
            Repeater {
                model: 5 // Number of rows
                delegate: Row {
                    spacing: 1
                    Repeater {
                        model: 2 // Number of columns
                        delegate: Rectangle {
                            width: 100
                            height: 30
                            color: "lightgrey"
                            border.color: "black"

                            TextInput {
                                anchors.fill: parent
                                text: "Row " + index + ", Col " + column
                            }
                        }
                    }
                }
            }
        }
    }
}
