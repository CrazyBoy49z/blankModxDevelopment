<div class="item pad-equal" style="background:url([[+image]]) center 0 no-repeat;">
    <div class="container">
        <div class="row align-items-center justify-content-around">
            <div class="col-md-6 item_text [[+link_attributes]]">
                <div class="inner">
                    <a href="[[~[[+id]]]]" class="title-link">
                        <div class="title ">[[+longtitle:ifempty=`[[+pagetitle]]`]]</div>
                    </a>
                    [[+description:notempty=`<div class="text-block">[[+description]]</div>`]]
                    <div class="wr_button_slider">
                        [[+content:ne=`http://`:and:ne=``:then=`<a href="[[+content:default=`[[~6]]`]]"
                                class="button button_dark">[[+meta_title:default=`Каталог товаров`]]</a>`]]
                        [[+dopField:notempty=`<a href="[[+dopField]]"
                                class="button button_white">[[+meta_description]]</a>`]]
                    </div>
                </div>
            </div>
            <div class="col-md-6 d-none d-md-block item_img">
                <div class="inner">
                    [[+dopUrl:notempty=`<a href="[[+dopUrl]]" class="image">`]]
                        <img src="[[+dopImage]]" class="img-responsive" alt="">
                    [[+dopUrl:notempty=`</a>`]]
                </div>
            </div>
        </div>
    </div>
</div>