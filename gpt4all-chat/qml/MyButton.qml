import QtCore
import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Button {
    id: myButton
    padding: 10
    rightPadding: 18
    leftPadding: 18
    property color textColor: theme.oppositeTextColor
    property color mutedTextColor: theme.oppositeMutedTextColor
    property color backgroundColor: theme.buttonBackground
    property color backgroundColorHovered: theme.buttonBackgroundHovered
    property real  borderWidth: 0
    property color borderColor: "transparent"
    property real fontPixelSize: theme.fontSizeLarge
    contentItem: Text {
        text: myButton.text
        horizontalAlignment: Text.AlignHCenter
        color: myButton.enabled ? textColor : mutedTextColor
        font.pixelSize: fontPixelSize
        Accessible.role: Accessible.Button
        Accessible.name: text
    }
    background: Rectangle {
        radius: 10
        border.width: borderWidth
        border.color: borderColor
        color: myButton.hovered ? backgroundColorHovered : backgroundColor
    }
    Accessible.role: Accessible.Button
    Accessible.name: text
    ToolTip.delay: Qt.styleHints.mousePressAndHoldInterval
}
