import QtQuick
import Quickshell
import "root:/modules/bar"
import "root:/utils"
import Quickshell.Wayland

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: window

        property var modelData
        screen: modelData
        color: "transparent"
        implicitWidth: bar.implicitWidth

        anchors {
            bottom: true
            left: true
            right: false
            top: true
        }

        Bar {
            id: bar
        }
    }
}
