<div class="main">
    <div class="row bg_gray">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        [[pdoCrumbs?
                        &showHome=`1`
                        &tplWrapper=`@INLINE
                        <ul class="breadcrumb mt-3">[[+output]]</ul>
                        `
                        &tpl=`@INLINE
                        <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                            <span itemprop="title">[[+menutitle]]</span></li>
                        `
                        &tplCurrent=`@INLINE
                        <li class="active" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                            <span itemprop="title">[[+menutitle]]</span></li>
                        `
                        ]]
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h1>[[*longtitle:ifempty=`[[*pagetitle]]`]]</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="catalog detail" itemscope itemtype="http://schema.org/Product">
        <div class="row bg_gray">
            <div class="container">
                <div class="col-md-12">
                    <div class="head">
                        <div class="row">
                            <div class="col-md-7 col-12">
                                <div class="galery">
                                    <div class="inner">
                                        [[!msGallery? &tpl=`productGallery`]]
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-12">
                                <div class="info"
                                        itemprop="offers"
                                        itemscope
                                        itemtype="http://schema.org/Offer">
                                    <div class="row1 foot big">
                                        <div class="item_f wprice">
                                            <div class="size_block">
                                                [[+size0]] м<sup>2</sup></div>
                                        </div>
                                        <div class="item_f ">
                                            <div class="price">
                                                <div class="price_new"><span class="price_val"><span
                                                                itemprop="price"
                                                                content="1 790 000 ">[[*price]]</span><span
                                                                class="currency"
                                                                itemprop="priceCurrency"
                                                                content="RUB">&#8381;</span></span></div>
                                                [[*old_price:notempty=`
                                                <div class="price_old">Цена без скидки:&nbsp;<span class="price_val">[[*old_price]]</span>`]]
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    [[*description:notempty=`
                                    <div class="previewtext" itemprop="description">[[*description]]</div>
                                    `]]
                                    <div class="more_block"><span class="smooth_scroll"
                                                data-scroll="content">Подробнее <i class="fas fa-angle-down main_color cur"></i></span>
                                    </div>
                                    <div class="order">
                                                    <span class="button button_dark cur"
                                                            data-event="fancy"
                                                            data-name="count"
                                                            data-product="[[*pagetitle]]">Заказать расчет стоимости</span>
                                        <span class="button button_white cur"
                                                data-event="fancy"
                                                data-name="feedback"
                                                data-product="[[*pagetitle]]">Задать вопрос</span>
                                    </div>
                                    <div class="share">
                                        <hr/>
                                        <span class="text">Поделиться ссылкой:</span>
                                        <script type="text/javascript"
                                                src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"
                                                charset="utf-8"></script>
                                        <script type="text/javascript"
                                                src="//yastatic.net/share2/share.js"
                                                charset="utf-8"
                                                async="async"></script>
                                        <div class="ya-share2"
                                                data-services="vkontakte,facebook,twitter,viber,whatsapp,odnoklassniki,moimir"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bx_item_detail_inc_two banners-small front">
                        <div class="items row_custom">
                            [[pdoResources?
                            &parents=`33`
                            &resources=`[[*manyIcons:default=`37,38,39,40`]]`
                            &showHidden=`1`
                            &showUnpublished=`1`
                            &includeTVs=`image`
                            &where=`{"image:!=":""}`
                            &tvPrefix=``
                            &includeContent=`1`
                            &tpl=`productAdvantagesTpl`
                            ]]
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row nomargin under_content">
        <div class="container">
            <div class="col-md-12">
                <div class="scroll_block"></div>
                <div class="content mt-4" itemprop="description">
                    <h4 class="title_block">Описание</h4>
                    <p>[[*introtext:notempty=`[[*introtext]]`]]</p>
                    [[*content]]
                    <hr class="big"/>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="wraps">
                            <h4 class="title_block">Характеристики</h4>
                            <div class="chars">
                                <div class="char-wrapp">
                                    <table class="props_table">
                                        [[getProductOptions?
                                        &tplInner=`productOptionsTpl`
                                        ]]
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="big"/>
                [[$contentForm?
                    &name=`count`
                    &title=`Заказать расчет стоимости`
                ]]
            </div>
        </div>
    </div>
</div>
