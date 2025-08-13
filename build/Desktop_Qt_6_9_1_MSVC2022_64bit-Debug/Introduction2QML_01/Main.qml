import QtQuick

Window {
    id: root

    width: 500
    height: 500
    visible: true
    title: qsTr("MyPage")

    Rectangle {
        id: rect
        x:  (root.width - this.width )/2
        y: (root.height - this.height )/2
        width: 100
        height: 100

        color: "#8c1aff"
    }


    Image {
        id: catImage
        source: "./Pictures/Screenshots/cat.png"
        anchors.centerIn: rect
        width: rect.width
        height: rect.height

        Text {
            text: "Hi This is me"
            font.pointSize: 40
            anchors.right: catImage
        }
    }
    onWidthChanged: console.log("Wight change to", width)


}
