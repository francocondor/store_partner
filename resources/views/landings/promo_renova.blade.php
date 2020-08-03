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

    <link type="text/css" rel="stylesheet" href="{{asset('css/promo_renueva/general.css')}}">
    <link type="text/css" rel="stylesheet" href="{{asset('css/promo_renueva/bpro.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('css/landing-slick.css')}}"/>
    <style type="text/css">
      .exito{
        display: none;
      }
      #first-sub-container {
          width: 90%;
      }
      .adquierelo{
        text-align:left;
      }
      #navslide ul li a{
        padding:10px;
      }
      #navslide{
        left:unset;
      }
      @media only screen and (max-width: 767px) {
        .section-six .section-one-responsive{
          height:100vh;
        }
      }
      .form-elegant .font-small {
          font-size: 0.8rem; }

      .form-elegant .z-depth-1a {
          -webkit-box-shadow: 0 2px 5px 0 rgba(55, 161, 255, 0.26), 0 4px 12px 0 rgba(121, 155, 254, 0.25);
          box-shadow: 0 2px 5px 0 rgba(55, 161, 255, 0.26), 0 4px 12px 0 rgba(121, 155, 254, 0.25); }

      .form-elegant .z-depth-1-half,
      .form-elegant .btn:hover {
          -webkit-box-shadow: 0 5px 11px 0 rgba(85, 182, 255, 0.28), 0 4px 15px 0 rgba(36, 133, 255, 0.15);
          box-shadow: 0 5px 11px 0 rgba(85, 182, 255, 0.28), 0 4px 15px 0 rgba(36, 133, 255, 0.15); }

      .form-elegant .modal-header {
          border-bottom: none; }

      .modal-dialog .form-elegant .btn .fab {
          color: #2196f3!important; }

      .form-elegant .modal-body, .form-elegant .modal-footer {
          font-weight: 400; }
      .form-error{
        color:red;
      }
      .form-success{
        color:green;
      }
      @media screen and (max-width: 767px){
        #p20-1{
          width:10% !important;
        }
        #p20-3{
          width:30% !important;
        }
        .icon-detail p{
          max-width:none !important;
        }
        .slider h2.B-9504-Copy-2, .adquierelo .text-style-1, .adquierelo .text-style-1 font, .adquierelo .text-style-2, .adquierelo .text-style-2 font{
        font-size:25px !important;
        }
      .slick-slide .icon-img{
          width:65% !important;
        }
      }
      /*******180919******/
      @media screen and (max-width: 480px) and (max-height: 520px){
        .adquierelo .text-style-2{
          font-size: 22px !important;
        } 
        .adquierelo .text-style-1 font{
          font-size: 20px !important;
        }
        #button-container > div:first-child {
          display: none !important;
        }
        .landing-slider a:first-child{
          display:block !important;
        }
        .landing-slider{
          position: relative;
        }
      }
      /*******end of 180919******/
    </style>

@endsection

@section('content')

    <script>

    function enviar(){
      $("#error").hide();
      //validacion
      var solo_letras=/^[A-Za-z\_\-\.\s\xF1\xD1]+$/;
      var solo_email= /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
      if($("#nombre").val()=='' || !solo_letras.test($("#nombre").val())){
        $("#error").html("<br>Verifique su nombre");
        $("#error").show();
        $("#nombre").focus();
        $("#btn-reservar").prop('disabled',false);
        return false;
      }
      if($("#email").val()=='' || !solo_email.test($("#email").val())){
        $("#error").html("<br>Verifique su correo");
        $("#error").show();
        $("#email").focus();
        $("#btn-reservar").prop('disabled',false);
        return false;
      }
      if(($("#dni").val()).length!=8 && ($("#dni").val()).length!=11){//20190918
        $("#error").html("<br>Verifique su DNI o RUC");
        $("#error").show();
        $("#dni").focus();
        $("#btn-reservar").prop('disabled',false);
        return false;
      }
      if(($("#telefono").val()).length!=7 && ($("#telefono").val()).length!=9){
        $("#error").html("<br>Verifique su teléfono");
        $("#error").show();
        $("#telefono").focus();
        $("#btn-reservar").prop('disabled',false);
        return false;
      }
      $("#enviar_button").prop("disabled",true);$.ajax({
          type: 'post',
          url: "{{url('reservar_mate')}}",
          data: {
              '_token': $('meta[name="csrf-token"]').attr('content'),
              'nombre': $('#nombre').val(),
              'dni': $('#dni').val(),
              'email': $('#email').val(),
              'telefono': $('#telefono').val(),
              'tag': $('#Form-tag').val()
          },
          success: function(response)
          {
              if(response==1){
                $("#myModalLabel strong").removeClass("form-error");
                $("#myModalLabel strong").addClass("form-success");
                $("#myModalLabel strong").html("Enviado");  
                $(".exito").show();   
                $(".fallo-o-inicio").hide();         
              }
              if(response==2){
                  alert("Ya existe una reserva con su DNI o RUC");
                  setTimeout(function(){ location.reload(); }, 2500);
                  $(".fallo-o-inicio").show();
                  $(".exito").hide();                          
              }
          },
          error: function(jqXHR, textStatus, errorThrown) {
            $(".fallo-o-inicio").show();         
            $(".exito").hide();                 
            alert("Ha ocurrido un error. Inténtelo más tarde.");
            location.reload();
          }
      });
    }
    function popup(tag){
      $("#myModalLabel strong").removeClass("form-error");
      $("#myModalLabel strong").removeClass("form-success");
      $("#myModalLabel strong").html("Reservar");  
      $("#elegantModalForm input").val("");
      $("#enviar_button").prop("disabled",false);
      $("#Form-tag").val(tag);
      console.log("tag:"+tag);
      $(".fallo-o-inicio").show();        
      $(".exito").hide();                             
      $("#elegantModalForm").modal("show");
    }
  </script>

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
            <li data-menuanchor="slide2" class="slide slide2"><a href="#slide2">Huawei P20Lite
              </a></li>
            <li data-menuanchor="slide3" class="slide slide3"><a href="#slide3">Huawei P20</a></li><li data-menuanchor="slide4" class="slide slide4"><a href="#slide4">LG G6</a></li>
            <li data-menuanchor="slide5" class="slide slide5"><a href="#slide5">Samsung S7</a></li>
            <li data-menuanchor="slide6" class="slide slide6"><a href="#slide6">Samsung S7 Edge</a></li>
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
">Imágenes referenciales</p>
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="
">
            <div id="first-sub-container">
              <p class="Tu-familia-y-amigos">La mejor promoción para que renueves tu equipo</p>
              <p class="Equipos-desde" style="margin-bottom:0">
              Equipos desde <font class="small-device">S/859.90
                </font>
                            </p>
                            <p class="noventa-y-nueve">
                              S/859.90
                            </p><p class="hidden-sm hidden-xs" style="
                  font-size: 10px;
                  color: black;
                  position: absolute;
                  bottom: 0;
                  margin-bottom: -5px;
              ">Imágenes referenciales</p>
            </div>
          </div>        
          
        </div>
        <div id="white-bar">
          <div class="row">
            <div class="col-lg-12 col-md-3 hidden-sm hidden-xs">              
              <p class="Ver-mas-info" style="font-weight:bold">Ver más info:</p>
            </div>
            <div class="col-lg-12 col-md-2 hidden-sm hidden-xs">
              <a class="btn first-button" href="#slide5" style="display: inline;margin-right:5px">Samsung S7</a>
              <a class="btn first-button" href="#slide6" style="display: inline;margin-right:5px">Samsung S7 Edge</a>
              <a class="btn first-button" href="#slide2" style="display: inline;margin-right:5px">Huawei P20</a>
              <a class="btn first-button" href="#slide3" style="display: inline;margin-right:5px">Huawei P20Lite</a>
              <a class="btn first-button" href="#slide4" style="display: inline;margin-right:5px">LG G6</a>
            </div>
          </div>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" style="position: absolute;right: 0;z-index: 1;bottom: 25px;">
            <img style="z-index: 9999999999;display: block;" src="https://tienda.bitel.com.pe/images/landings/bpro/celulares_portada_tienda_bitel.png" class="celulares img-responsive">
        </div>
      </div>

      <div class="section section-two">
        <section class="section-one-responsive">
          <div class="content-slider-2 slider slider_meizu_m6t">
                <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-12 col-sm-8 col-md-6 general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Huawei P20 Lite</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1299</strike></font> </span><span class="text-style-2">Ahora: S/859</span><br> en renovación con tu plan</h2>
              
                    
                    <div class="landing-slider">
<a href="javascript:popup('Huawei P20 Lite')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img class="icon-img center-block" src="{{asset('/images/landings/bpro/P20_Lite_TiendaBitel.png')}}"

                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="{{asset('/images/landings/bpro/P20_Lite_TiendaBitel.png')}}"


                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="{{asset('/images/landings/bpro/P20_Lite_TiendaBitel.png')}}"


                         class="Group-8">
                       </li>
                     </ul>
                    </div>


                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-6 caracteristicas" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-xs hidden-sm">Huawei P20 Lite</h2>
                    <h2 class="adquierelo hidden-xs hidden-sm"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1299</strike></font> </span><span class="text-style-2">Ahora: S/859</span><br> en renovación con tu plan</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape.svg">
                        <p>Android 8.0<br>(Nougat)</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape1.svg">
                        <p>5.84’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape2.svg">
                        <p>2.36 GHz Kirin<br>659 CPU, 8 núcleos</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape3.svg">
                        <p>64GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape4.svg">
                        <p>16MP / 16MP</p>
                      </div>
                    </div>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:center">
                        <a class="btn first-button" href="javascript:popup('Huawei P20 Lite')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">ADQUIÉRELO AHORA</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
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
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Huawei P20</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1999</strike></font> </span><span class="text-style-2">Ahora: S/1449</span><br> en renovación con tu plan</h2>

                    <div class="landing-slider">
<a href="javascript:popup('Huawei P20')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


                         class="Group-8 center-block icon-img">
                       </li>
                     </ul>
                    </div>

                  </div>
                  <div class="hidden-xs hidden-sm col-md-1" style="padding-top: 100px;text-align: justify;"></div>
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-sm hidden-xs">Huawei P20</h2>
                    <h2 class="adquierelo hidden-sm hidden-xs"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1999</strike></font> </span><span class="text-style-2">Ahora: S/1449</span><br> en renovación con tu plan</h2>
                    <div id="icon-container">
                      <div class="icon-detail" id="p20-1">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape.svg">
                        <p>Android8.1 + EMUI8.1</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape1.svg">
                        <p>5.8’’</p>
                      </div>
                      <div class="icon-detail" id="p20-3">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape2.svg">
                        <p>GHz Kirin 970 CPU, Octa - core + i7 co - processor</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape3.svg">
                        <p>128GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape4.svg">
                        <p>24MP / 20MP</p>
                      </div>
                    </div><br class="hidden-xs">
                    <div id="button-container" class="row">                      
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:center">
                        <a class="btn first-button" href="javascript:popup('Huawei P20')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">ADQUIÉRELO AHORA</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/prepago/bitel/b8506/bifri-5" style="float:left;" style="float:left;
    background-color: #008c95;
">LLÉVALO EN PREPAGO</a>
                      </div>
                    </div>
                  </div>
                  <div data-aos-once="true" data-aos="fade-right" class="hidden-xs hidden-sm col-md-5" class="general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Huawei P20</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1999</strike></font> </span><span class="text-style-2">Ahora: S/1449</span><br> en renovación con tu plan</h2>
<div class="landing-slider">
<a href="javascript:popup('Huawei P20')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/P20_TiendaBitel.png"


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
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">LG G6</h2>
                    <h2 class="adquierelo hidden-lg hidden-md" style="color:white"><span class="text-style-1" style="color:white">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1749</strike></font></span><span class="text-style-2" style="color:#fff200">Ahora: S/1359</span><br> en renovación con tu plan.90</h2>

                    <div class="landing-slider">
<a href="javascript:popup('LG G6')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/G6_Tienda_bitel.png"

                         class="Group-8 icon-img center-block">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/G6_Tienda_bitel.png"


                         class="Group-8 icon-img center-block">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/G6_Tienda_bitel.png"


                         class="Group-8 icon-img center-block">
                       </li>
                     </ul>
                    </div>

                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-sm hidden-xs">LG G6</h2>
                    <h2 class="adquierelo hidden-sm hidden-xs" style="color:white"><span class="text-style-1" style="color:white">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1749</strike></font> </span><span class="text-style-2" style="color:#fff200">Ahora: S/1359</span><br> en renovación con tu plan</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape.svg">
                        <p>Android 8.1</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape1.svg">
                        <p>5’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape2.svg">
                        <p>Spreadtrum<br>SC9850</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape3.svg">
                        <p>16GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape4.svg">
                        <p>13MP / 8MP</p>
                      </div>
                    </div><br>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:center">
                        <a class="btn first-button" href="javascript:popup('LG G6')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">ADQUIÉRELO AHORA</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
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
      
      <div class="section section-five">
        <section>
          <div class="content-slider-5 slider slider_huawei_p20_fot avoid_p20fot">
              <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-12 col-sm-8 hidden-md hidden-lg" class="caracteristicas" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Samsung S7</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1799</strike></font> </span><span class="text-style-2">Ahora: S/1149</span><br> en renovación con tu plan</h2>

                    <div class="landing-slider">
<a href="javascript:popup('Samsung S7')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"

                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"

                         class="Group-8 center-block icon-img">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"


                         class="Group-8 center-block icon-img">
                       </li>
                     </ul>
                    </div>

                  </div>
                  <div class="hidden-xs hidden-sm col-md-1" style="padding-top: 100px;text-align: justify;"></div>
                  <div class="col-xs-12 col-sm-8 col-md-6" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-sm hidden-xs">Samsung S7</h2>
                    <h2 class="adquierelo hidden-sm hidden-xs"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1799</strike> </font></span><span class="text-style-2">Ahora: S/1199</span><br> en renovación con tu plan</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape.svg">
                        <p>Android 5.1</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape1.svg">
                        <p>5.1’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape2.svg">
                        <p>2.3 GHz Octa Core<br>SC7731</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape3.svg">
                        <p>32GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape4.svg">
                        <p>12MP / 5MP</p>
                      </div>
                    </div><br>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:center">
                        <a class="btn first-button" href="javascript:popup('Samsung S7')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">ADQUIÉRELO AHORA</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
                        <a class="btn first-button" href="https://tienda.bitel.com.pe/prepago/bitel/b8506/bifri-5" style="float:left;" style="float:left;
    background-color: #008c95;
">LLÉVALO EN PREPAGO</a>
                      </div>
                    </div>
                  </div>
                  <div data-aos-once="true" data-aos="fade-right" class="hidden-xs hidden-sm col-md-5" class="general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Samsung S7</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1799</strike></font> </span><span class="text-style-2">Ahora: S/1199</span><br> en renovación con tu plan</h2>
<div class="landing-slider">
<a href="javascript:popup('Samsung S7')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"

                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"

                         class="Group-8 center-block icon-img unique-image">
                       </li>
                        <li>
                          <img src="https://tienda.bitel.com.pe/images/landings/bpro/S7_TiendaBitel.png"


                         class="Group-8 center-block icon-img unique-image">
                       </li>
                     </ul>
                    </div>

                  </div>
              </div>
          </div>
        </section>
      </div>

      <div class="section section-six">
        <section class="section-one-responsive">
          <div class="content-slider-6 slider slider_meizu_m6t" style="background: url(images/landings/bpro/group-2@3x.png) no-repeat;
        background-size: auto;
    background-size: cover !important;">
                <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-12 col-sm-8 col-md-6 general" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-lg hidden-md">Samsung S7 Edge</h2>
                    <h2 class="adquierelo hidden-lg hidden-md"><span class="text-style-1">Precio promocional: <br><font style="font-size:32px;">Antes: <strike>S/1979</strike></font> </span><span class="text-style-2">S/1299</span><br> en renovación con tu plan</h2>
              
                    
                    <div class="landing-slider">
<a href="javascript:popup('Samsung S7 Edge')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
    position: absolute;
    left: -25px;
    top: 35%;
    z-index: 999;
    display: none;
" class="btn first-button">ADQUIERELO</a>
                      <ul>
                        <li>
                          <img class="icon-img center-block" src="https://tienda.bitel.com.pe/images/landings/bpro/s7_edge_tienda_bitel.png"

                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="https://tienda.bitel.com.pe/images/landings/bpro/s7_edge_tienda_bitel.png"


                         class="Group-8">
                       </li>
                        <li>
                          <img class="icon-img center-block" src="https://tienda.bitel.com.pe/images/landings/bpro/s7_edge_tienda_bitel.png"


                         class="Group-8">
                       </li>
                     </ul>
                    </div>


                  </div>
                  <div class="col-xs-12 col-sm-8 col-md-6 caracteristicas" style="text-align: justify;">
                    <h2 class="B-9504-Copy-2 hidden-xs hidden-sm">Samsung S7 Edge</h2>
                    <h2 class="adquierelo hidden-xs hidden-sm"><span class="text-style-1">Precio promocional:<br><font style="font-size:32px;">Antes: <strike>S/1979</strike> </font></span><span class="text-style-2">Ahora: S/1299</span><br> en renovación con tu plan</h2>
                    <div id="icon-container">
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape.svg">
                        <p>Android 5.1</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape1.svg">
                        <p>5’’</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape2.svg">
                        <p>2.3 GHz Octa Core</p>
                      </div>
                      <div class="icon-detail">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape3.svg">
                        <p>32GB<br>Interna</p>
                      </div>
                      <div class="icon-detail" style="border-right: none">
                        <img src="https://tienda.bitel.com.pe/images/landings/bpro/combined-shape4.svg">
                        <p>12MP / 5MP</p>
                      </div>
                    </div>
                    <div id="button-container" class="row">                      
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align:center">
                        <a class="btn first-button" href="javascript:popup('Samsung S7 Edge')" style="
    background-color: #9f5ed9;
    box-shadow: 0 2px 0 0 #520167ab;
">ADQUIÉRELO AHORA</a>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
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
    </div>

  <!-- Modal -->
<div style="z-index: 999999999999999999999999999999;" class="modal fade" id="elegantModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <!--Content-->
    <div class="modal-content form-elegant">
      <!--Header-->
      <div class="modal-header text-center">
        <h3 class="modal-title w-100 dark-grey-text font-weight-bold my-3" id="myModalLabel"><strong>Reservar</strong></h3>
        <button style="position: absolute;
    top: 10px;
    right: 10px;" type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <meta name="csrf" value="{{ csrf_token() }}">
      <input type="hidden" value="" id="Form-tag">
      <!--Body-->
      <div class="modal-body mx-4 fallo-o-inicio">
        <label id="error" style="display:none;color:red;font-weight:bold;font-size:130%"></label>
        <!--Body-->
        <div class="md-form mb-5">
          <input type="text" id="nombre" class="form-control validate" placeholder="Nombre"
           tabindex="0"><label></label>
        </div>

        <div class="md-form mb-5">
          <input type="text" id="dni" class="form-control validate" placeholder="DNI o RUC"
           tabindex="1"><label></label>
        </div>

        <div class="md-form mb-5">
          <input type="text" id="telefono" class="form-control validate" placeholder="Teléfono"
           tabindex="2"><label></label>
        </div>

        <div class="md-form pb-3">
          <input type="email" id="email" class="form-control validate" placeholder="E-mail"
           tabindex="3"><label></label>
        </div>

        <div class="text-center mb-3">
          <button tabindex="4" id="enviar_button" type="button" class="btn blue-gradient btn-block btn-rounded z-depth-1a" onclick="enviar()">Enviar</button>
        </div>

      </div>
      <div class="modal-body mx-4 exito">
        
        <p align="center">Su mensaje fue enviado exitosamente, Un agente de Bitel se estara comunicando en breve desde el numero 930123123.</p>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>

@endsection

@section('js')

<script type="text/javascript" src="{{asset('js/promo_renueva/general.js')}}"></script>
<script type="text/javascript" src="{{asset('js/promo_renueva/landing-special.js')}}"></script>
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