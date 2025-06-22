import QtQuick
import Quickshell.Hyprland
import QtQuick.Layouts

import "root:/utils"

Rectangle {
    color: Colours.palette.surface2
    implicitWidth: child.implicitWidth
    implicitHeight: child.implicitHeight
    radius: Config.workspaceRadius

    Column {
        id: child

        Repeater {
            model: Hyprland.workspaces.values.length
            Workspace {}
        }
    }

    Connections {
        target: Hyprland

        function onRawEvent(event) {
            Hyprland.refreshWorkspaces();
        }
    }
}
