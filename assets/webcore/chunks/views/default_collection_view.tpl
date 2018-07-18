<div class="my-5">
    <div class="container">
        <div class="row">
            [[$leftMenu]]
            <div class="col-12 col-md-9 mb-4">
                [[*introtext:notempty=`<p class="introtext mb-3">[[*introtext]]</p>`]]
                [[*content:notempty=`<div class="content">[[*content]]</div>`]]
                <div class="item-views list image_left services">
                    <div class="items">
                        [[!pdoPage?
                        &parents=`[[*id]]`
                        &includeTVs=`image`
                        &tvPrefix=``
                        &where=`{"image:!=":""}`
                        &tpl=`defaultCollectionTpl`
                        &limit=`9`
                        &depth=`0`
                        ]]
                        [[!+page.nav]]
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

