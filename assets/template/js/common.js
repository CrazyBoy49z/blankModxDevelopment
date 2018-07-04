var onloadCallback = function () {
    mysitekey = '6LfLvlAUAAAAALcfj4ofUlUAhk28tWB99Unrldpr';
    if ($('#callback_g').length) {
        grecaptcha.render('callback_g', {
            'sitekey': mysitekey
        });
    }
    if ($('#feedback_g').length) {
        grecaptcha.render('feedback_g', {
            'sitekey': mysitekey
        });
    }
    if ($('#count_g').length) {
        grecaptcha.render('count_g', {
            'sitekey': mysitekey
        });
    }
    if ($('#service_g').length) {
        grecaptcha.render('service_g', {
            'sitekey': mysitekey
        });
    }
}
$(function () {

    var $body = $('body');

    function fixedPanel() {
        var doc = document.documentElement;
        var scrollTop = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
        var offsetTop = $('.header').position().top + $('.header').height();
        if (scrollTop > offsetTop) {
            $body.addClass('fixed_top_panel').css('padding-top', $('.header').height());
        } else {
            $body.removeClass('fixed_top_panel').css('padding-top', '0');
        }
    }

    var dots;
    var lngMenu;
    if (window.matchMedia("(min-width: 768px)").matches) {

        var seeMenu = $('.iseeu_menu');
        var topPanelSlogan = $('.header__slogan');
        $('.header__search-form').clone().appendTo(topPanelSlogan);
        $('.header__menu').clone().appendTo(seeMenu);
        var seeUl = $('.iseeu_menu > ul');
        seeUl.addClass('iseeu_class').removeClass('header__menu');

        // jsDesc: добавление точек в верхнее меню. lngMenu задает количество видимых пунктов. var dots - задает нужно ли такое поведение

        dots = true;
        lngMenu = 5;

    }
    if(window.matchMedia("(min-width: 992px)").matches) {

        dots = true;
        lngMenu = 6;
    }


    if (window.matchMedia("(min-width: 768px)").matches) {
        fixedPanel();
        $(document).scroll(function () {
            fixedPanel();
        });

        if(dots) {
            var menuLi = $('.header__menu > li');
            if(menuLi.length >= lngMenu) {
                var menuIcons = '<li class="col-12 col-md-auto header__menu-dots"><i class="fas fa-ellipsis-h"></i><ul class="header__menu-inner inner_menu"></ul></li>';
                menuLi.eq(lngMenu - 1).after(menuIcons);
                menuLi.each(function (index) {
                    if(index >= lngMenu) {
                        $(this).appendTo($('.header__menu-inner'));
                        $(this).removeClass('col-12 col-md-auto')
                    }
                });
                $('.header__menu').css('overflow','inherit');
            }
        }

        $('.header__search').click(function () {
            $('.header__wrap-menu .header__search-form').toggleClass('show');
        });


    } else {
        $('.mobile_click i').click(function () {
            $('.header__wrap-menu').slideToggle();
        });
        $('.header__menu i').click(function () {
            $(this).next().slideToggle();
        });
    }

    // jsDesc: slick set
    $('.main_carousel').slick({
        dots: true,
        // autoplay: true,
        infinite: false,
        speed: 300,
        arrows: false,
        prevArrow: '.custom_arrows-left',
        nextArrow: '.custom_arrows-right',
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 420,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
    $('.licenses_carousel').slick({
        dots: true,
        autoplay: true,
        infinite: true,
        speed: 300,
        arrows: false,
        prevArrow: '.custom_arrows-left',
        nextArrow: '.custom_arrows-right',
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 500,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 360,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
    // jsDesc: fancybox
    $(".fancybox").fancybox({
        buttons: ['close']
    });
    $('[data-event]').on('click', function () {
        if ($(this).data('event') == 'fancy') {
            $.fancybox.open({
                src: '#' + $(this).data('name'),
                slideClass: 'modal_forms',
            });
        }
    });

    // плавный скролл
    $(document).on("click", ".smooth_scroll", function (event) {
        var classScroll = $(this).data('scroll');
        var top = $('.' + classScroll).offset().top;
        $('body,html').animate({scrollTop: top}, 1500);
    });

    $('.main_slider').slick({
        dots: true
    });
    $('.catalog_slider').slick();








    $('body').on('focusin', 'input[name="phone"]', function () {
        $(this).mask('+7 (999) 999-99-99');
    });

    $('.aside__menu i').click(function () {
        $(this).toggleClass('open');
    });

});
