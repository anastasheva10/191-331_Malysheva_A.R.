import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.3
import QtMultimedia 5.12
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0



Page {
    id: page3Form
    visible: true
    header : Rectangle {
    id: header
    color: "#1e1e1e"
    height: 60


    Label {

        color: "white"
       text: "О программе"
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
        color: "white"
        anchors.topMargin: 0
        anchors.fill: parent

        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
    }


GridLayout{

    anchors.topMargin: 17
    anchors.fill: parent
    anchors.rightMargin: 0
    //anchors.bottomMargin: 311
    anchors.leftMargin: 0

    Text {
    id: descript
    text: "“Рабочий макет мобильного клиента блога”"

    anchors.horizontalCenter: parent.horizontalCenter
    font.pixelSize: 30
    anchors.top: parent.top


    }




    Text {
        id: exam
        anchors.top: descript.bottom
        text: "Экзаменационное задание по дисциплине:"
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 20
    }

    Text {
        id: exam1
        text: "Разработка безопасных мобильных приложений."
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: exam.bottom
        font.pixelSize: 15
        anchors.topMargin: 10

    }


    Text{

        id: lablel1
        text: "Автор:anastasheva10@yandex.ru"

        anchors.top: exam1.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.topMargin: 10
    }

    Text{

        id: lablel2
        text: "GIT репозиторий: "
        //anchors.left: parent.left
        anchors.top: lablel1.bottom
        //anchors.leftMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10
    }

    Label{

        id: lablel3
        onLinkActivated: Qt.openUrlExternally("https://github.com/anastasheva10/191-331_Malysheva_A.R.")
        text: "<a href='https://github.com/anastasheva10/191-331_Malysheva_A.R.' >  https://github.com/anastasheva10/191-331_Malysheva_A.R.</a>"
        //anchors.left: parent.left
        anchors.top: lablel2.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.leftMargin: 15
        anchors.topMargin: 10


    }



}
Image
{
    id: polytech_label
    height: 100
    width: parent.width
    anchors.top: lablel3.bottom
    anchors.bottom: parent.bottom
    source: "logo.png"
fillMode: Image.PreserveAspectFit


}






    }

