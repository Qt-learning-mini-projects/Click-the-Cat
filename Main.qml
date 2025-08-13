import QtQuick

Window {
    id: root

    width: 500
    height: 500
    visible: true
    title: qsTr("MyPage")

    property bool isClicked: true

    component CatButton: Rectangle {
        signal activated(xPos:real, yPos:real)
        signal deactivated


        id: cb
        property int side: 50
        width: side; height: side
        color: "#8c1aff"

        MouseArea{
            anchors.fill: parent

            onReleased: cb.deactivated()

            onPressed: (mouse) => {
                           cb.activated(mouse.x, mouse.y);
                           rect.x = Math.random() * (root.width - rect.width)
                           rect.y = Math.random() * (root.height - rect.height)

            }
        }

    }

    CatButton {
        id: rect
        x:  (root.width - this.width )/2
        y: (root.height - this.height )/2
        width: 50
        height: 50
        color: isClicked ? "#8c1aff" : "#7c0aef"

        onDeactivated: console.log("nya!")

        onActivated: (xPos, yPos) =>
                     speetch.text = ("Ima leaving: " + xPos + " " + yPos)
    }



    Image {
        id: catImage
        source: "./Pictures/Screenshots/cat.png"
        anchors.fill: rect
        visible: isClicked



    }

    Text {
        id: speetch
        text: "Hi This is me"
        font.pointSize: 20
        wrapMode: Text.WordWrap
        width: root.width

    }
    onWidthChanged: console.log("Wight change to", width)

}
