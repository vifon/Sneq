import QtQuick 2.0

Rectangle {
    objectName: "snake"

    property var velocity: [1, 0] // [x,y]; default: right

    property int size: parent.fieldSize
    property int x_pos: 0
    property int y_pos: 0

    x: size * x_pos
    y: size * y_pos

    radius: width
    width: size
    height: width

    color: "lightgreen"

    Behavior on x {
        NumberAnimation {
            duration: parent.stepInterval
            easing.type: Easing.OutQuint
        }
    }
    Behavior on y {
        NumberAnimation {
            duration: parent.stepInterval
            easing.type: Easing.OutQuint
        }
    }
}

