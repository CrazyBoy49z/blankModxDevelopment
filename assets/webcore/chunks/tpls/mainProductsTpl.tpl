<div class="item mr-3">
        <div class="image">
            <a href="[[~[[+id]]]]"
                    class="blink d-block"
                    itemprop="url">
                <img class="img-responsive w100p"
                        src="[[+middle:default=`/assets/template/img/ms2_default.jpg`]]"
                        alt="[[+pagetitle]]"
                        title="[[+pagetitle]]"
                        itemprop="image"/>
            </a>
            <div class="wrap_stickers">
                <div class="stickers tal">
                    [[+popular:eq=`1`:then=`<div class="sticker_popular">ХИТ</div>`]]
                    [[+favorite:eq=`1`:then=`<div class="sticker_recomend">Рекомендуем</div>`]]
                    [[+new:eq=`1`:then=`<div class="sticker_new">Новинка</div>`]]
                </div>
            </div>
        </div>
        <div class="text">
            <div class="cont">
                <div class="title">
                    <a href="[[~[[+id]]]]"
                            itemprop="url"
                            class="color_link">
                        <span itemprop="name">[[+pagetitle]]</span>
                    </a></div>
                <div class="section_name">[[#[[+parent]].pagetitle]]</div>
            </div>
            <div class="row1 foot">
                <div class="item_f wprice">
                    <div class="size_block bg_main_color">
                        {$size[0]} м<sup>2</sup></div>
                </div>
                <div class="item_f ">
                    <div class="price pull-left1"
                            itemprop="offers"
                            itemscope
                            itemtype="http://schema.org/Offer">
                        <div class="price_new">
                                                                        <span class="price_val"><span itemprop="price"
                                                                                    content="[[+price]]">[[+price]]</span><span
                                                                                    class="currency"
                                                                                    itemprop="priceCurrency"
                                                                                    content="RUB"> &#8381;</span></span>
                        </div>
                        [[+old_price:notempty=`
                            <div class="price_old">
                                <span class="price_val">[[+old_price]]  &#8381;</span>
                            </div>
                        `]]
                    </div>
                </div>
            </div>
            <div class="footer_button">
                <div class="char">
                    [[+numFloor:notempty=`
                        <div class="char_item">
                            <span class="name">Этажей: </span>
                            <span class="value">[[+numFloor]]</span>
                        </div>
                    `]]
                    [[+direction:notempty=`
                        <div class="char_item">
                            <span class="name">Назначение: </span>
                            <span class="value">[[+direction]]</span>
                        </div>
                    `]]
                </div>
            </div>
        </div>
</div>