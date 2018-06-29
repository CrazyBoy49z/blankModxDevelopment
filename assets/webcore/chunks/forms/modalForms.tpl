[[!FormIt?
&emailTpl=`allEmailTpl`
&hooks=`recaptchav2,email`
&emailSubject=`Обратный звонок`
&emailFromName=`[[++site_name]]`
&emailTo=`[[++formit.user_email]]`
&emailFrom=`[[++emailsender]]`
&validate=`name:required,phone:required,text:blank,g-recaptcha-response:required`
&validationErrorMessage=`В форме содержатся ошибки!`
&successMessage=`<script>(function($){$(document).on('ready',function(){$.jGrowl("<b>Спасибо за заявку.</b><br>Наш менеджер свяжется с вами в ближайшее время.", {theme:'ms2-message-success'});});})(jQuery)</script>`
&successMessagePlaceholder=`SucMs`
&placeholderPrefix=`callback.`
&submitVar=`callback_send`
]]
[[!FormIt?
&emailTpl=`allEmailTpl`
&hooks=`recaptchav2,email`
&emailSubject=`Заказать установку тонировочной пленки`
&emailFromName=`[[++site_name]]`
&emailTo=`[[++formit.user_email]]`
&emailFrom=`[[++emailsender]]`
&validate=`name:required,email:email:required,text:blank,g-recaptcha-response:required`
&validationErrorMessage=`В форме содержатся ошибки!`
&successMessage=`<script>(function($){$(document).on('ready',function(){$.jGrowl("<b>Спасибо за заявку.</b><br>Наш менеджер свяжется с вами в ближайшее время.", {theme:'ms2-message-success'});});})(jQuery)</script>`
&successMessagePlaceholder=`SucMs`
&placeholderPrefix=`feedback.`
&submitVar=`feedback_send`
]]
[[!FormIt?
&emailTpl=`allEmailTpl`
&hooks=`recaptchav2,email`
&emailSubject=`Рассчитать стоимость`
&emailFromName=`[[++site_name]]`
&emailTo=`[[++formit.user_email]]`
&emailFrom=`[[++emailsender]]`
&validate=`name:required,email:email:required,text:blank,g-recaptcha-response:required`
&validationErrorMessage=`В форме содержатся ошибки!`
&successMessage=`<script>(function($){$(document).on('ready',function(){$.jGrowl("<b>Спасибо за заявку.</b><br>Наш менеджер свяжется с вами в ближайшее время.", {theme:'ms2-message-success'});});})(jQuery)</script>`
&successMessagePlaceholder=`SucMs`
&placeholderPrefix=`count.`
&submitVar=`count_send`
]]

<div class="spy">
    <form id="feedback" class="compensate-for-scrollbar d-inline-block">
        <div class="form_header bg_main_color tac p-3">
            <div class="form_header_text white">Задать вопрос</div>
            <div class="white">Менеджеры компании с радостью ответят на ваши вопросы.</div>
        </div>
        <div class="form_wrap p-4">
            <div class="form-group">
                <p>Ваше имя:</p>
                <input type="text" name="name" class="form-control" value="[[!+feedback.name]]">
            </div>
            <div class="form-group">
                <p>Телефон:</p>
                <input type="text"
                        name="phone"
                        [[!+feedback.phone]]
                        class="form-control">
            </div>
            <div class="form-group">
                <p>Email:</p>
                <input type="email"
                        name="email"
                        class="form-control"
                        value="[[!+feedback.email]]">
            </div>
            <div class="form-group spy">
                <p>Email address:</p>
                <input type="text" name="text" class="form-control" value="[[!+feedback.text]]">
            </div>
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="tintCheckbox" required>
                <label class="custom-control-label" for="tintCheckbox">
                    <a href="[[~65]]" rel="nofollow" target="_blank">Я согласен с политикой конфиденциальности</a>
                </label>
            </div>
            <div class="form-group">
                <div class="form_m">
                    <div id="feedback_g"></div>
                </div>
            </div>
            <button type="submit" name="tint_send" class="button button_dark mt-3">Заказать</button>
        </div>
    </form>
    <form id="callback" class="compensate-for-scrollbar d-inline-block">
        <div class="form_header bg_main_color tac p-3">
            <div class="form_header_text white">Обратный звонок</div>
            <div class="white">Представьтесь, мы вам перезвоним</div>
        </div>
        <div class="form_wrap p-4">
            <div class="form-group">
                <p>Ваше имя:</p>
                <input type="text" class="form-control" name="name" value="[[!+callback.name]]">
            </div>
            <div class="form-group">
                <p>Телефон:</p>
                <input type="text"
                        class="form-control"
                        name="phone"
                        value="[[!+callback.phone]]"
                        required>
            </div>
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="callbackCheckbox" required>
                <label class="custom-control-label" for="callbackCheckbox">
                    <a href="[[~65]]" rel="nofollow" target="_blank">Я согласен с политикой конфиденциальности</a>
                </label>
            </div>
            <div class="form-group">
                <div class="form_m">
                    <div id="callback_g"></div>
                </div>
            </div>
            <button type="submit" name="callback_send" class="button button_dark mt-3">Заказать</button>
        </div>
    </form>
    <form class="compensate-for-scrollbar" id="count">
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <p>Ваше имя:</p>
                <input type="text" name="name" value="[[!+count.name]]" class="form-control" required>
            </div>
            <div class="form-group col-md-4 ml-md-3">
                <p>Желательный цвет пленки:</p>
                <input type="text" name="color" class="form-control" value="[[!+count.color]]" placeholder="Серебро">
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <p>Телефон:</p>
                <input type="text" name="phone" value="[[!+count.phone]]" class="form-control">
            </div>
            <div class="form-group col-md-4 ml-md-3">
                <label>Примерный объем:</label>
                <input type="text" name="volume" class="form-control" value="[[!+count.volume]]" placeholder="200 м3">
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <label>Email:</label>
                <input type="email" name="email" required value="[[!+count.email]]" class="form-control">
            </div>
            <div class="form-group col-md-4 ml-md-3">
                <label>Ваш комментарий:</label>
                <textarea name="message"
                        cols="30"
                        rows="3"
                        class="form-control"
                        placeholder="your message">[[!+count.message]]</textarea>
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <div class="custom-control custom-checkbox  col col-md-9">
                    <input type="checkbox" class="custom-control-input" id="countCheck" required>
                    <label class="custom-control-label" for="countCheck">
                        <a href="[[~65]]"
                                rel="nofollow"
                                target="_blank">Я согласен с политикой конфиденциальности</a>
                    </label>
                </div>
            </div>
            <div class="form-group col-md-4 ml-md-3">
                <div class="form_m">
                    <div id="count_g"></div>
                </div>
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-4">
                <img src="/assets/template/img/roulette.png" alt="" class="img-responsive mt-3">
            </div>
            <div class="form-group col-md-4 ml-md-3">
                <button type="submit" name="count_send" class="button button-links mt-3">Заказать</button>
            </div>
        </div>
    </form>
</div>
[[+SucMs]]