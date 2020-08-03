@extends('layouts.master_clean')

@section('css')
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="{{asset('css/meizu_m6t.min.css')}}">
<link type="text/css" rel="stylesheet" href="{{asset('css/landing-reset.css')}}">
@endsection

@section('content')
<!-- <header>
</header> -->
<div id="navslide">
      <ul> 
        <li data-menuanchor="meizu" class="slide slide1"><a href="#meizu">
            <div class="image"><img src="{{asset('images/landings/meizu_m6t/navslide/meizu-logo-2.svg')}}" alt="meizu" width="33" height="33"></div>
            <div class="description"><span class="text-title">Nuevo Meizu M6T</span><span>Equipo exclusivo de Bitel</span></div></a></li>
        <li data-menuanchor="camara" class="slide slide2"><a href="#camara">
            <div class="image"><img src="{{asset('images/landings/meizu_m6t/navslide/icon-camara.svg')}}" alt="camara"></div>
            <div class="description"><span class="text-title">DUAL Cámara LEICA</span><span>Asistido por IA</span></div></a></li>
        <li data-menuanchor="pantalla" class="slide slide3"><a href="#pantalla">
            <div class="image"><img src="{{asset('images/landings/meizu_m6t/navslide/icon-pantalla.svg')}}" alt="pantalla"></div>
            <div class="description"><span class="text-title">Pantalla FHD+</span><span>5,8 pulgadas, colores vivos</span></div></a></li>
        <li data-menuanchor="procesador" class="slide slide4"><a href="#procesador">
            <div class="image"><img src="{{asset('images/landings/meizu_m6t/navslide/icon-procesador.svg')}}" alt="procesador"></div>
            <div class="description"><span class="text-title">Procesador neuronal</span><span>Kirin 970</span></div></a></li>
        <li data-menuanchor="bateria" class="slide slide5"><a href="#bateria">
            <div class="image"><img src="{{asset('images/landings/meizu_m6t/navslide/icon-bateria.svg')}}" alt="bateria"></div>
            <div class="description"><span class="text-title">Batería de 3,400 mAh</span><span>Dura más y carga más rápido</span></div></a></li>
        <li data-menuanchor="reservar" class="slide slide6"><a href="#reservar">
            <div class="image not-opacity"><img src="{{asset('images/landings/meizu_m6t/navslide/page-1.svg')}}" alt="reserva"></div>
            <div class="description"><span class="text-title">¡Resérvalo ahora!</span><span>Con tu plan favorito</span></div></a></li>
      </ul>
    </div>
    <div id="fullpage">
      <div class="section section-one section-initial">
        <section>
          <div class="content-slider-1 slider" style="
    background-image: linear-gradient(209deg, #ffd4d4, #fde0f9 16%, #d9f6ff 86%, #b9daf4);
">
            <img id="fondo1" src="{{asset('images/landings/meizu_m6t/bg@2x.png')}}" alt="meizu" style="position:absolute;z-index:0;width:100%">
            <img src="{{asset('images/landings/meizu_m6t/slider1/graficos.svg')}}" alt="meizu" style="position:absolute;z-index:0;right: 20%;width: 50%;">
            <div class="container">
              <div class="row">
                  <div data-aos-once="true" data-aos="zoom-in" class="col-xs-10 col-sm-6 col-md-5 col-md-push-5">
                    <div class="imagen-container center-block" style="text-align:center;">
                      <div style="padding-top:200px;margin-left: 20px;">
                        <img  onclick="video_accion()" style="cursor:pointer;width: 76px;margin-bottom: 10%;" src="{{asset('images/landings/meizu_m6t/video.svg')}}">
                        <div class="Ver-video" style="cursor:pointer;" onclick="video_accion()">
                          Ver video
                        </div>
                      </div>
                    </div>
                </div>
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-6 col-md-5 col-lg-5 col-md-pull-5">
                  <div class="description">
                    <div class="Nuevo">Nuevo</div><img src="{{asset('images/landings/meizu_m6t/slider1/logo@2x.png')}}" alt="logo" width="241" height="52">
                    <div class="Cuerpo-ligero-Re-exp">
                    <!--Cuerpo ligero Re-explorando lo clásico-->
                    Pantalla Completa de 5.7'' HD<br>
Memoria Interna 32GB<br>
Doble Cámara 13MP HD + 2MP
                    </div>
                    <br>
                    <a href="#reservar" class="btn-default btn Rectangle">Resérvalo ahora</a>
                    <!-- <p class="text-reserva disabled_fecha"><img src="{{asset('images/landings/meizu_m6t/slider1/icon-calendar.svg')}}" alt="calendario"><span class="text-secundary">Reserva habilitada desde 20/04/2018</span></p> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-two">
        <section class="section-one-responsive">
          <div class="content-slider-2 slider slider_meizu_m6t">
            <div class="bg-huawei bg-meizu_m6t">
              <div class="container">
                <div class="row">
                  <div data-aos-once="true" id="big-padding" data-aos="fade-right" class="col-xs-12 col-sm-8 col-md-6" style="float: right;padding-top: 100px;text-align: justify;">
                    <div class="description">
                      <h1>
                        Bokeh vertical combinado de doble cámara trasera</span>
                      </h1>
                    </div>
                    <div class="description-camara texto">
                      <div>
                        <p>La combinación trasera de 13 megapíxeles + 2 megapíxeles de doble cámara equipa el MEIZU M6T con el modo bokeh vertical. Con esta función, también puede tomar fotos de nivel SLR con una profundidad de campo extendida.<!-- La cámara principal utiliza el sensor de cuatro colores SONY IMX278 RGBW, que ofrece un rendimiento excelente en condiciones de poca luz.--></p>
                      </div>
                      <div class="camara-trasera p20-trasera">
                        <p><span class="text-primary">Cámara trasera: </span>13 MP HD + 2 MP, ƒ / 2.2 apertura, Tamaño de píxel de 1,12 μm.</p>
                      </div>
                      <div class="camara-delantera">
                        <p><span class="text-primary">Delantero: </span>8MP, modo retrato de bokeh, profundidad de campo extendida.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-three">
        <section>
          <img id="ocultar" src="{{asset('images/landings/meizu_m6t/slider3/bgpantalla@2x.png')}}" alt="meizu" style="position:absolute;z-index:-1;width:100%;width: 80%;
margin-top: 25%;">
          <div class="content-slider-3 slider slider_huawei_p20_fot">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-7 col-md-5">
                  <div class="description">
                    <h1>Pantalla Completa</h1>

                    <div class="pantalla">
                      <p class="Pantalla-57">5.7'' HD</p>
                    </div>

                    <p class="texto first">Laminación completa de vidrio 2.5D


</p><p class="texto second">
Con una capa de amortiguación de plástico finamente ajustada, el vidrio 2.5D y el cuerpo del teléfono se combinan en un todo armónico.

</p><p class="texto third">


Las esquinas redondeadas idealmente combinadas presentan una estética visual.

</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-four">

        <section>
          <div class="content-slider-4 slider meizu_m6t">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="hidden-xs col-sm-6 col-md-7">
                </div>
                <div data-aos-once="true" data-aos="zoom-in" class="col-xs-12 col-sm-6 col-md-5" style="padding-left: 5%;padding-right: 5%;">
                  <div class="image-description">
                    <div class="col-lg-6 col-md-6"><img src="{{asset('images/landings/meizu_m6t/slider4/img@2x.png')}}" alt="meizu"></div>
                    <div class="col-lg-6 col-md-6" style="padding-left: 0;color: white;margin-top: 5%;">
                      <p style="font-size: 12px;">32 GB de Memoria Interna</p>
                      <p style="font-size: 12px;">3 GB de RAM</p>
                    </div>
                  </div>
                  <div class="description">
                    <h1>Procesador A53 de 8 núcleos velocidad hasta 1.5 GHz</h1>
                    <p class="texto">El procesador de MEIZU M6T consta de cuatro núcleos de rendimiento de 1,5 GHz y cuatro núcleos de ciclo de vida de 1,0 GHz, lo que lo hace adecuado tanto para el uso diario como para los juegos. La combinación del procesador de gráficos Mali-T860 y la opción de memoria grande de 3 GB ofrece gráficos realistas para el juego y una experiencia de operación fluida.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-five">
        <section>
          <img id="bg5" src="{{asset('images/landings/meizu_m6t/slider5/bg5@2x.png')}}" alt="meizu" style="position: absolute;
z-index: -1;
width: 55%;
right: 0;
margin-top: 10%;">
          <div class="content-slider-5 slider">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-6 col-md-4">
                  <div class="description">
                    <h1>Batería de 3300 mAh<br>Larga vida útil</h1>
                    <img src="{{asset('images/landings/meizu_m6t/slider5/icon.svg')}}" style="width:59px;height:33px">
                    <p style="margin-top:5%;" class="texto">MEIZU M6T tiene una batería de 3300 mAh. Alimentado por la función de optimización de potencia profunda de Flyme y una célula de fabricantes líderes como ATL, MEIZU M6T ofrece una mayor duración de la batería y un mejor rendimiento de la batería.</p>
                  </div>
                </div>
                <div data-aos-once="true" data-aos="fade-up" class="col-xs-12 col-sm-5 col-md-offset-1">
                  <div class="image-description"><img src="{{asset('images/landings/meizu_m6t/slider5/img@2x.png')}}" alt="meizu" style="width:100%"></div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-six">
        <section>
          <div class="content-slider-8">
            <div class="container">
              <div class="row">
                <div class="col-xs-12 col-sm-10">
                  <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                      <div class="description">
                        <h1 class="text-center">¡Reserva tu Meizu M6T ahora!</h1>
                        <h2 class="text-center">Elige tu Meizu M6T en portabilidad o línea nueva</h2>
                      </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="row web">
                          <div data-color="azul" class="equipos equipo-azul active col-xs-6 col-sm-4 col-md-4">
                            <img style="margin-top: 10%;" class="center-block img-responsive" src="{{asset('images/landings/meizu_m6t/slider6/e1@2x.png')}}" alt="meizu">
                            <a style="position: absolute;bottom: 0;left: 0;right: 0;margin: 0 10%;background: black;color:white;font-family: Roboto;font-size: 14px;" onclick="{window.open('https://tienda.bitel.com.pe/postpago/meizu/m6t/portabilidad/ichip-plus-59_90/black', '_blank');}" class="disabled-reserva btn-default btn reservar">RESÉRVALO</a>
                          </div>
                          <div data-color="negro" class="equipos equipo-negro col-xs-6 col-sm-4 col-md-4">
                            <img style="max-height: 360px;margin-top: 10%;" class="center-block img-responsive" src="{{asset('images/landings/meizu_m6t/slider6/e2@2x.png')}}" alt="meizu">
                            <a style="position: absolute;bottom: 0;left: 0;right: 0;margin: 0 10%;background: #d7c53b;font-family: Roboto;font-size: 14px;"  onclick="{window.open('https://tienda.bitel.com.pe/postpago/meizu/m6t/portabilidad/ichip-plus-59_90/gold', '_blank');}"  class="disabled-reserva btn-default btn reservar">RESÉRVALO</a>
                          </div>
                          <div class="col-xs-12 col-sm-4 col-md-4">
                            <div class="informacion-reserva">
                              <h3 class="text-center" style="color:white">Resérvalo desde:</h3>
                              <div class="content-reserva">
                                <div class="row">
                                  <div class="col-xs-12">
                                    <div class="title text-center">
                                      <p class="text-secundary">Portabilidad o Línea nueva</p>
                                    </div>
                                    <div class="sub-title text-center">
                                      <p>Resérvalo en portabilidad o <br> Línea nueva desde:</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-6">
                                    <div class="price text-center">
                                      <p class="equipo">S/479.00</p>
                                      <p>Precio del equipo</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-6">
                                    <div class="price text-center">
                                      <p class="plan">S/59.90</p>
                                      <p>Plan mensual</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-12">
                                    <div class="info-plan text-center">
                                  <p class="text-secundary">8GB + 8GB de regalo por 1 año</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><img src="{{asset('images/landings/meizu_m6t/slider8/4g.svg')}}" style="display:none; alt="4g Lte"><strong class="text-secundary">16GB </strong>
                                      <p>Internet</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><img src="{{asset('images/landings/meizu_m6t/slider8/llamadas.svg')}}" style="display:none;" alt="llamadas"><strong class="text-secundary">ilimitado</strong>
                                      <p>Llamadas</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><div style="display:none;  border: solid 1px #cfcfcf;padding: 15px 10px;background-color: #ffffff;margin-bottom: 10px;border-radius:100%"><img src="{{asset('images/landings/meizu_m6t/slider8/128034.svg')}}" style="margin:0" alt="mensajes"></div><strong class="text-secundary">4GB </strong>
                                      <p>Multimedia</p>
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-lg-12" style="padding: 15px 5px 0px 5px;">
                                    <div class="Prepago" style="margin: 0 auto;margin-bottom: 5px;font-weight: bold;">
                                      Prepago
                                    </div>
                                    <div class="precio-prepago">
                                      S/589.00
                                    </div>
                                    <div class="Precio-del-equipo" style="margin: 0 auto;">
                                      Precio del equipo
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!--mobile-->
                        <div class="row mobile">
                          <div data-color="azul" style="text-align:center" class="equipos equipo-azul active col-xs-12 col-sm-12">
                            <img id="black" style="width:50%;
    margin: 0 auto;margin-top: 10%;" class="img-responsive" src="{{asset('images/landings/meizu_m6t/slider6/e1@2x.png')}}" alt="meizu">
              <img id="gold" style="width:50%;
    margin: 0 auto;display:none;max-height: 360px;margin-top: 10%;" class="img-responsive" src="{{asset('images/landings/meizu_m6t/slider6/e2@2x.png')}}" alt="meizu">
                          <!--/div>
                          <div data-color="negro" class="equipos equipo-negro col-xs-6 col-sm-6">
                            <img style="max-height: 360px;margin-top: 10%;" class="img-responsive" src="{{asset('images/landings/meizu_m6t/slider6/e2@2x.png')}}" alt="meizu"-->
                            <div style="margin-top: 10px;" class="radio-inline option-active is-active" id="materialInline1"><div class="color-box" style="background-color: black;"></div></div> <div style="margin-top: 10px;" class="radio-inline option-active" id="materialInline2"><div class="color-box" style="background-color: #d7bca3"></div></div>
                          </div>
                          <div class="col-xs-12 col-sm-12">
                            <div class="informacion-reserva">
                              <h3 class="text-center" style="color:white">Resérvalo desde:</h3>
                              <div class="content-reserva">
                                <div class="row">
                                  <div class="col-xs-12">
                                    <div class="title text-center">
                                      <p class="text-secundary">Portabilidad o Línea nueva</p>
                                    </div>
                                    <div class="sub-title text-center">
                                      <p>Resérvalo en portabilidad o <br> Línea nueva desde:</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-6">
                                    <div class="price text-center">
                                      <p class="equipo">S/479.00</p>
                                      <p>Precio del equipo</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-6">
                                    <div class="price text-center">
                                      <p class="plan">S/59.90</p>
                                      <p>Plan mensual</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-12">
                                    <div class="info-plan text-center">
                                  <p class="text-secundary">8GB + 8GB de regalo por 1 año</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><img style="display:none" src="{{asset('images/landings/meizu_m6t/slider8/4g.svg')}}" alt="4g Lte"><strong class="text-secundary">16GB </strong>
                                      <p>Internet</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><img style="display:none" src="{{asset('images/landings/meizu_m6t/slider8/llamadas.svg')}}" alt="llamadas"><strong class="text-secundary">ilimitado</strong>
                                      <p>Llamadas</p>
                                    </div>
                                  </div>
                                  <div class="col-xs-4">
                                    <div class="detalle-plan text-center"><div style="display:none" class="mobile-4g" style="  border: solid 1px #cfcfcf;padding: 15px 10px;background-color: #ffffff;margin-bottom: 10px;border-radius:100%"><img src="{{asset('images/landings/meizu_m6t/slider8/128034.svg')}}" style="margin:0" alt="mensajes"></div><strong class="text-secundary">4GB </strong>
                                      <p>Multimedia</p>
                                    </div>
                                  </div>
                                </div>                                
                                <div class="row">
                                  <div class="col-lg-12" style="padding: 15px 5px 0px 5px;">
                                    <div class="Prepago" style="margin: 0 auto;margin-bottom: 5px;font-weight: bold;">
                                      Prepago
                                    </div>
                                    <div class="precio-prepago">
                                      S/589.00
                                    </div>
                                    <div class="Precio-del-equipo" style="margin: 0 auto;">
                                      Precio del equipo
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 mobile">
                      <div class="text-center">
                        <!--a id="reservalo-mobile" style="display:inline-block;background: black;color:white;font-family: Roboto;font-size: 14px;" onclick="{window.open('https://tienda.bitel.com.pe/postpago/meizu/m6t/portabilidad/ichip-plus-59_90/black', '_blank');}" class="disabled-reserva btn-default btn reservar">RESÉRVALO</a-->
                        <a id="reservalo-mobile" style="/*display:inline-block;*/background: #d7c53b;font-family: Roboto;font-size: 14px;"  onclick="{window.open('https://tienda.bitel.com.pe/postpago/meizu/m6t/portabilidad/ichip-plus-59_90/black', '_blank');}"  class="disabled-reserva btn-default btn reservar">RESÉRVALO</a>
                      </div>
                      <br><br>
                      <br><br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
    <!--div id="myModalBitelP20PRO" role="dialog" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <div class="btn-cerrar"><span class="text-secundary">Cerrar</span>
              <button type="button" data-dismiss="modal" class="close">&times</button>
            </div>
          </div>
          <div class="modal-body">
            <section>
              <div class="row">
                <div class="col-xs-12">
                  <h1>Más Especificaciones</h1>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5">
                  <div class="description-info description-camara"><span class="text-secundary">Cámara trasera:</span>
                    <p>Cámara de tres lentes: 40 MP (RGB, f/1.8 apertura) + 20 MP (Monocromático, f/1.6 apertura) + 8 MP (Telefoto, f/2.4 apertura), compatible con autofoco (enfoque láser, enfoque de profundidad, enfoque de fases, enfoque de contraste)</p><span class="text-secundary">Cámara frontal: </span>
                    <p>Cámara de un lente: 24 MP, f/2.0 apertura, compatible con distancia focal fija </p>
                  </div>
                  <div class="description-info description-pantalla">
                    <p><span class="text-secundary">Tamaño: </span>6.1 pulgadas;</p>
                    <p><span class="text-secundary">Tipo: </span>OLED;</p>
                    <p><span class="text-secundary">Color: </span>16.7 M colores;</p>
                    <p><span class="text-secundary">Resolución: </span>FHD 1080 x 2240, 408 PPI</p>
                  </div>
                  <div class="description-info description-procesador">
                    <p>6 GB de RAM + 128 GB Flash</p>
                  </div>
                  <div class="description-info description-bateria">
                    <p>4,000 mAh (valor típico) <br></p>
                    <p>Esta capacidad es la capacidad nominal de la batería. La capacidad real de la batería de cada teléfono puede variar ligeramente por encima o por debajo de la capacidad nominal de la batería.</p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                  <div class="list-especificaciones"><span class="title">Conjunto de chips</span>
                    <p>HUAWEI Kirin 970 CPU, ocho núcleos + micro núcleo i7, 4 x Cortex A73 2.36 GHz + 4 x Cortex A53 1.8 GHz</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Sistema operativo</span>
                    <p>Android 8.1</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Red</span>
                    <p>CLT-L09C: Tarjeta SIM única</p>
                    <p>LTE TDD / LTE FDD / WCDMA / EDGE / GPRS</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Conectividad</span>
                    <p>USB Tipo C estándar</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Audio</span>
                    <p>*.mp3, *.mp4, *.3gp, *.ogg, *.amr, *.aac, *.flac, *.wav, *.midi</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Video</span>
                    <p>*.mp4, *.3gp</p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3">
                  <div class="list-especificaciones"><span class="title">Tamaño</span><img src="{{asset('images/landings/meizu_m6t/popup/equipo_p20pro@2x.png')}}" alt="celular" width="256" height="263">
                    <p><span class="text-secundary">Peso: </span>180 g aprox.</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Sensores</span>
                    <p>Sensor de gravedad, Sensor de luz ambiental,</p>
                    <p>Sensor de proximidad, Sensor de huella</p>
                    <p>frontal, Sensor hall, Giroscopio, Brújula,</p>
                    <p>Sensor de temperatura de colores</p>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div-->
    <!--div id="myModalBitelP20" role="dialog" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <div class="btn-cerrar"><span class="text-secundary">Cerrar</span>
              <button type="button" data-dismiss="modal" class="close">&times</button>
            </div>
          </div>
          <div class="modal-body">
            <section>
              <div class="row">
                <div class="col-xs-12">
                  <h1>Más Especificaciones</h1>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-5">
                  <div class="description-info description-camara"><span class="text-secundary">Cámara trasera:</span>
                    <p>Cámara de doble lente: 12 MP (Color, f/1.8 apertura) + 20 MP (Monocromático, f/1.6 apertura), compatible con autofoco (enfoque láser, enfoque de profundidad, enfoque de fases, enfoque de contraste)</p><span class="text-secundary">Cámara frontal: </span>
                    <p>Cámara de un solo lente: 24 MP, f/2.0 apertura, compatible con distancia focal fija</p>
                  </div>
                  <div class="description-info description-pantalla">
                    <p><span class="text-secundary">Tamaño: </span>5.8 pulgadas;</p>
                    <p><span class="text-secundary">Tipo: </span>LCD;</p>
                    <p><span class="text-secundary">Color: </span>16.7 M colores;</p>
                    <p><span class="text-secundary">Resolución: </span>FHD 1080 x 2240, 408 PPI</p>
                  </div>
                  <div class="description-info description-procesador">
                    <p>4 GB de RAM + 128 GB de ROM</p>
                  </div>
                  <div class="description-info description-bateria">
                    <p>3,400 mAh (valor típico) <br></p>
                    <p>Esta capacidad es la capacidad nominal de la batería. La capacidad real de la batería de cada teléfono puede variar ligeramente por encima o por debajo de la capacidad nominal de la batería.</p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4">
                  <div class="list-especificaciones"><span class="title">Conjunto de chips</span>
                    <p>HUAWEI Kirin 970 CPU, ocho núcleos, 4 x Cortex A73 2.36 GHz + 4 x Cortex A53 1.8 GHz</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Sistema operativo</span>
                    <p>Android 8.1</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Red</span>
                    <p>Emily-L09C: Tarjeta SIM única</p>
                    <p>LTE TDD / LTE FDD / WCDMA / EDGE / GPRS</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Conectividad</span>
                    <p>USB Tipo C estándar</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Audio</span>
                    <p>*.mp3, *.mp4, *.3gp, *.ogg, *.amr, *.aac, *.flac, *.wav, *.midi</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Video</span>
                    <p>*.mp4, *.3gp</p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3">
                  <div class="list-especificaciones"><span class="title">Tamaño</span><img src="{{asset('images/landings/meizu_m6t/popup/equipo_p20@2x.png')}}" alt="celular" width="256" height="108">
                    <p><span class="text-secundary">Peso: </span>165 g aprox.</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Sensores</span>
                    <p>Sensor de gravedad,Sensor de luz ambiental,</p>
                    <p>Sensor de proximidad, Sensor de huella frontal,</p>
                    <p>Sensor hall, Giroscopio, Brújula,</p>
                    <p>Sensor de temperatura de colores </p>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div-->
<!-- <footer></footer> -->
    <div id="exampleModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade" style="z-index: 9999999999999;padding-left:17px !important"> 
      <div role="document" class="modal-dialog especial"> 
        <div class="modal-content"> 
          <div class="modal-header" style="padding: 0;background: #2a2a2a;text-align:right"> 
            <button onclick="video_cerrar()" style="right: 5px;z-index: 1;background: none;border: none;color: white;" type="button" data-dismiss="modal"> <div class="fa fa-close"></div> </button> </div> <div style="padding: 0;height: 0;" class="modal-body">
    <video id="video" style="width:100%" preload="none" poster="landing-inlimitado/images/new/bitmap.jpg" controls>
      <source src="{{asset('images/landings/meizu_m6t/video.mp4')}}"> 
    </video>
    </div> </div> </div> </div>
@endsection

@section('js')
<!-- <script type="text/javascript" src="{{asset('js/app.js')}}"></script> -->
<script type="text/javascript" src="{{asset('js/meizu.min.js')}}"></script>
<script type="text/javascript">
  function video_accion(){
    $("#exampleModal").css("padding-left","0 !important");
    if($(window).width()<320){  
      /*$("#exampleModal").css("padding-right","0 !important");*/
    }
    else{
      $("#exampleModal").css("padding-right","17px !important");
    }
    $("#exampleModal").modal('show');
    $("video").get(0).play();
  }   
  function video_cerrar(){
        $("video").get(0).pause();
  };
</script>
@endsection