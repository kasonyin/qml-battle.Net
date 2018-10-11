pragma Singleton
import QtQuick 2.11

/**
    @qmlType    AppTr
    @note       本类承载所有需要翻译的文本，方便提取翻译，以及统一文案风格
    @attention  对待翻译内容进行说明，请使用 qsTr() 函数的第二个参数
                有可能有复数形式的内容，请使用 qsTr() 函数的第三个参数
                请在开辟新的变量之前先看一下是否存在类似意思的文字，以保证不重复，以及风格一致
*/

QtObject {
    id: appTr

    readonly property string tr_电子邮箱: qsTr("电子邮箱")
    readonly property string tr_密码: qsTr("密码")
    readonly property string tr_登录: qsTr("登录")
}
