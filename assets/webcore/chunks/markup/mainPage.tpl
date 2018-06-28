<div class="main_slider">
    [[pdoResources?
    &parents=`28`
    &showHidden=`1`
    &showUnpublished=`1`
    &includeTVs=`image,dopImage,dopField,dopUrl,meta_title,meta_description`
    &tvPrefix=``
    &includeContent=`1`
    &tpl=`sliderTpl`
    ]]
</div>
<div class="row bg_gray">
    <div class="container">
        <div class="col-md-12">
            <div class="item-views sections teasers front">
                <div class="items row">
                    [[pdoResources?
                    &parents=`32`
                    &showHidden=`1`
                    &showUnpublished=`1`
                    &includeTVs=`image`
                    &where=`{"image:!=":""}`
                    &tvPrefix=``
                    &includeContent=`1`
                    &tpl=`pictTpl`
                    ]]
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="item-views catalog sections front">
                <div class="items row">
                    [[pdoResources?
                    &parents=`6`
                    &includeTVs=`image`
                    &tvPrefix=``
                    &where=`{"class_key":"msCategory","parent":"6"}`
                    &sortby=`{"menuindex":"ASC"}`
                    &where=`{"image:!=":""}`
                    &tpl=`categoryMainTpl`
                    ]]
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="row_custom">
                <div class="maxwidth-theme">
                    <div class="col-md-12_custom">
                        <div class="banners-small front">
                            <div class="items row_custom">
                                [[pdoResources?
                                &parents=`33`
                                &showHidden=`1`
                                &showUnpublished=`1`
                                &includeTVs=`image`
                                &where=`{"image:!=":""}`
                                &tvPrefix=``
                                &includeContent=`1`
                                &tpl=`advTpl`
                                ]]
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row bg_gray">
    <div class="container">
        <div class="col-md-12">
            <div class="catalog item-views table front">
                <div class="top_wrapper_block nomargin_bottom">
                    <h3 class="title_block">Проекты домов</h3>
                    <div class="custom_arrows float-right ml-3">
                        <div class="custom_arrows-left mr-1 cur"><i class="fas fa-angle-left"></i></div>
                        <div class="custom_arrows-right cur"><i class="fas fa-angle-right"></i></div>
                    </div>
                    <a href="/catalog/" class="button button_white float-right"><span>Все проекты</span></a>
                    <div class="row main_carousel">
                        [[msProducts?
                        &parents=`6`
                        &limit=`8`
                        &includeThumbs=`middle`
                        &includeTVs=`direction,numFloor`
                        &tvPrefix=``
                        &tpl=`mainProductsTpl`
                        ]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="container">
        <div class="col-md-12">
            <div class="news front">
                <div class="top_wrapper_block">
                    <a href="[[~48]]" class="button button_white float-right"><span>Все новости</span></a>
                    <h3 class="title_block">Новости</h3>
                    <h3 class="title_block short">Новости</h3>
                    <div class="items row">
                        [[pdoResources?
                        &parents=`48`
                        &showHidden=`1`
                        &includeTVs=`image`
                        &where=`{"image:!=":""}`
                        &tvPrefix=``
                        &sortby=`{"publishedon":"DESC"}`
                        &tpl=`mainNewsTpl`
                        ]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row bg_gray">
    <div class="container">
        <div class="col-md-12">
            <div class="item-views portfolio front">
                <div class="top_wrapper_block">
                    <div class="row" itemscope="" itemtype="http://schema.org/ItemList">
                        <div class="col-md-3 col-6 link">
                            <div class="item">
                                <div class="top_title">
                                    <div>Недавние объекты</div>
                                </div>
                                <div class="bottom_title">
                                    <div><a href="[[~43]]" class="btn btn-default white"><span>Все работы</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        [[pdoResources?
                        &parents=`43`
                        &includeTVs=`image`
                        &tvPrefix=``
                        &where=`{"image:!=":""}`
                        &tpl=`mainProjectsTpl`
                        ]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
[[$mainAboutCompany]]
<div class="row bg_main_color">
        <div class="maxwidth-theme">
            <div class="col-md-12">
                <div class="block front">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                    <div class="col-md-3">
                                        <h2>Нужна консультация?</h2>
                                    </div>
                                    <div class="col-md-7">
                                        Подробно расскажем о наших&nbsp;услугах, видах&nbsp;работ и типовых&nbsp;проектах, рассчитаем стоимость и подготовим индивидуальное предложение!&nbsp;<br>										</div>
                                    <div class="col-md-2">
                                        <span class="button button_dark cur" data-event="fancy" data-name="feedback">Задать вопрос</span>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
