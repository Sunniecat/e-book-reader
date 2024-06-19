import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Item{
    property alias stackView: _stackView


    StackView{
        id: _stackView
        anchors.fill: parent    //parent is Content

        initialItem: Bookcase{}
    }
    GridView
    {
        id:_gridView
        Layout.preferredWidth: parent.width
        Layout.preferredHeight: parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        anchors.fill: parent
        delegate: _imageDelegate
    }
    Component{
        Image {
            id: _imageDelegate
            source: "file"
        }
    }
    ListView
    {
        id:_listView
        Layout.preferredWidth: parent.width
        Layout.preferredHeight: parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        anchors.fill: parent
        delegate: _titleDelegate
    }
    Component{
        Text {
            id: _titleDelegate
            text: qsTr("text")
        }
    }
}


