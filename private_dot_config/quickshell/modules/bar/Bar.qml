import Quickshell
import QtQuick
import "root:/utils"
import "root:/modules/bar/components/workspaces"
import "root:/modules/bar/components/title"
import "root:/modules/bar/components/clock"
import "root:/modules/bar/components/sound"
import QtQuick.Layouts

Rectangle {
    // implicitWidth: layout.implicitWidth
    implicitWidth: 45
    implicitHeight: layout.implicitHeight

    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.top: parent.top

    color: Colours.palette.surface0

    ColumnLayout {
        id: layout

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top

        spacing: 0

        Workspaces {
            Layout.alignment: Qt.AlignCenter
            Layout.topMargin: 5
        }

        Item {
            Layout.fillHeight: true
        }

        Title {
            Layout.alignment: Qt.AlignCenter
        }

        Item {
            Layout.fillHeight: true
        }

        Column {
            spacing: 5
            bottomPadding: 5
            Layout.fillWidth: true
            Sound {}
            Clock {}
        }
    }
}
