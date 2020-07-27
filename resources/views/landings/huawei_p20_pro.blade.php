@extends('layouts.master_clean')

@section('css')
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
<link type="text/css" rel="stylesheet" href="{{asset('css/huawei_p20.min.css')}}">
<link type="text/css" rel="stylesheet" href="{{asset('css/landing-reset.css')}}">
@endsection

@section('content')
<!-- <header>
</header> -->
<div id="navslide" class="p20pronav">
      <ul>
        <li data-menuanchor="huawei" class="slide slide1"><a href="#huawei">
            <div class="image"><img src="{{asset('images/landings/huawei_p20/navslide/icon-huawei.png')}}" alt="huawei" width="33" height="33"></div>
            <div class="description"><span class="text-title">Nuevo Huawei P20 Pro</span><span>Equipo exclusivo de Bitel</span></div></a></li>
        <li data-menuanchor="camara" class="slide slide2"><a href="#camara">
            <div class="image"><img src="{{asset('images/landings/huawei_p20/navslide/icon-camara_triple.svg')}}" alt="camara"></div>
            <div class="description"><span class="text-title">Triple Cámara LEICA</span><span>Asistido por IA</span></div></a></li>
        <li data-menuanchor="pantalla" class="slide slide3"><a href="#pantalla">
            <div class="image"><img src="{{asset('images/landings/huawei_p20/navslide/icon-pantalla.svg')}}" alt="pantalla"></div>
            <div class="description"><span class="text-title">Pantalla FHD+</span><span>6,1 pulgadas, colores vivos</span></div></a></li>
        <li data-menuanchor="procesador" class="slide slide4"><a href="#procesador">
            <div class="image"><img src="{{asset('images/landings/huawei_p20/navslide/icon-procesador.svg')}}" alt="procesador"></div>
            <div class="description"><span class="text-title">Procesador neuronal</span><span>Kirin 970</span></div></a></li>
        <li data-menuanchor="bateria" class="slide slide5"><a href="#bateria">
            <div class="image"><img src="{{asset('images/landings/huawei_p20/navslide/icon-bateria.svg')}}" alt="bateria"></div>
            <div class="description"><span class="text-title">Batería de 4000 mAh</span><span>Dura más y carga más rápido</span></div></a></li>
        <li data-menuanchor="reservar" class="slide slide6"><a href="#reservar">
            <div class="image not-opacity"><img src="{{asset('images/landings/huawei_p20/navslide/icon-reserva.svg')}}" alt="reserva"></div>
            <div class="description"><span class="text-title">¡Resérvalo ahora!</span><span>Con tu plan favorito</span></div></a></li>
      </ul>
    </div>
    <div id="fullpage">
      <div class="section section-one section-initial">
        <section>
          <div class="content-slider-1 slider">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="zoom-in" class="col-xs-10 col-sm-6 col-md-5 col-md-push-5">
                  <div class="image-description"><img src="{{asset('images/landings/huawei_p20/slider1/huawei_p20pro@2x.png')}}" alt="huawei" width="411" height="548"></div>
                </div>
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-6 col-md-5 col-lg-5 col-md-pull-5">
                  <div class="description">
                    <h1>Revoluciona la fotografía con la Triple cámara del <span class="text-secundary">Huawei P20 Pro</span></h1><img src="{{asset('images/landings/huawei_p20/slider1/logo_p20pro@2x.png')}}" alt="logo" width="304" height="55">
                    <p class="ilumina">Ilumina tus sentidos #SEEMOOORE</p><a href="#reservar" class="btn-default btn reservar">CONOCE NUESTRA PROMOCIÓN</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-two fp-responsive fp-auto-height">
        <section class="section-one-responsive">
          <div class="content-slider-2 slider slider_huawei_p20_pro">
            <div class="bg-huawei"> 
              <div class="container">
                <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-8 col-md-6">
                    <div class="description">
                      <h1>Supera los límites con la primera <span class="text-primary">Triple Cámara Leica </span>del mundo</h1>
                    </div>
                    <div class="description-camara">
                      <div class="camara-trasera">
                        <p><span class="text-primary">Cámara trasera: </span>40 MP (RGB, f/1.8 apertura) + 20 MP (Monocromático, f/1.6 apertura) + 8 MP (Telefoto, f/2.4 apertura), compatible con autofoco (enfoque láser, enfoque de profundidad, enfoque de fases, enfoque de contraste)</p>
                      </div>
                      <div class="camara-delantera">
                        <p><span class="text-primary">Delantero: </span>24MP, f2.0</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section>
          <div class="content-slider-3 slider">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-7 col-md-4">
                  <div class="description">
                    <h1>Precisión incomparable con una asombrosa cámara RGB de 40 MP</h1>
                    <p>El HUAWEI P20 Pro cuenta con una asombrosa cámara RGB de 40 MP que aporta una incomparable nitidez, precisión de color, enfoque y contraste para todas y cada una de tus fotos.</p>
                    <h2 class="text-secundary">Zoom híbrido de 5 aumentos</h2>
                    <p>Con el sistema de lentes de zoom Leica, el HUAWEI P20 Pro puede alcanzar un zoom híbrido de 5 aumentos. Esto te permite acercarte al sujeto y producir resultados excepcionales cuando desees capturar detalles increíbles a distancia.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-two fp-responsive fp-auto-height">
        <section>
          <div class="content-slider-4 slider slider_huawei_p20_pro">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-5 col-md-4">
                  <div class="description">
                    <h1>La pantalla de la próxima generación <span class="text-primary">FullView Display</span></h1>
                    <p>Disfruta de la extraordinaria visión de la pantalla <span class="text-primary">FullView FHD+ de 6.1 pulgadas </span>de Huawei con colores vivos y alto contraste.</p>
                    <h2>La <span class="text-primary">excelencia </span>en tu mano</h2>
                    <p>El sólido marco de metal con cuerpo de cristal resulta muy agradable de sostener y está disponible en una iconica gama de colores y pesa 165 gramos.</p>
                  </div>
                </div>
                <div data-aos-once="true" data-aos="zoom-in" class="col-xs-12 col-sm-6">
                  <div class="image-description"><img src="{{asset('images/landings/huawei_p20/slider4/huawei_p20pro@2x.png')}}" alt="huawei" width="550" height="513"></div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section>
          <div class="content-slider-5 slider">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-6 col-md-4">
                  <div class="description">
                    <h1>Pantalla Oled de 6.1” revela una gama de colores superiores</h1>
                    <p>Sé testigo del poder de la tecnología de pantallas de próxima generación ya que la nueva HUAWEI FullView Display irrumpe en la pantalla OLED de 6.1" y ofrece una gama de colores superior para nuestra mejor pantalla hasta la fecha. El sensor de huellas digitales sin bordes con navegación inteligente, en lugar de la barra virtual, ofrece una área informativa adicional.</p>
                  </div>
                  <div class="description-pantalla">
                    <ul>
                      <li><span class="text-secundary">Tamaño: </span>6.1 pulgadas;</li>
                      <li><span class="text-secundary">Tipo: </span>OLED;</li>
                      <li><span class="text-secundary">Color: </span>16.7 M colores;</li>
                      <li><span class="text-secundary">Resolución: </span>FHD 1080 x 2240, 408 PPI</li>
                    </ul>
                  </div>
                </div>
                <div data-aos-once="true" data-aos="fade-up" class="col-xs-12 col-sm-5 col-md-offset-1">
                  <div class="image-description"><img src="{{asset('images/landings/huawei_p20/slider5/huawei_p20pro@2x.png')}}" alt="huawei" width="404" height="463"></div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section section-three">
        <section>
          <div class="content-slider-6 slider">
            <div class="container">
              <div class="row">
                <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-5">
                  <div class="description">
                    <h1>Creado para entregar una experiencia superior</h1>
                    <p>Experimenta el poder de la IA con la unidad de procesamiento neuronal del Kirin 970. La extraordinaria duración de su batería y su impresionante velocidad suponen un gran avance para la serie P. </p>
                  </div>
                  <div class="description-procesador">
                    <ul>
                      <li><span class="text-secundary">Memoria RAM: </span>6 GB de RAM</li>
                      <li><span class="text-secundary">Memoria Interna: </span>128 GB Flash</li>
                    </ul>
                  </div>
                </div>
                <div data-aos-once="true" data-aos="zoom-in" class="col-xs-12 col-sm-5">
                  <div class="image-description"><img src="{{asset('images/landings/huawei_p20/slider6/huawei_p20pro@2x.png')}}" alt="huawei" width="455" height="407"></div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section">
        <section>
          <div class="content-slider-7">
            <div class="bg-huawei">
              <div class="container">
                <div class="row">
                  <div data-aos-once="true" data-aos="fade-right" class="col-xs-10 col-sm-6 col-md-4">
                    <div class="description">
                      <h1>Mantén el poder durante <span class="text-primary">mucho más tiempo</span></h1>
                      <p>Con Huawei P20, la duración de la batería nunca supondrá un obstáculo. La IA gestiona el rendimiento energético para conseguir la máxima eficiencia. Y gracias al sistema SuperCharge de Huawei, la carga es rapidísima.</p>
                      <div class="image"><img src="{{asset('images/landings/huawei_p20/slider7/icon-bateria.svg')}}" alt="batería"></div>
                    </div>
                    <div class="description-bateria">
                      <ul>
                        <li><span class="text-primary">Batería:  </span>4,000 mAh (valor típico)</li>
                        <li><span class="text-primary">Tiempo de carga: </span>aproximadamente 1.5h *</li>
                        <li><span class="text-primary">En espera: </span>alrededor de 16,9 días *</li>
                      </ul>
                    </div><a href="#" data-toggle="modal" data-target="#myModalBitelP20PRO" class="btn-default btn reservar">más especificaciones</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <div class="section">
        <section>
          <div class="content-slider-8">
            <div class="container">
              <div class="row">
                <div class="col-xs-12 col-sm-10">
                  <div class="row">
                    <div class="col-xs-10 col-sm-12">
                      <div class="description">
                        <h1 class="text-center">¡Reserva tu <span class="text-secundary">Huawei P20 Pro </span>ahora!</h1>
                        <h2 class="text-center">Elige tu Huawei P20 Pro en portabilidad o línea nueva</h2>
                      </div>
                    </div>
                    <div class="col-xs-10 col-sm-12 col-md-7">
                      <div class="list-equipos">
                        <div class="row">
                          <div data-color="azul" class="equipos equipo-azul equipo-pro active col-xs-6 col-sm-6 col-md-5">
                            <div class="text-center"><img src="{{asset('images/landings/huawei_p20/slider8/huawei_p20azulpro@2x.png')}}" alt="huawei" width="204" height="345">
                              <p>Huawei P20 Pro</p>
                            </div>
                          </div>
                          <div data-color="negro" class="equipos equipo-negro equipo-regalo col-xs-6 col-sm-6 col-md-7">
                            <div class="text-center">
                              <div class="equipo-regalo-img regalop20pro">
                                <img src="{{asset('images/landings/huawei_p20/slider8/huawei_regalo@2x.png')}}" alt="huawei" width="221" height="330">
                              </div>
                              <div class="descricion-regalo">
                                <p>Huawei P Smart <span class="text-secundary">de regalo</span></p>
                              </div>
                            </div>
                          </div>
                          <div class="select-equipo col-xs-12">
                              <div class="text-regalo-movil text-center">
                                <p>Huawei P20 +</p>
                                <p>Huawei P Smart <span class="text-secundary">de regalo</span></p>
                              </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-10 col-sm-12 col-md-5">
                      <div class="informacion-reserva">
                        <h3 class="text-center">Resérvalo desde:</h3>
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
                                <p class="equipo">PRONTO</p>
                                <p>Precio del equipo</p>
                              </div>
                            </div>
                            <div class="col-xs-6">
                              <div class="price text-center">
                                <p class="plan">S/129.90</p>
                                <p>Cargo fijo mensual</p>
                              </div>
                            </div>
                            <div class="col-xs-12">
                              <div class="info-plan text-center">
                                <p class="text-secundary">20GB + 20GB de regalo por 1 año</p>
                              </div>
                            </div>
                            <div class="col-xs-4">
                              <div class="detalle-plan text-center"><img src="{{asset('images/landings/huawei_p20/slider8/4g.svg')}}" alt="4g Lte"><strong class="text-secundary">40GB </strong>
                                <p>Internet</p>
                              </div>
                            </div>
                            <div class="col-xs-4">
                              <div class="detalle-plan text-center"><img src="{{asset('images/landings/huawei_p20/slider8/llamadas.svg')}}" alt="llamadas"><strong class="text-secundary">ilimitado</strong>
                                <p>Llamadas</p>
                              </div>
                            </div>
                            <div class="col-xs-4">
                              <div class="detalle-plan text-center"><img src="{{asset('images/landings/huawei_p20/slider8/mensajes.svg')}}" alt="mensajes"><strong class="text-secundary">ilimitado </strong>
                                <p>Mensaje</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-10 col-sm-12">
                      <div class="text-center">
                        <a href="https://bitel-store.clientes-forceclose.com/postpago/huawei/p20-pro/portabilidad/ichip-129_90/18-meses" target="_blank" class="disabled-reserva btn-default btn reservar">QUIERO RESERVAR AHORA</a>
                        <p class="text-reserva enabled-fecha"><img src="{{asset('images/landings/huawei_p20/slider1/icon-calendar.svg')}}" alt="calendario"><span class="text-secundary">Reserva habilitada desde 20/04/2018</span></p> 
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
    <div id="myModalBitelP20PRO" role="dialog" class="modal fade">
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
                  <div class="list-especificaciones"><span class="title">Tamaño</span><img src="{{asset('images/landings/huawei_p20/popup/equipo_p20pro@2x.png')}}" alt="celular" width="256" height="263">
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
    </div>
    <div id="myModalBitelP20" role="dialog" class="modal fade">
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
                  <div class="list-especificaciones"><span class="title">Tamaño</span><img src="{{asset('images/landings/huawei_p20/popup/equipo_p20@2x.png')}}" alt="celular" width="256" height="108">
                    <p><span class="text-secundary">Peso: </span>165 g aprox.</p>
                  </div>
                  <div class="list-especificaciones"><span class="title">Sensores</span>
                    <p>Sensor de gravedad,Sensor de luz ambiental,</p>
                    <p>Sensor de proximidad, Sensor de huella frontal,</p>
                    <p>Sensor hall, Giroscopio, Brújula,</p>
                    <p>Sensor de temperatura de colores</p>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div>
<!-- <footer></footer> -->
@endsection

@section('js')
<!-- <script type="text/javascript" src="{{asset('js/app.js')}}"></script> -->
<script type="text/javascript" src="{{asset('js/huawei_p20.min.js')}}"></script>
@endsection

