import QtQuick 2.0

Rectangle {
    id : materialTab
    color : "transparent"
    property string dirPath : ""
    property string roughnessPathStr : ""
    property string metallicPathStr : ""

    Rectangle {
        x : 0
        y : 60
        Column {
            spacing: 20

            FileLoader {
                id : roguhnessLoader
                name : "Roughness"
                title : "Please choose a texture file"
                folder: "file://" + materialTab.dirPath
                nameFilters: "PNG files (*.png)"
                maxStrSize : 37
                nameWidth : 60
                nameHeight : 20
                dispWidth : 190
                dispHeight : 20
                showNameOnly : true
                onPathStrChanged: {
                    roughnessPathStr = pathStr
                }
            }
            Rectangle {
                x : 85
                y : 0
                width : 128
                height : 128
                color: gWhite1
                border.color: gWhite2
                border.width: 2
                Image {
                    anchors.fill: parent
                    source : roughnessPathStr.length > 0 ? "file://" + roughnessPathStr : ""
                }
            }


            FileLoader {
                id : metallicLoader
                name : "Metaliic"
                title : "Please choose a texture file"
                folder: "file://" + materialTab.dirPath
                nameFilters: "PNG files (*.png)"
                maxStrSize : 37
                nameWidth : 60
                nameHeight : 20
                dispWidth: 190
                dispHeight: 20
                showNameOnly : true
                onPathStrChanged: {
                    metallicPathStr = pathStr
                }
            }
            Rectangle {
                x : 85
                y : 0
                width : 128
                height : 128
                color: gWhite1
                border.color: gWhite2
                border.width: 2
                Image {
                    anchors.fill: parent
                    source : metallicPathStr.length > 0 ? "file://" + metallicPathStr : ""
                }
            }
        }
    }
}
