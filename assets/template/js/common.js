// captcha
// var onloadCallback = function() {
//     mysitekey = '6Leq4jcUAAAAAK9o3wR7h_lpIMQvOQ2Kr2Ldr-00';
//
//     if($('#callback_g').length ){
//         grecaptcha.render('callback_g', {
//             'sitekey' : mysitekey
//         });
//     }
// }
$(function () {

    var $body = $('body');

    function fixedPanel(){
        var doc = document.documentElement;
        var scrollTop = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
        var offsetTop = $('.header').position().top + $('.header').height();
        if (scrollTop > offsetTop) {
            $body.addClass('fixed_top_panel').css('padding-top', $('.header').height());
        } else {
            $body.removeClass('fixed_top_panel').css('padding-top','0');
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
            });
        }
    });

    // плавный скролл
    //
    // $(".top_menu").on("click", "a", function (event) {
    //     event.preventDefault();
    //     var id = $(this).attr('href');
    //     var top = $(id).offset().top;
    //     $('body,html').animate({scrollTop: top}, 1500);
    // });
    $('.main_slider').slick({
        dots: true
    });


    if (window.matchMedia("(min-width: 768px)").matches) {
        /* the viewport is at least 768 pixels wide */

        // $('.header__menu > li').hover(function () {
        //     $(this).addClass('act_red');
        //     $(this).find('ul:first').stop(true, true).delay(50).slideDown(100);
        // }, function () {
        //     $(this).removeClass('act_red');
        //     $(this).find('ul:first').stop(true, true).delay(50).slideUp(100);
        // });


        fixedPanel();
        //  я не понимаю, но он не работает
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

    // $('#copy-mobile .parent > span').click(function () {
    //     if ($(this).hasClass('open_li')) {
    //         $(this).removeClass('open_li');
    //     } else {
    //         $(this).addClass('open_li');
    //     }
    //     $(this).prev().slideToggle();
    // });
    // if (window.matchMedia('(min-width: 768px)').matches) {
    //     var windowHeight = $(window).height();
    //     $('.top_ul ul .parent').mouseover(function () {
    //         var ul = $(this).find('ul').eq(0);
    //         var offset = $(this).offset();
    //         var ulHeight = ul.innerHeight();
    //         var ulBottom = windowHeight - ulHeight - offset.top;
    //         console.log('vindowHeight: ' + windowHeight + ' ulHeight: ' + ulHeight + ' offsetTop: ' + offset.top);
    //         console.log(ulBottom + ' ulbottom ' + $(this).find('a').eq(0).text());
    //         if (ulBottom < 0) {
    //             ul.css('top', ulBottom-20);
    //         }
    //     });
    // }









});
