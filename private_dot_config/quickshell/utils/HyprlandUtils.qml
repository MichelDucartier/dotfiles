pragma Singleton

import Quickshell.Hyprland
import QtQuick
import Quickshell

Singleton {
    readonly property var workspaces: Hyprland.workspaces
    readonly property var monitors: Hyprland.monitors
}
