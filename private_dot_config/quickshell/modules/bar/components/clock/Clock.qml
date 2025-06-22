import QtQuick
import Quickshell
import Quickshell.Hyprland

import QtQuick.Layouts

import "root:/utils"

Rectangle {
    id: container
    implicitWidth: clockText.implicitWidth + 10
    implicitHeight: clockText.implicitHeight

    anchors.horizontalCenter: parent.horizontalCenter

    radius: 10

    color: Colours.palette.surface2

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }

    Column {
        id: clockText
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            implicitWidth: textSymbol.implicitWidth
            implicitHeight: textSymbol.implicitHeight

            anchors.horizontalCenter: parent.horizontalCenter

            // color: Colours.palette.rosewater
            color: "transparent"

            topRightRadius: 10
            topLeftRadius: 10

            Text {
                id: textSymbol
                text: "󰥔"
                font.family: Config.textFont
                font.pointSize: Config.textPointSize
                color: Colours.palette.rosewater
                anchors.centerIn: parent
            }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter

            font.family: Config.textFont
            font.pointSize: Config.textPointSize
            color: Colours.palette.rosewater
            text: Qt.formatDateTime(clock.date, "hh")
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: Config.textFont
            font.pointSize: Config.textPointSize
            color: Colours.palette.rosewater
            text: Qt.formatDateTime(clock.date, "mm")
        }
    }
}
