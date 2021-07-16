import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.0
import QtGraphicalEffects 1.12
import QtQuick.Controls.Material 2.12



ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tabs")
    id: mainWindow



    Drawer {
        id: drawer
        width: Math.min(mainWindow.width, mainWindow.height) / 3 * 2
        height: mainWindow.height
//        dragMargin: stackView.depth > 1 ? 0 : undefined
GridLayout{
    anchors.fill: drawer

    Image{
        id: mainimg
        Layout.row: 0
        Layout.column: 0
        sourceSize.width: 100
               sourceSize.height: 100
        source: "avatar.jpg"
         Layout.margins: 5
        Layout.alignment: Qt.AlignCenter



    }
    Label{
    text: "login"
    id: mylog
    Layout.row: 0
    Layout.column: 1
    Layout.margins: 5
    Layout.alignment: Qt.AlignCenter

    }



    Button{
        Layout.margins: 5
    Layout.row: 1
    Layout.column: 0
    Layout.columnSpan: 2
    text: "Публикации"
    onClicked: {
        swipeView.currentIndex = 0
        drawer.close()
    }

    }

    Button{
        Layout.margins: 5
    Layout.row: 2
    Layout.column: 0
    Layout.columnSpan: 2
    text: "Профиль"
    onClicked: {
        swipeView.currentIndex = 1
        drawer.close()
    }

    }

    Button{
        id:b1
        Layout.margins: 5
    Layout.row: 3
    Layout.column: 0
    Layout.columnSpan: 2

    text: "О программе"
    onClicked: {
        swipeView.currentIndex = 2
        drawer.close()
    }

    }


                }




            ScrollIndicator.vertical: ScrollIndicator { }
        }


//    footer: TabBar {
//        id: tabBar
//        currentIndex: swipeView.currentIndex

//        TabButton {
//            text: qsTr("Лента")
//        }
//        TabButton {
//            text: qsTr("Профиль")
//        }

//        TabButton {
//            text: qsTr("О приложении")
//        }
//    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: listView.currentIndex

        Page1Form {
        }

        Page2Form {
        }
        Page3Form {
        }
    }


}

