import Quickshell
import QtQuick
import Quickshell.Hyprland
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import "root:/utils"

Item {
    implicitHeight: container.implicitWidth
    implicitWidth: container.implicitHeight

    anchors.horizontalCenter: parent.horizontalCenter

    Rectangle {
        id: container
        implicitHeight: row.implicitHeight + 10
        implicitWidth: row.implicitWidth + 20
        radius: 10

        anchors.centerIn: parent

        color: Colours.palette.surface2

        rotation: 270

        MouseArea {
            id: globalMouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                volume.visible = true;
                volume.implicitWidth = 100;
            }

            onExited: {
                volume.visible = false;
                volume.implicitWidth = 0;
            }
        }

        Row {
            id: row
            spacing: 5
            anchors.centerIn: parent

            Text {
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: Config.textPointSize
                text: (Audio.muted || Audio.volume == 0) ? "" : Audio.volume < 0.5 ? "" : ""
                color: Colours.palette.rosewater
                rotation: 90
            }

            Slider {
                id: volume
                readonly property PwNode sink: Pipewire.defaultAudioSink
                anchors.verticalCenter: parent.verticalCenter
                from: 0
                to: 1
                value: Audio.volume

                visible: false
                implicitWidth: 0
                hoverEnabled: false

                onMoved: Audio.setVolume(value)

                background: Rectangle {
                    radius: 2
                    implicitHeight: 5
                    anchors.verticalCenter: volume.verticalCenter
                    color: Colours.palette.overlay1

                    Rectangle {
                        width: volume.visualPosition * parent.width
                        implicitHeight: parent.height
                        color: Colours.palette.rosewater
                    }
                }

                handle: Rectangle {
                    x: volume.leftPadding + volume.visualPosition * (volume.availableWidth - width)
                    implicitWidth: 12
                    implicitHeight: 12
                    radius: 6
                    color: volume.pressed ? Colours.palette.green : Colours.palette.text
                }

                Behavior on implicitWidth {
                    PropertyAnimation {
                        duration: 150
                        easing.type: Easing.OutQuad
                    }
                }
            }
        }
    }
}
