<img src="[[++site_url]][[++assets_url]]template/img/logo.jpg">
<hr/>
<p>Здравствуйте!</p>
<p>Пользователь [[+name:notempty=`[[+name]]`]] оставил запрос на сайте &laquo;[[++site_name]]&raquo;. Форма: [[+emailSubject]]</p>
<p>Данные формы:</p>
<table width="400px">
    [[+name:notempty=`
    <tr>
        <td><b>Имя</b></td>
        <td>[[+name]]</td>
    </tr>
    `]]
    [[+phone:notempty=`
    <tr>
        <td><b>Телефон</b></td>
        <td>[[+phone]]</td>
    </tr>
    `]]
    [[+email:notempty=`
    <tr>
        <td><b>Email </b></td>
        <td>[[+email]]</td>
    </tr>
    [[+flat:notempty=`
    <tr>
        <td><b>Этажность дома</b></td>
        <td>[[+flat]]</td>
    </tr>
    `]]
    [[+square:notempty=`
    <tr>
        <td><b>Общая площадь (по всем этажам)</b></td>
        <td>[[+square]]</td>
    </tr>
    `]]
    [[+edition:notempty=`
    <tr>
        <td><b>Варианты строительства</b></td>
        <td>[[+edition]]</td>
    </tr>
    `]]
    [[+material:notempty=`
    <tr>
        <td><b>Материал стен дома</b></td>
        <td>[[+material]]</td>
    </tr>
    `]]
    `]]
    [[+message:notempty=`
    <tr>
        <td><b>Сообщение</b></td>
        <td>[[+message]]</td>
    </tr>
    `]]
</table>