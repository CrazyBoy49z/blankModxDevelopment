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
                <div class="catalog detail" itemscope itemtype="http://schema.org/Product">
                    <div class="row bg_gray">
                        <div class="container">
                            <div class="col-md-12">
                                <div class="head">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-7">
                                            <div class="row galery">
                                                <div class="inner">
                                                    [[!msGallery? &tpl=`productGallery`]]
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-5">
                                            <div class="info"
                                                    itemprop="offers"
                                                    itemscope
                                                    itemtype="http://schema.org/Offer">
                                                <div class="row1 foot big">
                                                    <div class="item_f wprice">
                                                        <div class="size_block">
                                                            {$size[0]} м<sup>2</sup></div>
                                                    </div>
                                                    <div class="item_f ">
                                                        <div class="price">
                                                            <div class="price_new"><span class="price_val"><span
                                                                            itemprop="price"
                                                                            content="1 790 000 ">[[*price]]</span><span class="currency"
                                                                            itemprop="priceCurrency"
                                                                            content="RUB">&#8381;</span></span></div>
                                                            <div class="price_old">Цена без скидки:&nbsp;<span class="price_val">2 290 000 р.</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="previewtext" itemprop="description">
                                                    Проект комфортабельного дома для одного человека или пары, выполненный по проекту Джона Кирсби (NY, Коалиция архитекторов). Выполнен из пеноблоков производства США.
                                                </div>
                                                <div class="more_block"><span>Подробнее</span></div>
                                                <div class="order">
                                                    <span class="btn btn-default"
                                                            data-event="jqm"
                                                            data-param-id="46"
                                                            data-name="order_product"
                                                            data-product="Проект дома из пеноблока с отделкой в стиле лофт">Заказать расчет стоимости</span>
                                                    <span class="btn btn-default white"
                                                            data-event="jqm"
                                                            data-param-id="43"
                                                            data-name="question"
                                                            data-autoload-NEED_PRODUCT="Проект дома из пеноблока с отделкой в стиле лофт">Задать вопрос</span>
                                                </div>
                                                <!--'end_frame_cache_info'-->
                                                <div class="share">
                                                    <hr/>
                                                    <span class="text">Поделиться ссылкой:</span>
                                                    <script type="text/javascript"
                                                            src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"
                                                            charset="utf-8"></script>
                                                    <script type="text/javascript"
                                                            src="//yastatic.net/share2/share.js"
                                                            charset="utf-8"
                                                            async="async"></script>
                                                    <div class="ya-share2"
                                                            data-services="vkontakte,facebook,twitter,viber,whatsapp,odnoklassniki,moimir"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bx_item_detail_inc_two banners-small front">
                                    <div class="items row_custom">
                                        <div class="item_block">
                                            <div class="item" id="bx_3807681303_">
                                                <div class="image">
                                                    <a href="/price/">
                                                        <img src=/upload/uf/288/2887a5b4e1db0d3a58184d830fb27191.png
                                                                alt="Выгодные расценки и система скидок"
                                                                title="Выгодные расценки и система скидок"/>
                                                    </a></div>
                                                <div class="title">
                                                    <a href="/price/"> Выгодные расценки и система скидок </a></div>
                                            </div>
                                        </div>
                                        <div class="item_block">
                                            <div class="item" id="bx_3807681303_">
                                                <div class="image">
                                                    <img src=/upload/uf/57a/57a01fff8de71132743199424255ab68.png
                                                            alt="Бассейн"
                                                            title="Бассейн"/>
                                                </div>
                                                <div class="title">
                                                    Бассейн
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item_block">
                                            <div class="item" id="bx_3807681303_">
                                                <div class="image">
                                                    <img src=/upload/uf/e10/e10215fa6b93c7a928ae2df520938724.png
                                                            alt="Отличная планировка"
                                                            title="Отличная планировка"/>
                                                </div>
                                                <div class="title">
                                                    Отличная планировка
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item_block">
                                            <div class="item" id="bx_3807681303_">
                                                <div class="image">
                                                    <img src=/upload/uf/fe1/fe16de63bbbb1614e8a8ad1758e6c761.png
                                                            alt="Приватная территория"
                                                            title="Приватная территория"/>
                                                </div>
                                                <div class="title">
                                                    Приватная территория
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row bg_gray nomargin under_content">
                        <div class="container">
                            <div class="col-md-12">
                                <div class="scroll_block"></div>
                                <div class="content" itemprop="description">
                                    <h4 class="title_block">Описание</h4><br>
                                    Выполнен из прочного пенобетона. Гарантия – 100 лет. Выдержит рояль, толпу гостей и домашнего слоненка. Во дворе можно установить бассейн. Внутренняя отделка – сандаловое дерево, парча и мрамор.&nbsp;<br>
                                    <br>
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <h4>В предложение входит:</h4>
                                                <ul class="list icons list-unstyled">
                                                    <li>
                                                        <i class="fa fa-check"></i>Доставка и все транспортные расходы по Челябинской области.
                                                    </li>
                                                    <li><i class="fa fa-check"></i>Организация проживания рабочих.</li>
                                                    <li><i class="fa fa-check"></i>Монтаж.</li>
                                                    <li><i class="fa fa-check"></i>Все расходные и сопутствующие материалы.
                                                    </li>
                                                </ul>
                                            </td>
                                            <td>
                                                <h4>Стеновой комплект</h4>
                                                <ul class="list icons list-unstyled">
                                                    <li><i class="fa fa-check"></i>Пеноблок 208х193hмм. Клей Akzo-Nobel.
                                                    </li>
                                                    <li><i class="fa fa-check"></i>«Чашки» с ветрозащитой.</li>
                                                    <li>
                                                        <i class="fa fa-check"></i>Сверление отверстий под скрытую проводку на производстве.
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-check"></i>Металлические оцинкованные шпильки, гайки, шайбы, глухари.
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <hr class="big"/>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="wraps">
                                            <h4 class="title_block">Характеристики</h4>
                                            <div class="chars">
                                                <div class="char-wrapp">
                                                    <table class="props_table">
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Площадь																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															200																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Этажей																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															2																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Жилая площадь																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															290&nbsp м<sup>2</sup>																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Площадь кухни																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															45&nbsp м<sup>2</sup>																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Гараж																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															на 1 машину																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Количество спален																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															2																													</span>
                                                            </td>
                                                        </tr>
                                                        <tr class="char">
                                                            <td class="char_name ">
														<span>
															Назначение																													</span>
                                                            </td>
                                                            <td class="char_value">
														<span>
																															для сейсмоопасных регионов																													</span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="wraps">
                                            <h4 class="title_block">Документы</h4>
                                            <div class="row docs">
                                                <div class="col-md-12 item">
                                                    <div class="icons  xls">
                                                        <a href="/upload/iblock/9b7/9b71844d0401c61059fdfa7448133714.xls"
                                                                target="_blank"
                                                                title="Смета строительства"></a>
                                                    </div>
                                                    <div class="text">
                                                        <a href="/upload/iblock/9b7/9b71844d0401c61059fdfa7448133714.xls"
                                                                target="_blank"
                                                                title="Смета строительства">Смета строительства</a>
                                                        Размер:
                                                        <span>29  байт</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr class="big"/>
                                <div class="order-block">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4 col-xs-5 valign">
                                        <span class="btn btn-default btn-lg"
                                                data-event="jqm"
                                                data-param-id="46"
                                                data-name="order_product"
                                                data-product="Проект дома из пеноблока с отделкой в стиле лофт">Заказать расчет стоимости</span>
                                        </div>
                                        <div class="col-md-8 col-sm-8 col-xs-7 valign">
                                            <div class="text">
                                                Оформите заявку на сайте, мы свяжемся с вами в ближайшее время и ответим на все интересующие вопросы.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content my-5">[[*content]]</div>
            </div>
        </div>
    </div>
</div>
