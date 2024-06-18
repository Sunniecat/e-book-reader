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

}


