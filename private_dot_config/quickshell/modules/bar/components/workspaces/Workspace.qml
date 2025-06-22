import QtQuick
import QtQuick.Controls
import "root:/utils"
import Quickshell.Hyprland

Rectangle {
    id: workspaceContainer

    readonly property var workspaceObject: Hyprland.workspaces.values[index]
    readonly property int workspaceIndex: workspaceObject.id
    readonly property bool isActive: Hyprland.focusedWorkspace.id === workspaceIndex

    readonly property bool isUrgent: {
        if (typeof workspaceObject === 'undefined') {
            return false;
        }
        return workspaceObject.urgent;
    }

    border.width: 2
    border.color: "transparent"

    color: isActive ? Colours.palette.rosewater : mouseArea.containsMouse ? Colours.palette.overlay2 : isUrgent ? Colours.palette.red : "transparent"

    radius: Config.workspaceRadius
    implicitWidth: 30
    implicitHeight: textItem.implicitHeight + textPadding

    property int textPadding: isActive ? 30 : 10

    Behavior on textPadding {
        NumberAnimation {
            duration: 100
            easing.type: Easing.OutQuad
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true

        onClicked: Hyprland.dispatch(`workspace ${workspaceContainer.workspaceObject.id}`)
    }

    Text {
        id: textItem

        font.pointSize: Config.textPointSize
        font.family: Config.textFont

        anchors.centerIn: parent
        text: {
            if (parent.isActive) {
                return HyprlandIcons.currentIcon;
            }
            return parent.workspaceIndex;
        }

        color: parent.isActive ? Colours.palette.surface0 : Colours.palette.text
    }
}
