//Bookcase是书城

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Bookcase"

    header: ToolBar
    {
        RowLayout{
            ToolButton{ action: actions.gird }  //网格
            ToolButton{ action: actions.list }  //列表
            ToolButton{ action: actions.set }  //列表
            ToolButton{ action: actions.about }
            ToolButton{ action: actions.quit }
        }
        Label{
            text: content.stackView.currentItem.title
            anchors.centerIn: parent
            font.pixelSize: 18
            font.italic: true
        }
}
    Column{
        spacing: 10
        anchors.centerIn: parent  //parent is stackView
        Button {
            text: "Reading"
            onClicked: stackView.push("Reading.qml")
        }
    }
}
