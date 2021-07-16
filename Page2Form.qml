import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.0
import QtMultimedia 5.12
import QtQuick.Dialogs 1.2

Page {
    id: page2Form


    header : Rectangle {
    id: header
    color: "#1e1e1e"
    height: 60


    Label {

        color: "white"
       text: "Профиль"
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.styleName: "Полужирный Курсив"
       font.weight: Font.Medium
       font.pointSize: 16
       font.family: "Times New Roman"
       //leftPadding: avatar.indicator.width + avatar.spacing

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


    RoundButton {
        id: list_button1
        anchors.right: header.right
        anchors.verticalCenter: header.verticalCenter

        Image {
            width: 45
            height: 45
            source: "back.png"

        }
        ColorOverlay { //цвет для картинки
            anchors.fill: list_button1 // на весь слайдер
            source: list_button1//источник
            color: "white"
        }
        flat: true
        onClicked: {
                           swipeView.currentIndex = 0
                        }
    }

}



    Rectangle {
        id: rectangle11
        color: "#B0C4DE"
        anchors.topMargin: 0
        anchors.fill: parent

        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
    }


    GridLayout{

        id: grid2
        anchors.fill: parent
        anchors.margins: 50

        Image{
            MouseArea {
            anchors.fill: parent
            Layout.fillWidth: true
            onClicked: fileDialog.open()

                        FileDialog {
                            id: fileDialog
//

                        }
            }
            id: img
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: if (fileDialog.fileUrl == 0) "avatar.jpg"; else fileDialog.fileUrl
//                  Layout.margins: 5
            Layout.alignment: Qt.AlignCenter
            fillMode: Image.PreserveAspectFit //равномерное масштабирование изображения, чтобы соответствовать без обрезки





        }


        Label{
            Layout.row: 1
            Layout.column: 0
            text: "Задайте логин"
            font.pointSize: 14
            font.family: "Times New Roman"
            color:"#0000FF"
            Layout.alignment: Qt.AlignCenter
        }

        TextField{
            id: inputlogin
            Layout.row: 1
            color: "#0000FF"
            Layout.column: 1
            Layout.alignment: Qt.AlignCenter
        }

        Button{
          id: enterlog
          text: "задать"
          Layout.row: 2
          Layout.column: 0
          Layout.columnSpan: 2

          Layout.alignment: Qt.AlignCenter
          onClicked: {
                        mylog.text = inputlogin.text
                        mainimg.source = img.source

                    }
        }


    }





}
