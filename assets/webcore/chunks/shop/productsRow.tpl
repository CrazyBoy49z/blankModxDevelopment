<div class="row">
    [[$leftMenu]]
    <div class="col-12 col-md-9">
        <div class="catalog item-views table">
            <div class="row items" itemscope="" itemtype="http://schema.org/ItemList">
                [[!pdoPage?
                &element=`msProducts`
                &parents=`[[*id]]`
                &tpl=`productsRowTpl`
                &includeThumbs=`middle`
                &limit=`3`
                &tplPageFirst=``
                &tplPageLast=``
                ]]
                <div class="w-100"></div>
                [[!+page.nav]]
            </div>
        </div>
    </div>
</div>