import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: mainWindow
    visible: true
    title: qsTr("Puffin Mod Manager")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Import Mod")
                onTriggered: console.log("Import mod triggered")
            }

            MenuItem {
                text: qsTr("About Puffin Mod Manager")
                onTriggered: aboutDialog.open()
            }

            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit()
            }
        }
    }

    // About dialog
    Dialog {
        id: aboutDialog
        title: ""

        modal: true
        standardButtons: Dialog.Ok
        anchors.centerIn: parent

        ColumnLayout {
            spacing: 10

            Text {
                text: qsTr("About Puffin Mod Manager")
                color: "#097171"
                font.weight: 800
                font.pointSize: 14
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                text: qsTr("The first-class mod manager that Linux deserves")
                color: "white"
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                text: qsTr("Version 1.0.0a")
                color: "white"
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                text: qsTr("© 2024 Puffin Mod Manager team")
                color: "white"
                wrapMode: Text.Wrap
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }

    RowLayout {
        anchors.fill: parent // Make the layout fill the window
        spacing: 2

        Rectangle {
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            color: Style.secondaryBg
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Style.bgColor // Use the bgColor from the singleton
        }
    }
}
