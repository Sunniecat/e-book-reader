//Reading是阅读界面

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Reading"

    header: ToolBar{
        RowLayout{
            ToolButton{ action: actions.dirmarks }  //进入目录标签页
            ToolButton{ action: actions.font }  //关于字体的设置
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
        RowLayout {
            anchors.centerIn: parent
            ToolButton{ action: actions.lastpage }   //上一页
            ToolButton{ action: actions.nextpage }   //下一页
        }
    }


}
