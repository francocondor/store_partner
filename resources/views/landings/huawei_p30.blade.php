@extends('layouts.master_clean')

@section('css')
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,600,700,800,900">
    <link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">

    <!--
    <link type="text/css" rel="stylesheet" href="css/main.min.css">
    <link type="text/css" rel="stylesheet" href="css/app.css">
    -->
    <!-- <link rel="stylesheet" type="text/css" href="css/ie-explorer-9.css"/> -->

    <!--[if lte IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/ie-explorer-9.css" />

    <![endif]-->

    <!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="css/ie-explorer-8.css" />
    <script src="js/css3-mediaqueries.min.js"></script>
    <![endif]-->

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet"> 
<!--
<link type="text/css" rel="stylesheet" href="css/meizu_m6t.min.css">
<link type="text/css" rel="stylesheet" href="css/landing-reset.css">
-->
<link type="text/css" rel="stylesheet" href="{{asset('css/p30/general.css')}}">
<link type="text/css" rel="stylesheet" href="{{asset('css/p30/p30.css')}}">

@endsection

@section('content')

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-54402503-11"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-54402503-11');
</script>
<!-- End Google Analytics Code --> 
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '184311558975319');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=184311558975319&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->


      <!--minimiza navslide-->
        <div id="flecha" style="position: fixed;top: 0;left:100%;z-index: 99998;display: flex;flex-direction: column;align-content: center;justify-content: center;height: 100%;"><ul onclick="flecha_accion()" style="cursor:pointer;background: black;border: 1px solid #fff;border-radius: 8px 0 0 8px;overflow: hidden;margin: 24px 0;padding: 0;color: white;text-align: center;width: 20px;height: 26px;font-size: 18px;">&lt;</ul></div>
      <!--end of navslide-->



      <div id="navslide">
        <ul>
          <li data-menuanchor="slide1" class="slide slide1 active"><a href="#slide1">
              <div class="image"><img src="{{asset('images/menu/logo-huawei@2x.png')}}" alt="p30" width="33" height="33"></div>
              <div class="description"><span class="text-title">Nuevo Huawei P30</span><span>Equipo exclusivo de Bitel</span></div></a></li>
          <li data-menuanchor="slide2" class="slide slide2"><a href="#slide2">
              <div class="image"><img src="{{asset('images/menu/camara-trple.svg')}}" alt="p30" width="33" height="33" style="
    transform: rotate(90deg);
"></div>
              <div class="description"><span class="text-title">Triple Cámara LEICA</span><span>Asistido por IA</span></div></a></li>
          <li data-menuanchor="slide3" class="slide slide3"><a href="#slide3">
              <div class="image"><img src="{{asset('images/landings/p30/navslide/icon-pantalla.svg')}}" alt="p30" width="33" height="33"></div>
              <div class="description"><span class="text-title">Cristal Curvo 3D</span><span>6,1 pulgadas, OLED</span></div></a></li>
          <li data-menuanchor="slide4" class="slide slide4"><a href="#slide4">
              <div class="image"><img src="{{asset('images/landings/p30/navslide/icon-procesador.svg')}}" alt="p30" width="33" height="33"></div>
              <div class="description"><span class="text-title">Procesador neuronal</span><span>Kirin 980</span></div></a></li>
          <li data-menuanchor="slide5" class="slide slide5"><a href="#slide5">
              <div class="image"><img src="{{asset('images/landings/p30/navslide/icon-bateria.svg')}}" alt="p30" width="33" height="33"></div>
              <div class="description"><span class="text-title">Batería de 3650 mAh</span><span>Dura y carga más rápido</span></div></a></li>
          <li data-menuanchor="slide6" class="slide slide6"><a href="#slide6">
              <div class="image"><img src="{{asset('images/menu/page-1.svg')}}" alt="p30" height="33"></div>
              <div class="description"><span class="text-title">¡Resérvalo ahora!</span><span>Con tu plan favorito</span></div></a></li>
        </ul>
        <div class="content-t Rectangle-18">
          <a href="#">
            <div class="image">
              <img src="{{asset('images/menu/download@2x.png')}}" alt="p30" style="max-height: 60px">
            </div>
            <div class="description">
              <span class="text-title">Nuevo Huawei P30</span>
              <span class="text-sub">¡Descúbrelo ahora!</span>
            </div>
          </a>
        </div>
    </div>
    <div id="fullpage">

      <div id="p30-container" class="section section-one section-initial" style="overflow:hidden">

        <div id="p30-intro-camera-trigger"></div>
        <div class="p30-fullscreen-2" id="p30-intro-camera">
            <div class="p30-fullscreen-1 p30-sticky" id="p30-intro-camera-curtain">
                <div class="p30-fullscreen-1 p30-overflow intro-camera-curtainbg" style="opacity: 1;">
                    <div id="p30-intro-camera-1" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                    <div id="p30-intro-camera-2" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                </div>
                <div id="p30-intro-camera-logo" style="text-align: center">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 366 65" viewBox="0 0 446 65" style="width: 35vw;"><g fill="none" fill-rule="evenodd"><path d="M350.5 63.5a15 15 0 1 1 0-30 15 15 0 0 1 0 30zm-4.4-21.7c-2.9-.1-3.6 4-3.8 4.6-1 0-1.4-.2-1.4-.2l-.2.5c.6.3 1.5.4 1.5.4-.2 1-1 3.1-1 3.1s-.8-.2-1.8-.2c-1.2 0-1.7.6-1.7 1 0 .9 1.1 1.3 2 1.3 1.6 0 2.5-.8 2.5-.8s4.6 1.7 9.5 1.7c6.3 0 11.6-1.7 11.6-1.7l-.1-.6s-4 1.4-11.3 1.3c-5.1 0-9-1.6-9-1.6l.2-.4c.5-1 1.1-3.1 1.1-3.1s3.5-1 3.5-3.8c0-.9-.8-1.5-1.6-1.5zm0 .8c.6 0 .8.4.8.8-.3 2.3-2.6 2.9-2.6 2.9s.6-3.7 1.9-3.7zm5.7 2c-.6 0-1 .2-1 .7 0 .6.5.7 1 .7s1-.2 1-.8c0-.6-.6-.7-1-.7zm7.8 2a2.7 2.7 0 0 0-2.6 2.2v.2s-.6.8-1.4.8c-.6 0-.7-.5-.7-.8 0-.4.3-1.7 1.1-1.7.5 0 .7.4.7.4l.2-.8s-.3-.3-1-.3c-1.7 0-2.8 1.2-2.9 2.3v.3s-.4.5-1 .5c-.3 0-.3-.3-.3-.4l.7-2.6h-1.9l-.6 2.4s-1 .7-2.4.8c-.8 0-1-.4-1-.7h.5c.2 0 2.4-.2 2.4-1.5 0-.8-.8-1-1.8-1-1.7 0-3 1-3 2.3 0 1.2 1 1.7 2.3 1.7 1.5 0 3-.9 3-.9s0 1 1.2 1 2.2-1 2.2-1 .5.9 1.7.9 2.2-1 2.2-1 .3 1 1.5 1c1 0 1.5-.7 1.5-.7s.2.6 1 .6a3 3 0 0 0 1.8-.7l-.1-.6s-.4.3-.7.3c-.2 0-.3-.1-.3-.3 0-.5.7-2.6.7-2.6h-1.7l-.1.3s-.3-.5-1.2-.5zm-12 .6c.3 0 .5.2.5.4 0 1.1-1.5 1-1.5 1s.2-1.5 1-1.4zm12.4 0c.3 0 .5.3.5.5 0 0-.2 2-1.2 2-.4 0-.4-.4-.4-.6 0-.4.3-1.9 1-1.9zm-21 3.5h.3c.7 0 1.4.3 1.4.3s-.8.6-1.4.6c-.5 0-.8-.3-.8-.5 0-.3.3-.4.6-.4z" fill="#E50012"></path><path d="M42.3 13.9V.4h6.8v33.4h-6.8V20.2H27.1v13.6h-6.8V.4h6.8V14h15.2zm38.1 5.6V.5h6.8v18.7c0 9.6-5.3 15-14.4 15-9.1 0-14.3-5.3-14.3-14.7V.5h6.7v18.8c0 5.6 2.8 8.5 7.7 8.5 4.8 0 7.5-2.9 7.5-8.3zm78.2 3.9l7.4-23h7l-11.6 33.4h-5.6l-7.6-22-7.6 22H135L123.4.5h7.2l7.3 22.9 7.6-23h5.5l7.6 23zm26.5-4v8.3h18.5v6h-25.2V.5H203v6h-18v6.9h12.3v6H185zm26.6-19h6.7v33.3h-6.7V.4zm-95.9 26.4h-15.2l-.2.5-2.9 6.5h-6.9L105.3.5h6v.1L126 33.8h-7l-3-7zm-7.6-18L103.4 20l-.3.8h10.2l-.3-.8-4.8-11zm63.7 43.8l-1.5.3a3.4 3.4 0 0 1-2.9-1.4L167 50a7 7 0 0 1 0-3.5c.1-.5.3-1 .7-1.4.3-.5.7-.8 1.1-1 .5-.4 1-.5 1.8-.5a3.7 3.7 0 0 1 1.4.3v.9a2 2 0 0 0-.8-.3l-.7-.1c-.6 0-1 0-1.4.3a3 3 0 0 0-1 1 4 4 0 0 0-.4 1.2 6.6 6.6 0 0 0 0 2.8l.5 1.2c.2.4.5.7 1 1 .3.2.7.3 1.3.3a3 3 0 0 0 1.4-.4l.1.8zm10-4.4l-.2 1.6c0 .6-.2 1-.5 1.5-.2.5-.5.9-1 1.2-.3.3-.8.4-1.5.4-.6 0-1.1-.1-1.5-.4a4 4 0 0 1-1-1.2l-.4-1.5a10.8 10.8 0 0 1 0-3.1c0-.6.3-1 .5-1.5s.5-.9 1-1.2c.3-.3.8-.4 1.4-.4a2.7 2.7 0 0 1 2.6 1.5l.4 1.5.1 1.6zm-.8 0L181 47c0-.5-.2-1-.3-1.3l-.7-1c-.3-.3-.8-.4-1.3-.4s-.9.2-1.2.4l-.7 1-.3 1.3a11.5 11.5 0 0 0 0 3l.3.8.4.7.7.5.8.2c.5 0 1-.2 1.3-.4l.7-1 .3-1.3v-1.3zm4.7.7v-.7h2.5v.7h-2.6zm6.9 3.9v-9h3.7v.7h-3v3.2h2.9v.7h-2.9V52h3.2v.8h-4zm12.7 0l-3.7-8.1v8h-.7v-9h1l3.8 8.1v-8h.7v9h-1zm11.4-.4a3.8 3.8 0 0 1-2 .5c-.7 0-1.3-.1-1.8-.4l-1.2-1-.6-1.5a6.5 6.5 0 0 1 0-3.4c.1-.6.4-1 .7-1.5.3-.5.7-.8 1.2-1 .4-.4 1-.5 1.6-.5l1 .1.9.4v.8l-1-.4-1-.2c-.5 0-1 .2-1.3.4a3 3 0 0 0-.9 1l-.5 1.2a5.9 5.9 0 0 0 0 2.8l.5 1.2 1 1c.4.2.8.3 1.4.3a2.5 2.5 0 0 0 1.2-.3v-3.2h-1.6V48h2.3v4.4zm4.6.4v-9h.7v9h-.7zm10 0l-3.6-8.1v8h-.7v-9h1l3.7 8.1v-8h.8v9h-1.1zm6 0v-9h3.8v.7h-3v3.2h2.9v.7h-2.9V52h3.2v.8h-4zm8.4 0v-9h3.7v.7h-3v3.2h2.9v.7h-2.9V52h3.2v.8h-4zm12.4 0l-1.1-3.1-.2-.5-.2-.3-.3-.3a1 1 0 0 0-.5 0h-1v4.1h-.8v-9h2c.8 0 1.3.3 1.8.7.4.4.6 1 .6 1.7 0 .6-.2 1-.5 1.4a2 2 0 0 1-1.3.7c.3 0 .5.2.6.3l.3.5 1.4 3.8h-.8zm-.5-6.7c0-.6-.2-1-.5-1.3a2 2 0 0 0-1.3-.3h-1v3.3h1c.7 0 1-.1 1.4-.4.3-.3.4-.8.4-1.3zm5.4 6.6v-9h3.8v.8h-3v3.2h2.8v.7H264V52h3.1v.8h-3.9zm13.8-4.5c0 .7 0 1.3-.2 1.9-.2.5-.4 1-.8 1.4-.3.4-.8.7-1.3 1l-1.8.2h-1.4v-9h1c1.6 0 2.7.4 3.4 1.2a5 5 0 0 1 1.1 3.4zm-.8 0c0-.5 0-1-.2-1.5 0-.4-.3-.8-.5-1.2l-1-.8c-.5-.2-1-.3-1.6-.3h-.6V52h.8c.6 0 1.1 0 1.5-.3.4-.2.7-.4 1-.8l.4-1.2c.2-.5.2-1 .2-1.5zm17.5 4.5h-1l-1.7-8.1-1.8 8.1h-1l-2-9h.8l1.7 8.2 1.8-8.1h1l1.8 8.1 1.7-8.1h.7l-2 9zm6 0v-9h.8v9h-.8zm7.5-8.3v8.4h-.8v-8.3h-2v-.8h4.8v.8h-2zm10.2 8.4v-4.4h-3.5v4.4h-.7v-9h.7v4h3.5v-4h.8v9h-.8zM246.3.5h8.3c4 0 7 .8 9.2 2.5 2.1 1.6 3.2 4 3.2 7.2 0 2.2-.5 4-1.5 5.7a10 10 0 0 1-4.2 3.9c-1.8.9-3.9 1.3-6.2 1.3-1.5 0-3-.2-4.6-.5v13.1h-4.3V.6zm14.2 15.2c1.5-1.3 2.2-3 2.2-5.4 0-2.2-.7-3.8-2.1-4.9-1.4-1-3.5-1.5-6.1-1.5h-4v13.3c1.5.3 2.7.4 3.8.4 2.7 0 4.8-.6 6.2-2zm14.7 17.7c-1.8-.5-3.4-1.3-4.8-2.3l1.3-3.6a15.4 15.4 0 0 0 9 3.2 9 9 0 0 0 4-.8 5.6 5.6 0 0 0 3.2-5.4c0-2-.7-3.4-2.1-4.5a10 10 0 0 0-6.2-1.7h-3.5V15h2.4c1.6 0 3-.3 4.2-.8a6.4 6.4 0 0 0 2.8-2.2c.7-1 1-2 1-3.3 0-1.6-.5-2.8-1.5-3.7-1-1-2.4-1.4-4.1-1.4-1.6 0-3 .3-4.4 1-1.4.6-2.5 1.4-3.4 2.3l-1.5-3.1a14.5 14.5 0 0 1 9.7-3.7c2 0 3.6.4 5 1a7.6 7.6 0 0 1 4.5 7c.1 2.2-.5 3.9-1.8 5.3a9.6 9.6 0 0 1-5 2.9c2.5.4 4.5 1.3 6 2.7a7.6 7.6 0 0 1 2.3 5.8 8.8 8.8 0 0 1-5.4 8.3c-1.8.8-3.8 1.2-6.1 1.2a21 21 0 0 1-5.6-.8zm23-3.6c-1.8-2.8-2.7-7-2.7-12.4 0-5.6 1-9.8 2.8-12.8 1.9-3 4.7-4.6 8.5-4.6a9 9 0 0 1 8.2 4.3c1.8 2.8 2.7 7 2.7 12.5s-1 9.8-2.8 12.8a9.3 9.3 0 0 1-8.5 4.6 9 9 0 0 1-8.2-4.3zm13.5-2.6a25 25 0 0 0 1.7-10.3c0-4.3-.5-7.6-1.6-10-1-2.3-2.7-3.5-5-3.5-4.6 0-6.9 4.7-6.9 14 0 4.3.5 7.6 1.6 9.9 1 2.3 2.7 3.4 5 3.4 2.4 0 4.1-1.2 5.2-3.5z" fill="#000"></path></g></svg>
                 <!-- <button style="background: #000000;
    color: white;
    border-radius: 25px;
    margin: 0 auto;
    border: none;
    min-width: 150px;
    padding: 10px;
    font-size: 14px;">Descúbrelo</button> -->
                </div>
            </div>     
        </div>
      </div>

      <div class="section section-two">
        <section class="section-one-responsive">
          <div class="content-slider-2 slider slider_meizu_m6t">
            <div class="bg-huawei bg-meizu_m6t">
              <div class="container">
                <div class="row">
                  <div data-aos-once="true" id="big-padding" data-aos="fade-right" class="col-xs-12 col-sm-8 col-md-6" style="padding-top: 100px;text-align: justify;">
                    <div class="description">
                      <h1>
                        El pionero de la fotografía
                      </h1>
                    </div>
                    <div class="description-camara texto">
                      <div>
                        <p>Atrévete a impresionar. El sistema de triple cámaras Leica se adapta a tus fotografías para ayudarte a ver el mundo en su totalidad. Este inigualable sistema de súper cámara con una increíble cámara súper sensorial de 40 MP, un objetivo ultra gran angular de 16 MP y un teleobjetivo de 8 MP, te brinda la libertad de capturar el tesoro y la belleza del mundo.</p>
                      </div>                      
                    </div>
                  </div>
                </div>
              </div>
              <!--<img src="{{asset('images/landings/p30/slider2/pic-ie-s-7@3x.png')}}" class="bottom-img hidden-lg hidden-md">-->
			  <img src="https://tienda.bitel.com.pe/storage/images/pic_ie_s7_xs_20190605.jpg" class="bottom-img hidden-lg hidden-md">
            </div>
          </div>
        </section>
      </div>
      <div class="section section-three">
        <section>
          <img id="ocultar" src="http://consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/phones/p30/img/camera-intro/pic_compactDesign_bg_md@2x.jpg" 
		  alt="p30" style="position:absolute;z-index:-1;width:100%;width: 80%;margin-top: 25%;">
          <div class="content-slider-3 slider slider_huawei_p20_fot">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-7 col-md-5">
                  <div class="description">
                    <h1>Elegancia magnífica</h1>
                    <p class="texto first">La pantalla de Dewdrop OLED de 6.1" está diseñada precisamente para brindarle una mejor y más amplia experiencia de visualización con colores vibrantes que brillan en todos los sentidos.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-four" style="overflow: hidden;background: none !important;position: relative;">
        <video poster="" autoplay="true" data-keepplaying muted="" webkit-playsinline="" playsinline="" loop="loop" preload="load" style="height: auto;
    width: 100%;
    position: fixed;
    z-index: -1;
    left: 0;
    top: 0;">
          <source src="{{asset('images/landings/p30/cpu.mp4')}}">
        </video>
        <section style="background:none !important">
          <div class="content-slider-4 slider meizu_m6t" style="background:none !important">
            <div style="display:none !important;position: fixed;bottom: 30%;left: 0;right: 0;width: 100px;display: block;margin: 0 auto;" id="logo-div">
              <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" style="" class="" viewBox="0,0,163,163">
                <g fill="#FFF" fill-rule="evenodd" style="width: 100%;height: 100%;"><path d="M1 2a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 9a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 16a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 23a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 30a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 37a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 44a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm35 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 51a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm28 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 58a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm28 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 65a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm28 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 72a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 79a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm21 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 86a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm21 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 93a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 100a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 107a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 114a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 121a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 128a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 135a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 142a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 149a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 156a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM1 163a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm7 0a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" fill-opacity=".5"></path><path d="M75 49.2a48 48 0 0 0 3 1 62.9 62.9 0 0 0-15.3 15H86c6.7-8.3 26-18.1 26-18.1l-12.4-9.7c-.4-.3-.8-.3-1.2-.2C81.6 42 64.8 37 64.8 37L75 49.2zM66.8 76a1.9 1.9 0 1 0 3.7 0 1.9 1.9 0 0 0-3.7 0zm-17.3 0a1.9 1.9 0 1 0 3.7 0 1.9 1.9 0 0 0-3.7 0zm61.4-1.2c-1.3-.1-2.5.3-3.5 1-1 1-1.7 2.3-1.6 3.6 0 .6 0 1.1.2 1.6s.5 1 .9 1.4c.2.3.5.6 1 .8a6 6 0 0 0-1.4 1.2 4.2 4.2 0 0 0-1.2 3.1c0 .8.2 1.5.5 2.2.2.7.6 1.3 1.2 1.8a4 4 0 0 0 1.8 1 7 7 0 0 0 4.2 0 5 5 0 0 0 1.8-1c.6-.5 1-1 1.2-1.8.3-.7.4-1.4.4-2.2 0-.6 0-1.1-.2-1.7-.2-.5-.5-1-1-1.4a5 5 0 0 0-1.2-1.2l.9-.8c.4-.4.7-.9.8-1.4a4.8 4.8 0 0 0-.1-3.6c-.2-.6-.7-1.1-1.2-1.5a5.3 5.3 0 0 0-3.5-1.1zm2.3 2.4a2.9 2.9 0 0 1 0 4.4c-.6.5-1.4.8-2.3.8a4 4 0 0 1-2.4-.8c-.3-.2-.5-.5-.6-.9a3 3 0 0 1-.3-1.2 3 3 0 0 1 1-2.3c.6-.5 1.4-.7 2.3-.7.8 0 1.7.2 2.3.7zm-5 13l-.8-1.1-.2-1.5c0-1 .3-1.9 1-2.6.7-.6 1.7-1 2.7-1l1.5.3c.4.1.8.4 1.2.7.7.7 1 1.6 1 2.6l-.3 1.5a3 3 0 0 1-2 1.8 4.8 4.8 0 0 1-1.6.2c-1 0-1.8-.3-2.5-.9zm14.8-15a5.4 5.4 0 0 0-3.4 5.4V87a5.4 5.4 0 0 0 3.3 5.4c.7.3 1.5.4 2.3.4a5.8 5.8 0 0 0 4.3-1.8c1-1 1.5-2.5 1.4-4v-6.4a5.7 5.7 0 0 0-3.3-5.4c-.7-.3-1.5-.4-2.3-.4-.8 0-1.6.1-2.3.4zm.4 15.5a3.9 3.9 0 0 1-2-3.7v-6.4c0-.9.2-1.7.6-2.4a3.9 3.9 0 0 1 3.2-1.7 4 4 0 0 1 1.9.4c.5.3 1 .8 1.4 1.3.4.7.6 1.5.6 2.4V87a4 4 0 0 1-2 3.7 4 4 0 0 1-1.9.4 4 4 0 0 1-1.8-.4zm-27.1-16a5.6 5.6 0 0 0-4.2 1.8 5.7 5.7 0 0 0-1.6 4A5.5 5.5 0 0 0 94 86a6 6 0 0 0 4.5-.1c.8-.4 1.4-1 2-1.6v2.5c0 1-.4 2-1.1 2.9a3 3 0 0 1-1.4 1.1 4 4 0 0 1-3.8 0 4 4 0 0 1-1.5-1.4l-1.3 1c.5.8 1.2 1.5 2 1.9a6.3 6.3 0 0 0 5.1.2c.8-.3 1.5-.8 2-1.3a6 6 0 0 0 1.7-4.4V81a6 6 0 0 0-3.5-5.6c-.8-.4-1.6-.5-2.4-.5zm2.4 2.8a4 4 0 0 1 1.5 3.1c0 .8-.2 1.5-.7 2.2a3.9 3.9 0 0 1-6.6-.4 3 3 0 0 1-.4-1.8c0-.8.2-1.5.6-2.2.3-.5.8-1 1.4-1.2a4 4 0 0 1 4.2.3zm-56-2.7L37 83.3l1.4-8.5H35l-3 17.9h3.4l1.6-9.4 3 9.4h4l-3.1-9 6-8.9h-4zm38.5 4.6H73l-2.3 13.3h3.4l1.6-9.9c0-.3.4-.5.7-.5h3.4c.4 0 .7.3.6.7L79 92.7h3.4l1.8-11v-.4c0-1-.8-2-1.9-2h-1zm-15 0L64 92.7h3.5l2.2-13.3h-3.4zm-17.1 0l-2.3 13.3h3.4l2.2-13.3H49zm7 0l-.6 3-1.8 10.3h3.5l1.6-10h.9c1 0 2.1 0 3.2-.2l.5-3.1a32.4 32.4 0 0 1-7.3 0zm30.2 34.5l-3.8 12.7h2l.7-2h5.3l.6 2h2.1L89.6 114h-3.3zm1.6 1.5l2 7h-4l2-7zm-9.4.6h2v-2h-2v2zm-5-2v6h-6v-6h-2v12.6h2v-4.5h6v4.5h2V114h-2zm21.7 12.6h2.2V114h-2.2v12.7zm-16.7-.2h2V117h-2v9.5z">
              </path></g></svg>
            </div>
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" style="padding-left: 5%;padding-right: 5%;margin: 0 auto;position: absolute;top: 60px;display: block;left: 0;right: 0;">
                  <div class="description" style="margin: 0 auto;">
                    <h1 style="text-align: center;">El salto hacia el futuro</h1>
                    <p class="texto" style="text-align: center;">El Kirin 980 es el primer chipset de proceso
móvil de 7 nm con un rendimiento más potente y
menor consumo de energía.</p>
                  </div>
                </div>
                <div id="segundo_div" data-aos-once="true" data-aos="fade-left"  style="padding-left: 5%;padding-right: 5%;margin: 0 auto;position: absolute;top: 490px;display: block;left: 0;right: 0;">
                  <div class="description" style="margin: 0 auto;">
                    <div class="p30-section-title4-details" style="display: -webkit-box;display: -ms-flexbox;display: flex;-webkit-box-pack: justify;-ms-flex-pack: justify;justify-content: space-between;-webkit-box-align: center;-ms-flex-align: center;align-items: center;">
                        <div class="p30-powerSpeed" style="position: relative;text-align: center;">
                            <h1 class="p30-h2">7 NM</h1>
                            <p class="p30-p">de procesador</p>
                        </div>
                        <div class="p30-powerSpeed" style="position: relative;text-align: center;">
                            <h1 class="p30-h2">128 GB</h1>
                            <p class="p30-p">de capacidad</p>
                        </div>
                        <div class="p30-powerSpeed" style="position: relative;text-align: center;">
                            <h1 class="p30-h2">6 GB</h1>
                            <p id="p30-speedyRecovery-trigger" class="p30-p">de RAM</p>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      
      
      <div class="section section-five">
        <section>
          <img src="//consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/phones/p30/img/phone-charge/pic_phone_md.png" alt="p30" style="display:none;position:absolute;z-index:-1;width:100%;width: 80%;
margin-top: 25%;">
          <div class="content-slider-5 slider slider_huawei_p20_fot" style="position:relative;background:black">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-7 col-md-5">
                  <div class="description">
                    <h1 style="color:white !important">Recarga en minutos</h1>
                    <p class="texto first" style="color:white !important">La carga ya no es una molestia, sino una tarea sencilla. Carga fácilmente tu teléfono durante el desayuno o la pausa del café con la Supercarga HUAWEI certificada por TÜV Safety.</p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-5" id="celular-conectable">
                    <img class="img-responsive center-block" src="{{asset('images/landings/p30/recarga-cable.png')}}" alt="p30" style="max-height: 500px;">
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      
      
      <div class="section section-six">
        <section>
          <div class="content-slider-8" style="background:white">
            <div class="container">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="row">
                      <div data-color="azul" class="equipos equipo-azul active col-md-4">
                        <img id="img-responsive-new" style="max-width: 320px;" class="center-block" src="https://tienda.bitel.com.pe/storage/images/HWP30_20190603.jpg" alt="huawei">
                      </div>
                      <div class="col-xs-12 col-sm-12 col-md-6">
                        <div class="informacion-reserva"><div class="content-reserva" style="background: #fff;padding: 20px 30px;border: 1px solid #E4E4E4;border-radius: 4px;">
                          <div class="col-xs-12">
                            <h1 style="font-size: 48px;
                                  margin-bottom: 50px;color:black !important;">Descubre más sobre
                              HUAWEI P30</h1>
                          </div>
                          <div class="row" style="margin: 0 auto;" id="huawei_row">
                            <div class="col-xs-12">
                              <div class="title text-center">
                                <p class="text-secundary" style="font-weight: bold;color: #129eb2;font-size: 18px;">Portabilidad o Línea nueva</p>
                              </div>                              
                            </div>
                            <div class="col-xs-12">
                              <div class="price text-center">
                                <p class="equipo" style="color: #4a4a4a;">s/2739</p>
                                <p style="color: #20a0a2;">Precio de equipo en plan Flash S/ 49.9</p>
                              </div>
                            </div>
                            <div class="col-xs-12" style="padding: 15px;">
                              <a onclick="{fbq('track', 'HP30Portabilidad');}" href="http://bit.ly/2FhsMb5"><button style="background: black;color: white;border-radius: 25px;margin: 0 auto;border: none;min-width: 100px;padding: 10px;font-size: 14px;font-weight: bold;display: block;">Resérvalo</button>
                              </a>
                            </div>
                            <div class="col-xs-12">
                              <div class="detalle-plan text-center">
                                <p style="color: #129EA2;font-weight: bold;font-size: 18px;">Prepago</p>
                              </div>
                            </div><div class="col-xs-12" style="padding-top: 15px;padding-bottom: 15px;">
                              <div class="price text-center">
                                <p class="equipo" style="color: #4a4a4a;">s/2999</p>
                                <p style="color: #20a0a2;">Precio Prepago</p>
                              </div>
                            </div>
                            <a onclick="{fbq('track', 'HP30Prepago');}"  href="http://bit.ly/2Ib4ktN"><button style="background: black;color: white;border-radius: 25px;margin: 0 auto;border: none;min-width: 100px;padding: 10px;font-size: 14px;font-weight: bold;display: block;">Resérvalo</button></a>
                            
                            
                          </div>
                        </div>
                        </div>
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>


@endsection

@section('js')


<script type="text/javascript" src="{{asset('js/p30/general.js')}}"></script>
<script type="text/javascript" src="{{asset('js/p30/landing-special.js')}}"></script>
<script type="text/javascript">
if($(document).width()<768){
ocultar_navslide();
}
function flecha_accion(){
    $("#navslide").animate({left: '78%'});
    $("#flecha").animate({left: '100%'});
    ocultar_navslide();
}
function ocultar_navslide(){
setTimeout(function(){ 
$("#navslide").animate({left: '100%'});
$("#navslide").css('right','auto');
$("#flecha").animate({right: '0'});
$("#flecha").css('left','auto');
}, 3000);
}/*
  function video_accion(){
    $("#exampleModal").css("padding-left","0 !important");
    if($(window).width()<320){  
    }
    else{
      $("#exampleModal").css("padding-right","17px !important");
    }
    $("#exampleModal").modal('show');
    $("video").get(0).play();
  }   
  function video_cerrar(){
        $("video").get(0).pause();
  };*/
</script>

@endsection

