<div class="row my-5">
    <div class="container">
        <div class="row">
            [[$leftMenu]]
            <div class="col-12 col-md-9">
                [[*image:notempty=`<a href="[[*image]]" class="fancybox">
                    <img src="[[*image]]" class="img-responsive" alt="[[*pagetitle]]">
                </a>`]]
                <div class="content my-4">[[*content]]</div>
                <div class="bx_item_detail_inc_two profit_block mb-4">
                    <h4 class="title_block">Почему выбирают нас</h4>
                    <div class="items row">
                        [[pdoResources?
                        &parents=`33`
                        &resources=`[[*manyIcons:default=`37,38,39,40`]]`
                        &showHidden=`1`
                        &showUnpublished=`1`
                        &includeTVs=`image`
                        &where=`{"image:!=":""}`
                        &tvPrefix=``
                        &includeContent=`1`
                        &tpl=`defaultAdvantagesTpl`
                        ]]
                    </div>
                </div>

                [[*getAlbum:ne=`0`:then=`
                <div class="w-100"></div>
                <div class="item-views portfolio front mb-5">
                    <div class="row" itemscope="" itemtype="http://schema.org/ItemList">
                        [[Gallery? &album=`[[*getAlbum]]` &thumbTpl=`resourceGalleryTpl` ]]
                    </div>
                </div>
                `]]
                [[$contentForm?
                    &name=`service`
                    &title=`Заказать услугу`
                ]]
            </div>
        </div>
    </div>
</div>




