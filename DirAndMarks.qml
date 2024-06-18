//DirAndMarks是目录标签页

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "directory and marks"
    header: ToolBar {
        RowLayout {
            ToolButton{ action: actions.dir }  //书的目录
            ToolButton{ action: actions.marks }  //书的标签
        }
        Label{
            text: content.stackView.currentItem.title
            anchors.centerIn: parent
            font.pixelSize: 18
            font.italic: true
        }
    }

    footer: ToolBar {
        RowLayout {
            ToolButton{ action: actions.back }   //返回
        }
    }

}
