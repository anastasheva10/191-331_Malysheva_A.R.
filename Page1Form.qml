import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3
import QtMultimedia 5.12
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0


Page {

    visible: true
    id: page1Form
    header : Rectangle {
    id: header
    color: "#1e1e1e"
    height: 60


    Label {

        color: "white"
       text: "Публикации"
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.styleName: "Полужирный Курсив"
       font.weight: Font.Medium
       font.pointSize: 16
       font.family: "Times New Roman"
       //leftPadding: avatar.indicator.width + avatar.spacing

    }

    Image {
      id:publ
      source:"publ.png"
      width: 50
      height: 50
      anchors.top:header.top
      anchors.topMargin: 2.5
      anchors.right: header.right
      anchors.rightMargin: 10
    }



    RoundButton {
        id: list_button
        anchors.left: header.left
        anchors.verticalCenter: header.verticalCenter

        Image {
            width: 45
            height: 45
            source:  "list.png"

        }
        ColorOverlay { //цвет для картинки
            anchors.fill: list_button // на весь слайдер
            source: list_button//источник
            color: "white"
        }
        flat: true
        onClicked: {
            drawer.open()

        }
    }

}

}
