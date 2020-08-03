@extends('layouts.master_clean')

@section('css')

    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,600,700,800,900">
    <link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">

    <!--[if lte IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/ie-explorer-9.css" />

    <![endif]-->

    <!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="css/ie-explorer-8.css" />
    <script src="js/css3-mediaqueries.min.js"></script>
    <![endif]-->

    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet"> 

    <link type="text/css" rel="stylesheet" href="{{asset('css/bpro/general.css')}}">
    <link type="text/css" rel="stylesheet" href="{{asset('css/bpro/bpro.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('css/landing-slick.css')}}"/>

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

    <div id="navslide" class="hidden-lg hidden-md">
        <ul>
          <li data-menuanchor="slide2" class="slide slide2"><a href="#slide2">
              B9504
              </a></li><li data-menuanchor="slide3" class="slide slide3"><a href="#slide3">B8506</a></li><li data-menuanchor="slide4" class="slide slide4"><a href="#slide4">BPRO</a></li>
        </ul>
    </div>
  
    <div id="fullpage">

      <div id="first-container" class="section section-one section-initial" style="overflow:hidden">
        <p class="hidden-lg hidden-md" style="
    font-size: 7px;
    color: white;
    position: absolute;
    writing-mode: vertical-lr;
    transform: rotate(180deg);
    left: 5px;
    bottom: 120px;
">* Precio aplica para el equipo B8506 en portabilidad con Plan iChip 29.90</p>
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="
">
            <div id="first-sub-container">
              <p class="Tu-familia-y-amigos">¡Tu familia y amigos
                        mejor comunicados
              a un super precio!</p>
              <p class="Equipos-desde" style="margin-bottom:0">
              Equipos desde <font class="small-device">S/129.90
                <font style="
                  font-size: 15px;
                  position: absolute;
                  margin-top: 5px;
              ">*</font></font>
                            </p>
                            <p class="noventa-y-nueve">
                              S/129.90<font style="
                  font-size: 15px;
                  position: absolute;
                  margin-top: 5px;
              ">*</font>
                            </p><p class="hidden-sm hidden-xs" style="
                  font-size: 10px;
                  color: black;
                  position: absolute;
                  bottom: 0;
                  margin-bottom: -5px;
              ">* Precio aplica para el equipo B8506 en portabilidad con Plan iChip 29.90</p>
            </div>
          </div>        
          
        </div>
        <div id="white-bar">
          <div class="row">
            <div class="col-lg-12 col-md-3 hidden-sm hidden-xs">              
              <p class="Ver-mas-info" style="font-weight:bold">Ver más info:</p>
            </div>
            <div class="hidden-lg hidden-md col-sm-4 col-xs-4">
              <a class="btn first-button" href="#slide4">B PRO</a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-4">
              <a class="btn first-button" href="#slide2">B9504</a>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-4">
              <a class="btn first-button" href="#slide3">B 8506</a>
            </div>
            <div class="col-lg-3 col-md-3 hidden-sm-4 hidden-xs">
              <a class="btn first-button" href="#slide4">B PRO</a>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="position: absolute;right: 0;z-index: 1;bottom: 25px;">
            <img style="z-index: 9999999999;display: block;" src="{{asset('images/landings/bpro/celulares.png')}}" srcset="{{asset('images/landings/bpro/celulares@2x.png')}} 2x, {{asset('images/landings/bpro/celulares@3x.png')}} 3x" class="celulares img-responsive">
        </div>
      </div>

      <div class="section section-two">
        <section class="section-one-responsive">
          <div class="content-slider-2 slider slider_meizu_m6t">
                <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-12 col-sm-8 col-md-6 general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">B 9504</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Adquiérelo desde </span><span class="text-style-2">S/139</span><br> en portabilidad con Plan iChip 29.90</h2>
              
                    
                    <div class="landing-slider">
                      <ul>
                        <li>
                          <img class="icon-img center-block" src="{{asset('images/landings/bpro/group-8.png')}}"

                         srcset="{{asset('images/landings/bpro/group-8@2x.png')}} 2x, {{asset('images/landings/bpro/group-8@3x.png')}} 3x"

                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="{{asset('images/landings/bpro/group-8.png')}}"

                         srcset="{{asset('images/landings/bpro/group-8@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/group-8@3x.png')}} 3x"

                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="{{asset('images/landings/bpro/group-8.png')}}"

                         srcset="{{asset('images/landings/bpro/group-8@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/group-8@3x.png')}} 3x"

                         class="Group-8">
                       </li>
                     </ul>
                    </div>


                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-6 caracteristicas" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-xs hidden-sm">B 9504</h2>
                    <h2 class="adquierelo hidden-xs hidden-sm"><span class="text-style-1">Adquiérelo desde </span><span class="text-style-2">S/139</span><br> en portabilidad con Plan iChip 29.90</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape.svg')}}">
                        <p>Android 7.0<br>(Nougat)</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape1.svg')}}">
                        <p>5’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape2.svg')}}">
                        <p>Spreadtrum<br>SC9832</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape3.svg')}}">
                        <p>8GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="{{asset('images/landings/bpro/combined-shape4.svg')}}">
                        <p>2MP / 5MP</p>
                      </div>
                    </div>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/postpago/bitel/b9504/portabilidad/ichip-plus-29_90/6-meses" style="float:right;
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">LLÉVALO CON PLAN</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/prepago/bitel/b9504/bifri-5" style="float:left;
    background-color: #008c95;
">LLÉVALO EN PREPAGO</a>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
        </section>
      </div>
      <div class="section section-three">
        <section>
          <div class="content-slider-3 slider slider_huawei_p20_fot avoid_p20fot">
              <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-12 col-sm-8 hidden-md hidden-lg" class="caracteristicas" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">B 8506</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Adquiérelo desde </span><span class="text-style-2">S/129</span><br> en portabilidad con Plan iChip 29.90</h2>

                    <div class="landing-slider">
                      <ul>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img">
                       </li>
                     </ul>
                    </div>

                  </div>
                  <div class="hidden-xs hidden-sm col-md-1" style="padding-top: 100px;text-align: justify;"></div>
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-sm hidden-xs">B 8506</h2>
                    <h2 class="adquierelo hidden-sm hidden-xs"><span class="text-style-1">Adquiérelo desde </span><span class="text-style-2">S/129</span><br> en portabilidad con Plan iChip 29.90</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape.svg')}}">
                        <p>Android Go</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape1.svg')}}">
                        <p>5’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape2.svg')}}">
                        <p>Spreadtrum<br>SC7731</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape3.svg')}}">
                        <p>8GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="{{asset('images/landings/bpro/combined-shape4.svg')}}">
                        <p>2MP / 5MP</p>
                      </div>
                    </div><br>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/postpago/bitel/b8506/portabilidad/ichip-plus-29_90/6-meses" style="float:right;
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">LLÉVALO CON PLAN</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/prepago/bitel/b8506/bifri-5" style="float:left;" style="float:left;
    background-color: #008c95;
">LLÉVALO EN PREPAGO</a>
                      </div>
                    </div>
                  </div>
                  <div data-aos-once="true" data-aos="fade-right" class="hidden-xs hidden-sm col-md-5" class="general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">B 8506</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Adquiérelo desde </span><span class="text-style-2">S/129</span><br> en portabilidad con Plan iChip 29.90</h2>
<div class="landing-slider">
                      <ul>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/img-02.png')}}"

                         srcset="{{asset('images/landings/bpro/img-02@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/img-02@3x.png')}} 3x"

                         class="Group-8 center-block icon-img unique-image">
                       </li>
                     </ul>
                    </div>

                  </div>
              </div>
          </div>
        </section>
      </div>
      <div class="section section-four" style="overflow: hidden;">
        <section>
          <div class="content-slider-4 slider meizu_m6t">
              <div class="row">
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">B PRO</h2>
                    <h2 class="adquierelo hidden-lg hidden-md" style="color:white"><span class="text-style-1" style="color:white">Adquiérelo desde </span><span class="text-style-2" style="color:#fff200">S/229</span><br> en portabilidad con Plan iChip+ 39.90</h2>

                    <div class="landing-slider">
                      <ul>
                        <li>
                          <img src="{{asset('images/landings/bpro/group-10.png')}}"

                         srcset="{{asset('images/landings/bpro/group-10@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/group-10@3x.png')}} 3x"

                         class="Group-8 icon-img center-block">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/group-10.png')}}"

                         srcset="{{asset('images/landings/bpro/group-10@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/group-10@3x.png')}} 3x"

                         class="Group-8 icon-img center-block">
                       </li>
                        <li>
                          <img src="{{asset('images/landings/bpro/group-10.png')}}"

                         srcset="{{asset('images/landings/bpro/group-10@2x.png')}} 2x,

                                 {{asset('images/landings/bpro/group-10@3x.png')}} 3x"

                         class="Group-8 icon-img center-block">
                       </li>
                     </ul>
                    </div>

                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-sm hidden-xs">B PRO</h2>
                    <h2 class="adquierelo hidden-sm hidden-xs" style="color:white"><span class="text-style-1" style="color:white">Adquiérelo desde </span><span class="text-style-2" style="color:#fff200">S/229</span><br> en portabilidad con Plan iChip+ 39.90</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape.svg')}}">
                        <p>Android 8.1</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape1.svg')}}">
                        <p>5’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape2.svg')}}">
                        <p>Spreadtrum<br>SC9850</p>
                      </div>
                      <div class="icon-detail">
                        <img src="{{asset('images/landings/bpro/combined-shape3.svg')}}">
                        <p>16GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="{{asset('images/landings/bpro/combined-shape4.svg')}}">
                        <p>13MP / 8MP</p>
                      </div>
                    </div><br>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/postpago/bitel/b-pro/linea-nueva/ichip-plus-39_90/6-meses" style="float:right;
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">LLÉVALO CON PLAN</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/prepago/bitel/b-pro/bifri-5" style="float:left;
    background-color: #008c95;
">LLÉVALO EN PREPAGO</a>
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

<script type="text/javascript" src="{{asset('js/bpro/general.js')}}"></script>
<script type="text/javascript" src="{{asset('js/bpro/landing-special.js')}}"></script>
<script type="text/javascript" src="{{asset('js/landing-slick.js')}}"></script>
<script type="text/javascript">
  let stateCheck = setInterval(() => {
  if (document.readyState === 'complete') {
    clearInterval(stateCheck);
    // document ready
    $(".landing-slider ul").slick({
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      slidesToScroll: 1,
      vertical: true,
      prevArrow: false,
      nextArrow: false,
      autoplay: false
    });
  }
}, 100);
</script>

@endsection