import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {
    id: mainWindow
    visible: true
    height: 480
    width: 800
    color: "lavenderblush"
    Item{
        id: listPhones
        x: 0
        y: 60
        height: 300
        width: parent.width

        ListModel{
            id: listPhonesModel
            ListElement{
                ID: "11111111"
                Name: "myName"
                Checked: true
            }
            ListElement{
                ID: "22222222"
                Name: "myName"
                Checked: true
            }
            ListElement{
                ID: "33333333"
                Name: "myName"
                Checked: true
            }
        }

        ListView{
            id: listPhonesView
            anchors.fill: parent
            model: listPhonesModel
            spacing: 50
            focus: true

            delegate: Item{
                Rectangle{
                    id: phoneNameRec
                    height: 60
                    width: 700
                    x:40
                    anchors.horizontalCenter: mainWindow.horizontalCenter
                    color: "lavender"
                    border.color: "black"
                    border.width: 2
                    Text{
                        text: ID
                        anchors.centerIn: phoneNameRec
                    }
                }
            }

        }
    }

//    Item{
//        id: listPhones
//        ListModel{
//            id: listPhonesModel
//            ListElement{
//                Name: "Phone name" + index
//            }
//            ListElement{
//                Name: "Phone name" + index

//            }
//            ListElement{
//                Name: "Phone name" + index

//            }
//        }

//        ListView{
//            id: listPhonesView
//            horizontalCenter: parent.horizontalCenter
//            model: listPhones

//            delegate: Item{
//                Rectangle{
//                    height: 60
//                    width: 700
//                    border.color: "black"
//                    border.width: 1
//                    Text {
//                        id: name
//                        text: Name
//                    }
//                }
//                Rectangle{
//                    height: 40
//                    width: 40
//                }
//            }
//        }
//    }


}
