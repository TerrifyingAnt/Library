import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow{
    id: window
    width: 400
    height: 580
    visible: true
    title: qsTr("Main Page")

    // SET FLAGS
    flags: Qt.WindowCloseButtonHint | Qt.WindowMinimizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint

    // SET MATERIAL
    Material.theme: Material.Dark
    Material.accent: Material.LightPurple

    // CREATE TOP BAR
    Rectangle{
        id: topBar
        height: 40
        color: Material.color(Material.Purple)
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 10
        }
        radius: 10

        Text{
            text: qsTr("Мои книги")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 14  
        }

        // IMAGE IMPORT
        Image{
            id: image
            width: 300
            height: 120
            source: "../images/picture.jpg"
            anchors.top: topBar.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 60
        }

    }
}