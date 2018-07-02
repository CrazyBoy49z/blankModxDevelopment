[[$leftMenu]]
<div class="col-12 col-md-9">
    [[*image:notempty=`<a href="[[*image]]" class="fancybox">
        <img src="[[*image]]" class="img-responsive" alt="[[*pagetitle]]">
    </a>`]]
    <div class="content my-4">[[*content]]</div>
    [[*getAlbum:ne=`0`:then=`
        <div class="w-100"></div>
        [[Gallery? $album=`[[*getAlbum]]` &thumbsTpl=`resourceGalleryTpl` ]]
    `]]
    <!--{*TODO: order form project*} -->
</div>
