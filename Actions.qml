import QtQuick
import QtQuick.Controls

Item {

    //共用
     property alias back: _back

    //Bookcase
    property alias gird: _gird
    property alias list: _list
    property alias set: _set
    property alias about: _about
    property alias quit: _quit

    //Reading
    property alias dirmarks: _dirmarks
    property alias font: _font
    property alias lastpage: _lastpage
    property alias nextpage: _nextpage

    //DirAndMarks
    property alias dir: _dir
    property alias marks: _marks

    //共用
    Action {
        id: _back
        text: qsTr("&Back")
        icon.name: "go-next-rtl-symbolic"
        shortcut: "Ctrl + b"
        onTriggered: {
            if(content.stackView.depth>1)
            {
                content.stackView.pop()
            }
        }
    }

    //Bookcase
    Action {
        id: _gird
        text: qsTr("&Gird")
        icon.name: "view-list-icons"
        shortcut: "Ctrl + g"
        onTriggered: console.log("Gird action triggered");
    }

    Action {
        id: _list
        text: qsTr("&List")
        icon.name: "view-list-text-symbolic"
        shortcut: "Ctrl + l"
    }

    Action {
        id:_set//全局设置
        text: qsTr("&Setting")
        icon.name: "settings-configure"
    }
    Action {
        id:_about
        text: qsTr("&About")
        icon.name: "help-about-symbolic"
    }
    Action {
        id: _quit
        text: qsTr("&Quit")
        icon.name: "application-exit"
        shortcut: "Ctrl + q"
        onTriggered: Qt.quit();
    }

    //Reading
    Action {
        id: _dirmarks    //用于进入目录标签界面
        text: qsTr("Dir&Marks")
        icon.name: "emblem-favorite"
        shortcut:"Ctrl + m"
        onTriggered: content.stackView.push("DirAndMarks.qml")
    }

    Action {
        id: _font
        icon.name: "font-x-generic"
        shortcut:"Ctrl + f"
    }
    Action {
        id: _lastpage
        icon.name: "go-next-rtl-symbolic"
        shortcut:"Ctrl + l"
    }
    Action {
        id: _nextpage
        icon.name: "go-previous-rtl-symbolic"
        shortcut:"Ctrl + l"
    }

    //DirAndMarks
    Action {
        id: _dir
        text: qsTr("Contents")
    }
    Action {
        id: _marks
        text: qsTr("BookMarks")
    }
}
