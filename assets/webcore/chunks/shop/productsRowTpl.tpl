<div class="col-md-4 col-12">
    <div class="item"
            itemprop="itemListElement"
            itemscope=""
            itemtype="http://schema.org/Product">
        <div>
            <div class="image">
                <a href="[[~[[+id]]]]" class="blink d-block" itemprop="url">
                    <img class="img-responsive w100p"
                            src="[[+middle]]"
                            alt="[[+pagetitle]]"
                            title="[[+pagetitle]]"
                            itemprop="image">
                </a>
            </div>
            <div class="text">
                <div class="cont">
                    <div class="title">
                        <a href="[[~[[+id]]]]"
                                itemprop="url"
                                class="color_link">
                            <span itemprop="name">[[+pagetitle]]</span>
                        </a></div>
                </div>
                <div class="row1 foot">
                    <div class="item_f wprice">
                        <div class="size_block">
                            {$size[0]}&nbsp;м<sup>2</sup></div>
                    </div>
                    <div class="item_f">
                        <div class="price pull-left1"
                                itemprop="offers"
                                itemscope=""
                                itemtype="http://schema.org/Offer">
                            <div class="price_new">
                                                <span class="price_val"><span itemprop="price"
                                                            content="[[+price]]">[[+price]]</span><span class="currency"
                                                            itemprop="priceCurrency"
                                                            content="RUB"> &#8381;</span></span>
                            </div>
                            [[+old_price:notempty=`
                            <div class="price_old">
                                <span class="price_val">[[+old_price]]</span>
                            </div>
                            `]]
                        </div>
                    </div>
                </div>
                <div class="footer_button">
                    <div class="char">
                        [[getProductOptions?
                        &options=`house_direction,house_flat,house_living`
                        &product=`[[+id]]`
                        &tplInner=`mainProductsOptionsTpl`
                        ]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>