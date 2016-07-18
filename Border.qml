import QtQuick 2.0
Rectangle
{

    property bool commonBorder : true

    property int lBorderwidth : 1
    property int rBorderwidth : 1
    property int tBorderwidth : 1
    property int bBorderwidth : 1

    property int commonBorderWidth : 1

    z : -1

    property string borderColor : "white"
    property string secColor: ""
    property int secWidth: 0
    color: borderColor
    border.color: secColor
    border.width: secWidth
    anchors
    {
        left: parent.left
        right: parent.right
        top: parent.top
        bottom: parent.bottom

        topMargin    : commonBorder ? -commonBorderWidth : -tBorderwidth
        bottomMargin : commonBorder ? -commonBorderWidth : -bBorderwidth
        leftMargin   : commonBorder ? -commonBorderWidth : -lBorderwidth
        rightMargin  : commonBorder ? -commonBorderWidth : -rBorderwidth
    }
}
