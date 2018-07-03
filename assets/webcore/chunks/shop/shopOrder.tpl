<form class="form-horizontal ms2_form" id="msOrder" method="post">
    <div class="row">
        <div class="col-lg-6">
            <h4>{'ms2_frontend_credentials' | lexicon}:</h4>
            {foreach ['email','receiver','phone'] as $field}
                <div class="form-group input-parent">
                    <label class="col-md-4 control-label" for="{$field}">
                        <span class="required-star">*</span> {('ms2_frontend_' ~ $field) | lexicon}
                    </label>
                    <div class="col-sm-6">
                        <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                                name="{$field}" value="{$form[$field]}"
                                class="form-control{($field in list $errors) ? ' error' : ''}">
                    </div>
                </div>
            {/foreach}
            <div class="form-group input-parent">
                <label class="col-md-4 control-label" for="comment">
                    <span class="required-star">*</span> {'ms2_frontend_comment' | lexicon}</label>
                <div class="col-sm-6">
                    <textarea name="comment" id="comment" placeholder="{'ms2_frontend_comment' | lexicon}"
                            class="form-control{('comment' in list $errors) ? ' error' : ''}">{$form.comment}</textarea>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <h4>{'ms2_frontend_address' | lexicon}:</h4>
            {foreach ['index','region','city'] as $field}
                <div class="form-group input-parent">
                    <label class="col-md-4 control-label" for="{$field}">
                        <span class="required-star">*</span> {('ms2_frontend_' ~ $field) | lexicon}
                    </label>
                    <div class="col-sm-6">
                        <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                                name="{$field}" value="{$form[$field]}"
                                class="form-control{($field in list $errors) ? ' error' : ''}">
                    </div>
                </div>
            {/foreach}
            {foreach ['street','building','room'] as $field}
                <div class="form-group input-parent">
                    <label class="col-md-4 control-label" for="{$field}">
                        <span class="required-star">*</span> {('ms2_frontend_' ~ $field) | lexicon}
                    </label>
                    <div class="col-sm-6">
                        <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                                name="{$field}" value="{$form[$field]}"
                                class="form-control{($field in list $errors) ? ' error' : ''}">
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
    <div class="row hidden">
        <div class="col-lg-6" id="deliveries">
            <input type="radio" name="delivery" value="1" id="delivery_1" data-payments="[1]" checked="" disabled>
        </div>
        <div class="col-lg-6" id="payments">
            <input type="radio" name="payment" value="1" id="payment_1" checked="" disabled>
        </div>
    </div>
    <button type="button" name="ms2_action" value="order/clean" class="button button_white ms2_link">
        <i class="fa fa-remove"></i> {'ms2_frontend_order_cancel' | lexicon}
    </button>
    <hr/>
    <div class="well pull-right">
        <div>
            <h3>{'ms2_frontend_order_cost' | lexicon}:
                <span id="ms2_order_cost">{$order.cost ?: 0}</span>
                {'ms2_frontend_currency' | lexicon}
            </h3>
            <button type="submit" name="ms2_action" value="order/submit" class="button button_dark ms2_link pull-right">
                {'ms2_frontend_order_submit' | lexicon}
            </button>
        </div>
    </div>
</form>