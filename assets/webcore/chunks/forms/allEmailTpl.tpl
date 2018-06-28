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
    [[+color:notempty=`
    <tr>
        <td><b>Желаемый цвет пленки</b></td>
        <td>[[+color]]</td>
    </tr>
    `]]
    [[+volume:notempty=`
    <tr>
        <td><b>Примерный объем</b></td>
        <td>[[+volume]]</td>
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