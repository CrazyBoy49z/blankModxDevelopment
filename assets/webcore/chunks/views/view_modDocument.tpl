<div class="main">
    <div class="row bg_gray">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        [[pdoCrumbs?
                        &showHome=`1`
                        &tplWrapper=`@INLINE
                        <ul class="breadcrumb">[[+output]]</ul>
                        `
                        &tpl=`@INLINE
                        <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                            <span itemprop="title">[[+menutitle]]</span></li>
                        `
                        &tplCurrent=`@INLINE
                        <li class="active"><span itemprop="title">[[+menutitle]]</span></li>
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
    [[typePage]]
</div>