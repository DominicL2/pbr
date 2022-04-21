import QtQuick 2.0

Column {
    spacing : 10

    function getValue() {
        return Qt.vector3d(parseFloat(modelAxis_x.getText()), parseFloat(modelAxis_y.getText()), parseFloat(modelAxis_z.getText()));
    }

    function setValue(_x, _y, _z) {
        modelAxis_x.setText(_x)
        modelAxis_y.setText(_y)
        modelAxis_z.setText(_z)
    }

    Rectangle {
        width : 150
        height : 20
        color: "transparent"
        Text {
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            text: "Model Rotation"
            font.pixelSize: 16
            color : gBlack1
            font.family: sfPro.name
            font.bold: true
        }
    }
    Row {
        spacing : 20
        VectorEditor {
            id : modelAxis_x
            name : "x"
        }
        VectorEditor {
            id : modelAxis_y
            name : "y"
        }
        VectorEditor {
            id : modelAxis_z
            name : "z"
        }
    }
}
