if($(window).width() < 546 ){
    $(document).find('[data-parallax*= \'{"y": 100, "distance": 1600, "smoothness": 10}\']').each(function(){
        $(this).attr('data-parallax', "{\"y\": 50, \"distance\": 600, \"smoothness\": 10}");
    });
    $(document).find('[data-parallax*= \'{"y": -200, "distance": 1600, "smoothness": 10}\']').each(function(){
        $(this).attr('data-parallax', "{\"y\": -100, \"distance\": 600, \"smoothness\": 10}");
    });
}

$(document).ready(function() {

    var es_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
    if(es_chrome){
      $("#mate20-bio-id").removeClass("component");
      $(".animation-x").removeClass("component");
      $(".animation-x").removeClass("animation-block");
    }

    var paths = [].map.call(document.querySelectorAll('path'), function (el) {
        return el;
    });
    paths.forEach(function (el) {
        el.style.setProperty('--stroke-dasharray', el.getTotalLength());
    });
      
    $('#mate20-design-colors .component-carousel-media').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: true,
      dots: true,
      cssEase: 'linear',
      autoplaySpeed: 1000,
      pauseOnFocus: false,
      pauseOnHover: false,
      prevArrow: '<button type="button" class="slick-prev"></button>',
      nextArrow: '<button type="button" class="slick-next"></button>',
      dotsClass: "list-unstyled d-flex justify-content-center",
      appendDots: $('#mate20-design-colors .color-switcher'),
      customPaging : function(slider, i) {
        var color = $(slider.$slides[i]).data('color');
        return '<a href="javascript:;" class="color-switcher-'+color+'"></a>';
      },
      speed: 1000,
      autoplaySpeed: 2000,
      responsive: [
      {
        breakpoint: 1024,
        settings: {
          cssEase: 'ease',
          fade: false,
          arrows: false
        }
      }],
      asNavFor: '.mate20-design-colors-slider'
    });

    $('#mate20-design-colors-bg').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      draggable: false,
      fade: true,
      cssEase: 'linear',
      speed: 1000,
      autoplaySpeed: 2000,
      arrows: false
    });

    $('#mate20-design-colors-caption').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      draggable: false,
      vertical: true,
      speed: 750,
      arrows: false
    });

    $('#mate20pro-bio-id .component-carousel-media').slick({
      infinite: true,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      dots: true,
      infinite: true,
      autoplay: false,
      pauseOnHover: false,
      autoplaySpeed: 5000,
      prevArrow: '<button type="button" class="slick-prev"></button>',
      nextArrow: '<button type="button" class="slick-next"></button>',
      dotsClass: "list-unstyled d-flex justify-content-start",
      appendDots: $('#mate20pro-bio-id .component-carousel-dots'),
      appendArrows: $('#mate20pro-bio-id .component-carousel-arrows'),
      customPaging : function(slider, i) {
        var number = $(slider.$slides[i]).data('number');
        return number;
      },
      asNavFor: '#mate20pro-bio-id .component-carousel-content'
    });
    $('#mate20pro-bio-id .component-carousel-content').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      draggable: false,
      infinite: true,
      speed: 500,
      arrows: false
    });

  function playGallery($gallery) {
    var showGallery = $gallery.waypoint({
      offset: '200%',
      handler: function(direction) {
        if(direction==='down'){
          $gallery.slick('slickPlay',true);
        }else{
          $gallery.slick('slickPlay',false);
        }
    }});
    var hideGallery = $gallery.waypoint({
    offset: function() {
      return -this.element.clientHeight * 1.5
    },
      handler: function(direction) {
        if(direction==='down'){
          $gallery.slick('slickPlay',false);
        }else{
          $gallery.slick('slickPlay',true);
        }
    }});
  };

  $('.mate20-frame-compare .component-carousel-media').each(function(){
    $(this).slick({
      draggable: false,
      infinite: true,
      fade: true,
      autoplaySpeed: 1000,
      arrows: false,
      cssEase: 'linear'
    });
    playGallery($(this));
  });





  $('#mate20-power-wireless .component-carousel-media').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    dots: true,
    fade: true,
    infinite: true,
    pauseOnHover: false,
    autoplay: false,
    autoplaySpeed: 5000,
    prevArrow: '<button type="button" class="slick-prev"></button>',
    nextArrow: '<button type="button" class="slick-next"></button>',
    dotsClass: "list-unstyled d-flex justify-content-center",
    appendDots: $('#mate20-power-wireless .component-carousel-dots'),
    appendArrows: $('#mate20-power-wireless .component-carousel-arrows'),
    asNavFor: '#mate20-power-wireless .component-carousel-content'
  });
  $('#mate20-power-wireless .component-carousel-content').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: false,
    infinite: true,
    speed: 500,
    arrows: false
  });



  $('#mate20-acs-cases .component-carousel-media').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    dots: true,
    fade: true,
    infinite: true,
    pauseOnHover: false,
    autoplay: false,
    autoplaySpeed: 5000,
    prevArrow: '<button type="button" class="slick-prev"></button>',
    nextArrow: '<button type="button" class="slick-next"></button>',
    dotsClass: "list-unstyled d-flex justify-content-center",
    appendDots: $('#mate20-acs-cases .component-carousel-dots'),
    appendArrows: $('#mate20-acs-cases .component-carousel-arrows')
  });


  $('#mate20-photo-filmmaker .component-carousel-media').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    dots: true,
    fade: true,
    infinite: true,
    pauseOnHover: false,
    autoplay: false,
    autoplaySpeed: 5000,
    prevArrow: '<button type="button" class="slick-prev"></button>',
    nextArrow: '<button type="button" class="slick-next"></button>',
    dotsClass: "list-unstyled d-flex justify-content-center",
    appendDots: $('#mate20-photo-filmmaker .component-carousel-dots'),
    appendArrows: $('#mate20-photo-filmmaker .component-carousel-arrows'),
    asNavFor: '#mate20-photo-filmmaker .component-carousel-content'
  });
  $('#mate20-photo-filmmaker .component-carousel-content').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: true,
    infinite: true,
    speed: 500,
    arrows: false,
    asNavFor: '#mate20-photo-filmmaker .component-carousel-media'
  });



  $('#mate20-benchmark .mate20-benchmark-container').slick({
    responsive: [
    {
      breakpoint: 1008,
      settings: {
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplaySpeed: 5000,
        slidesToShow: 1,
        infinite: true,
        draggable: true,
        slidesToScroll: 1,
        dotsClass: "list-unstyled d-flex justify-content-start",
        appendDots: $('#mate20-benchmark .component-carousel-dots'),
        dots: true,
        arrows: false,
      }
    },
    {
      breakpoint: 10240,
      settings: 'unslick',
    }
    ]
  });



  $('#mate20-emui-gallery .component-carousel-media').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    dots: true,
    infinite: true,
    pauseOnHover: false,
    autoplay: false,
    autoplaySpeed: 5000,
    prevArrow: '<button type="button" class="slick-prev"></button>',
    nextArrow: '<button type="button" class="slick-next"></button>',
    dotsClass: "list-unstyled d-flex justify-content-center justify-content-lg-start",
    appendDots: $('#mate20-emui-gallery .component-carousel-dots'),
    appendArrows: $('#mate20-emui-gallery .component-carousel-arrows'),
    asNavFor: '#mate20-emui-gallery .component-carousel-content'
  });
  $('#mate20-emui-gallery .component-carousel-content').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: true,
    infinite: true,
    speed: 500,
    arrows: false,
    asNavFor: '#mate20-emui-gallery .component-carousel-media'
  });

  playGallery($('#mate20-power-wireless .component-carousel-media'));
  playGallery($('#mate20-photo-filmmaker .component-carousel-media'));
  playGallery($('#mate20-design-colors .component-carousel-media'));
  playGallery($('#mate20-emui-gallery .component-carousel-media'));
  playGallery($('#mate20-acs-cases .component-carousel-media'));
  playGallery($('#mate20-acs-cases .component-carousel-media'));
  playGallery($('#mate20-benchmark .mate20-benchmark-container'));

  $('.mate20-video-play-stop:not(.video_2)').each(function(){
    var $video = $(this);
    var pauseVideo = $video.waypoint({
      handler: function(direction) {
        if(direction==='down'){
          $video.get(0).play();
        }else{
          $video.get(0).pause();
        }
      },
      offset: 100
    });
    var startVideo = $video.waypoint({
      handler: function(direction) {
        if(direction==='down'){
          $video.get(0).pause();
        }else{
          $video.get(0).play();
        }
      },
      offset: function() {
        return -this.element.clientHeight
      }
    });
  });
  $('.video_2').each(function(){
    var $video = $(this);
    var pauseVideo = $video.waypoint({
      handler: function(direction) {
        if(direction==='down'){
          $video.get(0).play();
        }else{
          $video.get(0).pause();
        }
      },
      offset: 500
    });
    var startVideo = $video.waypoint({
      handler: function(direction) {
        if(direction==='down'){
          $video.get(0).pause();
        }else{
          $video.get(0).play();
        }
      },
      offset: function() {
        return -this.element.clientHeight
      }
    });
  });
  

  var batteryCapacity = $('#mate20proBatteryTrigger').waypoint({
    handler: function(direction) {
      $('#mate20proBatteryTrigger').addClass('animated');
      $('.mate20-battery-capacity-number').animateNumber(
        {
          number: 4200,
          easing: 'easeOut',


          numberStep: function(now, tween) {
            var formatted = now.toFixed().toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
            $(tween.elem).text(formatted);
          }
        },
        1000
      );

      this.destroy()
    },
    offset: 1000
  });

  var batteryCapacity = $('#mate20BatteryCapacityTrigger').waypoint({
    handler: function(direction) {
      $('#mate20proBatteryTrigger').addClass('animated');
      $('.mate20-battery-capacity-number').animateNumber(
        {
          number: 4000,
          easing: 'easeOut',


          numberStep: function(now, tween) {
            var formatted = now.toFixed().toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
            $(tween.elem).text(formatted);
          }
        },
        1000
      );

      this.destroy()
    },
    offset: '50%'
  });

  $(".mate20-benchmark").each(function() {
    var benchmarkBlock = $(this);
    var benchmark = $(this).find('.mate20-benchmark-number');
    var num = $(this).find('.mate20-benchmark-number').data('number');
    /*var benchmarkNumber = benchmark.waypoint({
      handler: function(direction) {
        benchmarkBlock.addClass('animated');
        benchmark.animateNumber({number: num,easing: 'easeOut'},2000);
        this.destroy()
      },offset: '80%'
    });*/
    var benchmarkNumber = $("#mate20-benchmark").waypoint({
      handler: function(direction) {
        benchmarkBlock.addClass('animated');
        benchmark.animateNumber({number: num,easing: 'easeOut'},2000);
        this.destroy()
      },offset: 850
    });
  });


  var batteryFastCharge = $('#mate20BatteryTrigger').waypoint({
    handler: function(direction) {
      $('.mate20-component-supercharge-fill').addClass('custom-animated');
      $('#mate20BatteryTrigger').addClass('animated');
      var $percent = $('.mate20-component-supercharge-percent');
      var size = $percent.text().split(".")[1] ? $percent.text().split(".")[1].length : 0;
      $percent.prop('Counter', 0).animate({ Counter: $percent.text() }, { duration: 2000, step: function (now) { $percent.text(parseFloat(now).toFixed(size)); } });
      var $time = $('.mate20-component-supercharge-time');
      var from = 0;
      var to = 0 * 0 * 60 + 30 * 60;
      $time.prop('number', from).animateNumber(
          {
            number: to,
            numberStep: function(now, tween) {
              var floored_number = Math.floor(now),
                  target = $(tween.elem);
              var hours = Math.floor(floored_number / (60 * 60));
              hours = (hours < 10 ? '0' + hours : hours);
              var minutes = Math.floor((floored_number - hours * 60 * 60) / 60);
              minutes = (minutes < 10 ? '0' + minutes : minutes);
              var seconds = floored_number - hours * 60 * 60 - minutes * 60;
              seconds = (seconds < 10 ? '0' + seconds : seconds);
              var time = minutes + ':' + seconds;
              target.text(time);
          }
        },
        2000
      );
      this.destroy()
    },
    offset: 850
  });

// function videoScroll() {
//     var vid = $('#mate20videoScroll')[0];
//     window.onscroll = function () {
//         vid.pause();
//     };
//     setInterval(function () {
//         vid.currentTime = window.pageYOffset / 200;
//     }, 32);
// };

if ($('#mate20videoScroll').length > 0) {
  var mate20hideControls = $('.controls-hidden-trigger').waypoint({
    handler: function(direction) {
      if(direction==='down'){
        $('.mate20-scroll-indicator').addClass('hidden');
      }else{
        $('.mate20-scroll-indicator').removeClass('hidden');
      }
    }
  });
  window.requestAnimationFrame(videoScroll);
}

});




/* jquery-animateNumber */
(function(d){var r=function(b){return b.split("").reverse().join("")},m={numberStep:function(b,a){var e=Math.floor(b);d(a.elem).text(e)}},g=function(b){var a=b.elem;a.nodeType&&a.parentNode&&(a=a._animateNumberSetter,a||(a=m.numberStep),a(b.now,b))};d.Tween&&d.Tween.propHooks?d.Tween.propHooks.number={set:g}:d.fx.step.number=g;d.animateNumber={numberStepFactories:{append:function(b){return function(a,e){var f=Math.floor(a);d(e.elem).prop("number",a).text(f+b)}},separator:function(b,a,e){b=b||" ";
a=a||3;e=e||"";return function(f,k){var u=0>f,c=Math.floor((u?-1:1)*f).toString(),n=d(k.elem);if(c.length>a){for(var h=c,l=a,m=h.split("").reverse(),c=[],p,s,q,t=0,g=Math.ceil(h.length/l);t<g;t++){p="";for(q=0;q<l;q++){s=t*l+q;if(s===h.length)break;p+=m[s]}c.push(p)}h=c.length-1;l=r(c[h]);c[h]=r(parseInt(l,10).toString());c=c.join(b);c=r(c)}n.prop("number",f).text((u?"-":"")+c+e)}}}};d.fn.animateNumber=function(){for(var b=arguments[0],a=d.extend({},m,b),e=d(this),f=[a],k=1,g=arguments.length;k<g;k++)f.push(arguments[k]);
if(b.numberStep){var c=this.each(function(){this._animateNumberSetter=b.numberStep}),n=a.complete;a.complete=function(){c.each(function(){delete this._animateNumberSetter});n&&n.apply(this,arguments)}}return e.animate.apply(e,f)}})(jQuery);


/* video JS */
var popVideo1=$('svg.pop-video[data-video-name="video1"]');
var popVideo2=$('svg.pop-video[data-video-name="video2"]');

popVideo1.attr('href','/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/HUAWEI-MATE-20-PRO-TVC-GLOBAL.mp4').attr('data-video-image','/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/HUAWEI-MATE-20-PRO-TVC-GLOBAL.jpg').attr('data-t-label','HUAWEI Mate 20 Pro TVC GLOBAL').attr('data-video-name','HUAWEI Mate 20 Pro TVC GLOBAL');
popVideo2.attr('href','/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/3D-AI-TOY-Global.mp4').attr('data-video-image','/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/3D-AI-TOY-Global.jpg').attr('data-t-label','3D AI TOY Global').attr('data-video-name','3D AI TOY Global');
popVideo2.css('display','block');


// Video Event
/*
$(function() {
  var aTab = $('svg.pop-video');
  aTab.on('click', function(ev) {
    alert("holi");
    ev.preventDefault();
    $(this).initJwplayer({
      'path': '',
      'target': 'fancybox',
      'autostart': true,
      'afterClose': function() {
        aTab.removeClass('active');
      }
    }).addClass('active').siblings('svg').removeClass('active');
  });
});*/

//video.js
function getVideoActionStatus(a) {
  if (a < 25) {
    return "Video Start"
  }
  if (a < 50) {
    return "Video 25%"
  }
  if (a < 75) {
    return "Video 50%"
  }
  if (a < 99) {
    return "Video 75%"
  }
  return "Video Complete"
}
$(function() {
  var pageTitle = digitalData.page.pageInfo.pageName;
  var video_labs = '';
  $('.v27_minisite_content *[data-t-label]').each(function() {
    video_labs = "HUAWEI Mate20 Pro - " + $(this).attr('data-t-label') + pageTitle;
    $(this).attr('data-t-label', video_labs);
  });

  $('.cbg-jwplayer-video').click(function(e) {
    e.preventDefault();
    var eventAction = 0,
      oldEventAction = 0,
      videoStart = 0,
      videoId = $(this).data('video-id');
    var videoImage = {
      'videoPlayer': $(this).data('video-image')
    };
    e.preventDefault();
    var video = {
      id: videoId,
      image: videoImage[videoId],
      link: $(this).data('video-link'),
      aspectratio: $(this).data('video-ratio'),
      file: $(this).attr('href'),
      width: '100%',
      label: $(this).data('t-label'),
      thisVideo: $(this),
      autostart: true,
      flashplayer: "//consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/store/flash/jwplayer_cej_flash.swf",
      events: {
        "onReady": function() {
          if (video.link != null && '' != video.link) {}
        },
        "onPlay": function() {
          $(".jwdisplay").removeClass("x-mask");
          $(".jwpreview").removeClass("x-opacity");
          if (videoStart == 0) {
            
            try {
              trackEvent("Video Milestone", "Video Start", video.label, "");
            } catch (error) {
              console.log("track error");
            }
            videoStart = 1;
          }
        },
        "onTime": function(event) {
          var time = event.position;
          var duration = event.duration;
          var _l = jwplayer().getDuration();
          var _s = jwplayer().getPosition();
          eventAction = time / duration * 100;
          eventAction = (_s / _l) * 100
          if (eventAction <= 25) {
            eventAction = 25;
          } else if (eventAction <= 50) {
            eventAction = 50;
          } else if (eventAction <= 75) {
            eventAction = 75;
          } else if (eventAction < 100) {
            eventAction = 100;
          }
          if (eventAction != oldEventAction) {}
          oldEventAction = eventAction;
        },
        "onPause": function() {
          $(".jwdisplay").addClass("x-mask");
        },
        "onComplete": function() {
          $(".jwdisplay").addClass("x-mask");
          $(".jwpreview").addClass("x-opacity");
          
          try {
            trackEvent("Video Milestone", "Video Complete", video.label, "");
          } catch (error) {
            console.log("track error");
          }
        }
      }
    };
    if ($('html').hasClass('ie9')) {
      video.primary = 'flash';
    }
    var width = 1600,
      height = 900;
    if (typeof(video.aspectratio) == 'string' && /^[0-9]{1,2}:[0-9]{1,2}$/.test(video.aspectratio)) {
      var ratio = video.aspectratio.split(':');
      height = width * parseInt(ratio[1]) / parseInt(ratio[0]);
    }
    $("head").append('<link href="/etc/designs/huawei-cbg-site/clientlib-p10/css/fancybox.css" rel="stylesheet" type="text/css" />');
    $.getScript("/etc/designs/huawei-cbg-site/statics/lib-bundle.js", function() {
      $.fancybox('<div id="' + video.id + '" class="cbg-jwplayer"></div><div class="cbg-video-mask"></div>', {
        width: width,
        height: height,
        padding: 0,
        margin: 20,
        autoSize: false,
        aspectRatio: true,
        scrolling: 'no',
        beforeShow: function() {
          try {
            jwplayer(video.id).setup(video);
            jwplayer(video.id).onFullscreen(function(event) {
              event.fullscreen ? $('.fancybox-close').hide() : $('.fancybox-close').show();
            })
            jwplayer(video.id).onReady(function(event) {
              $('.cbg-video-mask').fadeOut();
            });
            $('#cbg-banner').flexslider('pause');
          } catch (e) {}
        },
        afterClose: function() {
          if (eventAction < 100) {
            
            try {
              trackEvent("Video Milestone", "Video " + eventAction + "%", video.label, "");
            } catch (error) {
              console.log("track error");
            }
          }
        },
        beforeClose: function() {
          //var videoName = $(this).data('video-name') || '<video name>';
          //var lab = "<product name> - " + videoName + " - <page title>";
          var lab = video.label;
          if (video.thisVideo.data('iframe-url')) {
            // when display youtube and youku
            analyticsSubmit("Video Milestone", "Video", lab, EVENT_TYPE_VIDEO_CLOSED);
          } else {
            // common video
            var playedPercentage = Math.floor(jwplayer(video.id).getPosition() * 100 / jwplayer(video.id).getDuration());
            analyticsSubmit("Video Milestone", getVideoActionStatus(playedPercentage), lab, EVENT_TYPE_VIDEO_CLOSED);
          }
        }

      });
    });
    $('.fancybox-close').click(function() {
      $('.play_video').stop();
    });
  });
});


$(function(){
	var userAgentInfo = navigator.userAgent.toLowerCase();
     var isWeixin = userAgentInfo.indexOf("micromessenger") != -1;
     
     if(isWeixin) {
        $('head').append('<script src="//res.wx.qq.com/open/js/jweixin-1.2.0.js"></sc'+'ript>');
        $('head').append('<script src="//consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/store/js/cbgwechatv1.js"></sc'+'ript>');
        $('head').append("<script>WechatShare({url: window.location.href,img: 'https://consumer.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/mate20-pro-share-img.jpg',title: $(document).attr('title'),descript: document.querySelector('meta[name=\"description\"]').getAttribute('content')}, function () { alert('Thanks for sharing.'); });</sc"+"ript>");
     }
});