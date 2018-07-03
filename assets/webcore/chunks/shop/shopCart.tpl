<div id="msCart">
    {if !count($products)}
        {'ms2_cart_is_empty' | lexicon}
    {else}
        <div class="table">
            <div class="table table-striped">
                <div class="headerCart row hidden-xs">
                    <div class="image col-md-2 col-lg-2">&nbsp;</div>
                    <div class="title col-md-3 col-lg-3">{'ms2_cart_title' | lexicon}</div>
                    <div class="count col-md-3 col-lg-3">{'ms2_cart_count' | lexicon}</div>
                    <div class="price col-md-3 col-lg-3">{'ms2_cart_price' | lexicon}</div>
                    <div class="remove col-sm-1 col-md-1">{'ms2_cart_remove' | lexicon}</div>
                </div>

                {foreach $products as $product}
                    <div id="{$product.key}" class="prod row">
                        <div class="image col-12 col-md-2 col-lg-2">
                            {if $product.thumb?}
                                <img src="{$product.thumb}" alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                            {else}
                                <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                        srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                        alt="{$product.pagetitle}" title="{$product.pagetitle}"/>
                            {/if}
                        </div>
                        <div class="title col-12 col-md-3 col-lg-3">
                            {if $product.id?}
                                <a href="{$product.id | url}">{$product.pagetitle}</a>
                            {else}
                                {$product.name}
                            {/if}
                            {if $product.options?}
                                <div class="small">
                                    {$product.options | join : '; '}
                                </div>
                            {/if}
                        </div>
                        <div class="count col-12 col-md-3 col-lg-3">
                            <form method="post" class="ms2_form" role="form">
                                <input type="hidden" name="key" value="{$product.key}"/>
                                <div class="form-group">
                                    <input type="number" name="count" value="{$product.count}"
                                            class="input-sm form-control"/>
                                    <span class="hidden-xs">{'ms2_frontend_count_unit' | lexicon}</span>
                                    <button class="btn btn-default" type="submit" name="ms2_action" value="cart/change">
                                        <i class="glyphicon glyphicon-refresh"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="price col-12 col-md-3 col-lg-3">
                            <span class="col-sm-12 row">{$product.price} {'ms2_frontend_currency' | lexicon}</span>
                            {if $product.old_price?}
                                <span class="col-sm-12 old_price row">{$product.old_price} {'ms2_frontend_currency' | lexicon}</span>
                            {/if}
                        </div>
                        <div class="remove col-12 col-md-1 col-lg-1">
                            <form method="post" class="ms2_form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <button class="btn btn-default" type="submit" name="ms2_action" value="cart/remove">
                                    <i class="fa fa-remove"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                {/foreach}

                <div class="footerCart row">
                    <div class="total_cost col-lg-3 pull-right text-right">
                        <span class="ms2_total_cost">{$total.cost}</span>
                        {'ms2_frontend_currency' | lexicon}
                    </div>
                    <div class="total_count col-lg-3 pull-right text-right">
                        <span class="ms2_total_count">{$total.count}</span>
                        {'ms2_frontend_count_unit' | lexicon}
                    </div>
                    <div class="total col-lg-2 pull-right text-right">{'ms2_cart_total' | lexicon}:</div>
                </div>
            </div>
        </div>
        <form method="post">
            <button class="btn btn-default" type="submit" name="ms2_action" value="cart/clean">
                <i class="fa fa-remove"></i> {'ms2_cart_clean' | lexicon}
            </button>
            <a href="/cart/order" class="button button_dark p-3">Оформить заказ</a>
        </form>
    {/if}
</div>