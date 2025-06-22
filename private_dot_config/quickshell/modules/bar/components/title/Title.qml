import "root:/utils"
import Quickshell
import QtQuick
import Quickshell.Hyprland

Rectangle {
    id: root

    implicitHeight: text.implicitWidth
    implicitWidth: text.implicitHeight
    color: "transparent"

    Text {
        id: text
        transform: Rotation {
            origin.x: text.implicitWidth / 2
            origin.y: text.implicitHeight / 2
            angle: 90
        }

        anchors.centerIn: parent

        font.family: Config.textFont
        font.pointSize: Config.textPointSize

        text: {
            const title = HyprlandIcons.currentIcon + " " + Hyprland.activeToplevel.title;
            const maxLen = 20;
            if (title.length < maxLen) {
                return title;
            }

            return title.substring(0, 20) + '...';
        }

        color: Colours.palette.text
    }
}
