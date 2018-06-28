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
                        <li class="active" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><span itemprop="title">[[+menutitle]]</span></li>
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
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                [[*introtext:notempty=`
                <div class="text_before_items1">[[*introtext]]</div>
                `]]
                [[*id:eq=`6`:then=`
                <div class="item-views catalog sections front all mt-4" style="">
                    <div class="items row">
                        [[pdoResources?
                        &parents=`6`
                        &where=`{"class_key":"msCategory","parent":"[[*id]]"}`
                        &includeTVs=`image`
                        &tvPrefix=``
                        &where=`{"image:!=":""}`
                        &tpl=`categoryRowTpl`
                        ]]
                    </div>
                </div>
                `:else=`lalala`]]
                <div class="content my-5">[[*content]]</div>
            </div>
        </div>
    </div>
</div>
