pragma ComponentBehavior: Bound
pragma Singleton

import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick

Singleton {
    id: hyprIcons

    property var clientTitle: {
        const topLevel = Hyprland.activeToplevel;
        if (topLevel === null || topLevel.wayland === null) {
            return "";
        }

        return topLevel.wayland.appId || "";
    }

    property var currentIcon: iconsDict[clientTitle] || "󰣆"

    readonly property var iconsDict: {
        "firefox": "󰈹",
        "Spotify": "",
        "kitty": "",
        "discord": "",
        "slack": "",
        "thunar": ""
    }
}
