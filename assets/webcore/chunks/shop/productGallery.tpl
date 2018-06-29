<div>
    <ul class="catalog_slider">
        {if $files?}
            {foreach $files as $file}
                <li class="">
                    <a href="{$file['url']}"
                            class="fancybox"
                            data-fancybox="gallery"
                            target="_blank"
                            title="[[*pagetitle]]">
                        <img src="{$file['big']}"
                                class="img-responsive inline"
                                title="[[*pagetitle]]"
                                alt="[[*pagetitle]]"
                                itemprop="image"/>
                        <span class="zoom"><i></i></span>
                    </a>
                </li>
            {/foreach}
        {else}
            <img src="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium.png'}"
                    srcset="{('assets_url' | option) ~ 'components/minishop2/img/web/ms2_medium@2x.png'} 2x"
                    alt="" title=""/>
        {/if}
    </ul>
</div>
