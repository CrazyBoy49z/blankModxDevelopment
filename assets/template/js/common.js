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

    // jsDesc: slick set
    $('.main_carousel').slick({
        dots: true,
        autoplay: true,
        infinite: false,
        speed: 300,
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
    if (window.matchMedia("(min-width: 768px)").matches) {
        fixedPanel();
        $(document).scroll(function () {
            fixedPanel();
        });
    } else {
        $('.mobile_click i').click(function () {
            $('.header__wrap-menu').slideToggle();
        });
        $('.header__menu i').click(function () {
            $(this).next().slideToggle();
        });
    }
    $('.header__search').click(function () {
        $('.header__wrap-menu .header__search-form').toggleClass('show');
    });
    var seeMenu = $('.iseeu_menu');
    var topPanelSlogan = $('.header__slogan');
    $('.header__search-form').clone().appendTo(topPanelSlogan);
    $('.header__menu').clone().appendTo(seeMenu);
    var seeUl = $('.iseeu_menu > ul');
    seeUl.addClass('iseeu_class').removeClass('header__menu');
    $('body').on('focusin', 'input[name="phone"]', function () {
        $(this).mask('+7 (999) 999-99-99');
    });

    $('.aside__menu i').click(function () {
        $(this).toggleClass('open');
    });
});
