pragma ComponentBehavior: Bound
pragma Singleton

import Quickshell
import Quickshell.Hyprland
import QtQuick

Singleton {
    property int workspaceRadius: 10

    property int barLeftMargin: 5
    property int barRightMargin: 5

    property string textFont: "JetBrains Mono"
    property int textPointSize: 12
}
