<div class="col-md-4 col-sm-6">
    <div class="item noborder">
        <div class="image">
            [[+content:ne=`http://`:and:ne=``:then=`<a href="[[+content]]" class="blink">`]]
                <img src="[[+image]]"
                        alt="[[+pagetitle]]"
                        class="img-responsive"/>
            [[+content:ne=`http://`:and:ne=``:then=`</a>`]]
        </div>
        <div class="info">
            <div class="title">
                [[+content:ne=`http://`:and:ne=``:then=`<a href="[[+content]]" class="blink">`:else=`<span class="main_color">`]]
                [[+longtitle:ifempty=`[[+pagetitle]]`]]
                [[+content:ne=`http://`:and:ne=``:then=`</a>`:else=`</span>`]]
            </div>
            [[+description:notempty=`<div class="text">[[+description]]</div>`]]
        </div>
    </div>
</div>