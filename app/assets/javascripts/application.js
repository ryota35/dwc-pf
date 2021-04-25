// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery3
//= require popper
//= require bootstrap-sprockets


//= require rails-ujs
//= require activestorage
//= require_tree .




// var title = "発火テストアラート";
// alert(title);

// $(document).ready(function () {
//   $('#test').on('click', function() {
//     alert("クリックされました");
//   });
// });


$(document).ready(function () {
var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    slidesPerView: 1,
    breakpoints: {
    768: {
      slidesPerView: 2,
    },
    980: {
      slidesPerView: 3,
    },
    1200: {
      slidesPerView: 4,
    }
  },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',

    },
  });
});



$(function(){
  $('.bsl').hover(function(){
    $(this).text('B(est)S(martphone)L(ife)');
  },  function(){
    $(this).text('B S L');
  });
});


$(function(){
    $(window).scroll(function (){
        $('.fadein').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 200){
                $(this).addClass('scrollin');
            }
        });
    });
});

$(function(){
  $('#tab-contents .tab[id != "tab1"]').hide();

  $('#tab-menu a').on('click', function(event) {
    $("#tab-contents .tab").hide();
    $("#tab-menu .active").removeClass("active");
    $(this).addClass("active");
    $($(this).attr("href")).show();
    event.preventDefault();
  });
});