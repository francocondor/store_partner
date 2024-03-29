@extends('layouts.master')
@section('content')
<div class="container">
  <div class="content-box-shadow">
    <div class="row">
      <div class="col-xs-12 col-sm-12">
        <div class="container-section-new-information">


          <div id="content-page">

            <div id="image-equipo" class="image-equipo-chip">
              <div class="img-loading">
                <img src="/images/planes/placeholder.png" alt="icono">
              </div>
              @if(count($product_images)>0)
              <div class="new-slider">
                <!-- <div class="image-product text-center">
                          <img id="zoom_01" src="{{asset(Storage::url($product_images[0]->product_image_url))}}" alt="{{$product->product_model}}">{{-- data-zoom-image="{{asset(Storage::url($product_images[0]->product_image_url))}}">--}}
                        </div> -->
                @if(count($product_images)>0)
                <ul>
                  @foreach($product_images as $image)
                  <li>
                    <img src="{{asset(Storage::url($product->product_image_url))}}" alt="{{$product->product_model}}">
                  </li>
                  @endforeach
                </ul>
                @else
                @endif
              </div>
              @else
              <div class="new-slider-one">
                <!--
                          <img src="{{asset(Storage::url($product->product_image_url))}}" alt="{{$product->product_model}}">-->
                <img src="{{asset('images/chip_prepago_2019.jpeg')}}" alt="chip bitel" style="max-height: 100%">
              </div>
              @endif
              <!-- @if(count($product_images)>0)
                    <div class="image-product text-center"><img id="zoom_01" src="{{asset(Storage::url($product_images[0]->product_image_url))}}" alt="{{$product->product_model}}">{{-- data-zoom-image="{{asset(Storage::url($product_images[0]->product_image_url))}}">--}}
                    </div>
                    @if(count($product_images)>1)
                    <div id="gallery_01" class="galeria-min">
                      @foreach($product_images as $image)
                      <a href="javascript:void(0)" data-image="{{asset(Storage::url($image->product_image_url))}}">{{-- data-zoom-image="{{asset(Storage::url($image->product_image_url))}}">--}}
                        <img src="{{asset(Storage::url($image->product_image_url))}}" alt="{{$product->product_model}}">
                      </a>
                      @endforeach
                      <div class="clearfix"></div>
                    </div>
                    @else
                    {{--<div id="gallery_01" class="galeria-min"></div>--}}
                    @endif
                  @else
                  <div class="image-product text-center"><img src="{{asset(Storage::url($product->product_image_url))}}" alt="{{$product->product_model}}">{{-- data-zoom-image="{{asset(Storage::url($product->product_image_url))}}">--}}
                  </div>
                  {{--<div id="gallery_01" class="galeria-min"></div>--}}
                  @endif -->
            </div>
          </div>



          <section id="descripcion-equipo">
            <div class="header-section chip">
              <div class="title">
                <!--
                      <h1>{{$product->brand_name}} {{$product->product_model}} {{isset($product->color_id) ? $product->color_name : ''}}</h1>-->
                <h1>Bitel Prepago</h1>
                @include('products.tag',['product' => $product])
              </div>

            </div>
            <div class="descripcion">
              <p>{!! $product->product_description !!}</p>
            </div>
            <div class="content-section">
              <form form id="purchase-form" action="{{route('add_to_cart')}}" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="stock_model" value="{{$product->stock_model_id}}">
                <input type="hidden" name="product_variation" value="{{$product->product_variation_id}}">
                <input type="hidden" name="type" value="1">
                <input type="hidden" name="quantity" value="1">
                <div class="content-product equipo-prepago">
                  <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                      <!-- <div class="row"> -->
                      <!-- <div class="col-xs-12 col-sm-12"> -->
                      <div id="box-detalle-product">

                        <div class="detalle-product">
                          <div class="price-product">
                            @if(!isset($product->promo_id))
                            <p>Precio del Chip</p>
                            <div class="preci-prepaid">
                              <div class="preci-cant">
                                <span class="moneda">S/</span>
                                <span>{{$product->promo_price_integer}}</span>
                                <span class="moneda">.{{$product->promo_price_decimal}}</span>
                              </div>
                            </div>
                            @else
                            <p>Precio del Chip</p>
                            <div class="preci-prepaid">
                              <div class="preci-cant">
                                <span class="moneda">S/</span>
                                <span>{{$product->product_price_integer}}</span>
                                <span class="moneda">.{{$product->product_price_decimal}}</span>
                              </div>
                            </div>
                            @endif
                          </div>
                        </div>
                      </div>
                      <!-- </div> -->
                      <!-- <div class="col-xs-12 col-xs-pull-7 col-sm-12">
                                @include('products.colors',['product' => $product, 'stock_models' => $stock_models])
                              </div> -->
                      <!-- </div> -->
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-5 col-lg-3">
                      @if($product->stock_model_id)
                      <div class="btn-comprar-prepago">
                        <button id="addToCart" type="submit" class="btn-default btn-buy">Solicitalo Ahora</button>
                      </div>
                      @else
                      <div class="btn-comprar-prepago">
                        <button class="btn-disabled" disabled>Agotado</button>
                      </div>
                      @endif
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-11 col-lg-5">
                      {{--@if($product->stock_model_id)
                            <div class="btn-carrito btn-mas-options">
                              <button type="submit" class="btn-default">AGREGAR AL CARRITO</button>
                            </div>
                            @endif--}}
                      <div class="btn-linea btn-mas-options">
                        @if(isset($product->route_postpago))
                        <a href="{{$product->route_postpago}}" class="btn-default">QUIERO MI LÍNEA EN POSTPAGO</a>
                        @endif
                      </div>

                    </div>


                  </div>
                </div>

              </form>
            </div>
          </section>

        </div>

      </div>
      <div class="col-xs-12 col-sm-12">


        <div id="planes" class="planes-prepago">
          <h3 class="title-plan">Recarga y disfruta de estos beneficios</h3><br />
          <div class="select-plan just-3">
            <label for="">
              <div class="plan">

                <div class="content-plan">
                  <div class="header-box">
                    <div class="box-recarga">
                      <div class="preci-cant">
                        <span class="moneda">S/</span>
                        <span>3</span>
                        <span class="moneda">.00</span>
                      </div>
                      <span class="text-span">Recarga</span>
                    </div>
                    <div class="box-vigencia">
                      <p><strong>24 horas</strong></p>
                      <span class="text-span">Vigencia</span>
                    </div>
                  </div>
                  <div style="padding: 20px 25px" class="box-body-content-plan">

                    <div class="box-plan-content-comercial">
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-internet.svg" alt="icono" width="25">
                            <span>Internet</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>
                        <div class="box-column">
                          <div class="item-comercial-icon">
                            <span class="icon"><img src="images/planes/icon-info.png" alt="icono"></span>
                          </div>
                        </div>
                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-llamada.svg" alt="icono" width="25">
                            <span>Llamadas</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-mensaje.svg" alt="icono" width="25">
                            <span>Mensajes</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>

                    </div>

                    <div class="box-plan-content-apps-sociales">
                      <p>Tus apps favoritas <span>ilimitadas</span></p>
                      <ul>
                        <li><img src="/images/planes/app1.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app2.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app3.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app4.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app5.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app6.png" alt="icono" width="32"></li>
                      </ul>
                      <!-- <span class="color-secundary">Foto</span> -->
                    </div>
                    <div class="box-plan-content-apps">
                      <div class="items-box-content box-video">
                        <p>Video y Musica</p>
                        <ul>
                          <li><img src="/images/planes/video1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video2.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video3.png" alt="icono" width="32"></li>
                        </ul>
                        <!-- <span class="color-secundary">Bono 1GB</span> -->
                      </div>
                      <div class="items-box-content box-juegos">
                        <p>Juegos</p>
                        <ul>
                          <li><img src="/images/planes/juego1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/juego2.png" alt="icono" width="32"></li>
                        </ul>
                      </div>
                    </div>

                  </div>







                  <!-- <div class="precio-plan"><span class="recarga">Recarga</span> s/3</div>
                        <ul class="list-unstyled">
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/llamadas.svg" alt="Llamadas"><span>Llamadas ilimitadas</span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/internet.svg" alt="Internet"><span>100MB Alta disponible </span></li>
                          <li><img class="images-prepago-left" src="/images/enquipo/svg/planes/rpb.svg" alt="RPB"><span>RPB ilimitado </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/sms.svg" alt="SMS"><span>SMS ilimitado (**) </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/facebook.svg" alt="Facebook"><span>Facebook Gratis </span></li>
                          <li><img src="/images/equipo/svg/planes/whatsapp-line.svg" alt="WhatsApp"><span>WhatsApp & Line Ilimitado </span></li>
                          <li><img src="/images/equipo/svg/planes/video.svg" alt="Youtube"><span>Youtube & Viki gratis desde las 00:00hrs a las 05:00hrs </span></li>
                          <li class="text-center">Apps gratis Hasta 23 hrs 59:59 del día de recarga</span></li>
                        </ul> -->
                </div>
              </div>
            </label>
            <label for="">
              <div class="plan">

                <div class="content-plan">
                  <div class="header-box">
                    <div class="box-recarga">
                      <div class="preci-cant">
                        <span class="moneda">S/</span>
                        <span>5</span>
                        <span class="moneda">.00</span>
                      </div>
                      <span class="text-span">Recarga</span>
                    </div>
                    <div class="box-vigencia">
                      <p><strong>3 días</strong></p>
                      <span class="text-span">Vigencia</span>
                    </div>
                  </div>
                  <div style="padding: 20px 25px" class="box-body-content-plan">

                    <div class="box-plan-content-comercial">
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-internet.svg" alt="icono" width="25">
                            <span>Internet</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>
                        <div class="box-column">
                          <div class="item-comercial-icon">
                            <span class="icon"><img src="/images/planes/icon-info.png" alt="icono"></span>
                          </div>
                        </div>
                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-llamada.svg" alt="icono" width="25">
                            <span>Llamadas</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-mensaje.svg" alt="icono" width="25">
                            <span>Mensajes</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>

                    </div>

                    <div class="box-plan-content-apps-sociales">
                      <p>Tus apps favoritas <span>ilimitadas</span></p>
                      <ul>
                        <li><img src="/images/planes/app1.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app2.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app3.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app4.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app5.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app6.png" alt="icono" width="32"></li>
                      </ul>
                      <!-- <span class="color-secundary">Foto</span> -->
                    </div>
                    <div class="box-plan-content-apps">
                      <div class="items-box-content box-video">
                        <p>Video y Musica</p>
                        <ul>
                          <li><img src="/images/planes/video1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video2.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video3.png" alt="icono" width="32"></li>
                        </ul>
                        <!-- <span class="color-secundary">Bono 1GB</span> -->
                      </div>
                      <div class="items-box-content box-juegos">
                        <p>Juegos</p>
                        <ul>
                          <li><img src="/images/planes/juego1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/juego2.png" alt="icono" width="32"></li>
                        </ul>
                      </div>
                    </div>

                  </div>







                  <!-- <div class="precio-plan"><span class="recarga">Recarga</span> s/3</div>
                        <ul class="list-unstyled">
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/llamadas.svg" alt="Llamadas"><span>Llamadas ilimitadas</span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/internet.svg" alt="Internet"><span>100MB Alta disponible </span></li>
                          <li><img class="images-prepago-left" src="/images/enquipo/svg/planes/rpb.svg" alt="RPB"><span>RPB ilimitado </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/sms.svg" alt="SMS"><span>SMS ilimitado (**) </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/facebook.svg" alt="Facebook"><span>Facebook Gratis </span></li>
                          <li><img src="/images/equipo/svg/planes/whatsapp-line.svg" alt="WhatsApp"><span>WhatsApp & Line Ilimitado </span></li>
                          <li><img src="/images/equipo/svg/planes/video.svg" alt="Youtube"><span>Youtube & Viki gratis desde las 00:00hrs a las 05:00hrs </span></li>
                          <li class="text-center">Apps gratis Hasta 23 hrs 59:59 del día de recarga</span></li>
                        </ul> -->
                </div>
              </div>
            </label>
            <label for="">
              <div class="plan">

                <div class="content-plan">
                  <div class="header-box">
                    <div class="box-recarga">
                      <div class="preci-cant">
                        <span class="moneda">S/</span>
                        <span>10</span>
                        <span class="moneda">.00</span>
                      </div>
                      <span class="text-span">Recarga</span>
                    </div>
                    <div class="box-vigencia">
                      <p><strong>7 días</strong></p>
                      <span class="text-span">Vigencia</span>
                    </div>
                  </div>
                  <div style="padding: 20px 25px" class="box-body-content-plan">

                    <div class="box-plan-content-comercial">
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-internet.svg" alt="icono" width="25">
                            <span>Internet</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>
                        <div class="box-column">
                          <div class="item-comercial-icon">
                            <span class="icon"><img src="images/planes/icon-info.png" alt="icono"></span>
                          </div>
                        </div>
                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-llamada.svg" alt="icono" width="25">
                            <span>Llamadas</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>
                      <div class="box-item-comercial">
                        <div class="box-column">
                          <div class="item-comercial">
                            <img src="/images/planes/icon-mensaje.svg" alt="icono" width="25">
                            <span>Mensajes</span>
                          </div>
                          <!-- </div> -->
                          <!-- <div class="box-column"> -->
                          <div class="item-comercial-detalle">
                            <span>Ilimitado</span>
                            <span></span>
                          </div>
                        </div>

                      </div>

                    </div>

                    <div class="box-plan-content-apps-sociales">
                      <p>Tus apps favoritas <span>ilimitadas</span></p>
                      <ul>
                        <li><img src="/images/planes/app1.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app2.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app3.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app4.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app5.png" alt="icono" width="32"></li>
                        <li><img src="/images/planes/app6.png" alt="icono" width="32"></li>
                      </ul>
                      <!-- <span class="color-secundary">Foto</span> -->
                    </div>
                    <div class="box-plan-content-apps">
                      <div class="items-box-content box-video">
                        <p>Video y Musica</p>
                        <ul>
                          <li><img src="/images/planes/video1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video2.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/video3.png" alt="icono" width="32"></li>
                        </ul>
                        <!-- <span class="color-secundary">Bono 1GB</span> -->
                      </div>
                      <div class="items-box-content box-juegos">
                        <p>Juegos</p>
                        <ul>
                          <li><img src="/images/planes/juego1.png" alt="icono" width="32"></li>
                          <li><img src="/images/planes/juego2.png" alt="icono" width="32"></li>
                        </ul>
                      </div>
                    </div>

                  </div>







                  <!-- <div class="precio-plan"><span class="recarga">Recarga</span> s/3</div>
                        <ul class="list-unstyled">
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/llamadas.svg" alt="Llamadas"><span>Llamadas ilimitadas</span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/internet.svg" alt="Internet"><span>100MB Alta disponible </span></li>
                          <li><img class="images-prepago-left" src="/images/enquipo/svg/planes/rpb.svg" alt="RPB"><span>RPB ilimitado </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/sms.svg" alt="SMS"><span>SMS ilimitado (**) </span></li>
                          <li><img class="images-prepago-left" src="/images/equipo/svg/planes/facebook.svg" alt="Facebook"><span>Facebook Gratis </span></li>
                          <li><img src="/images/equipo/svg/planes/whatsapp-line.svg" alt="WhatsApp"><span>WhatsApp & Line Ilimitado </span></li>
                          <li><img src="/images/equipo/svg/planes/video.svg" alt="Youtube"><span>Youtube & Viki gratis desde las 00:00hrs a las 05:00hrs </span></li>
                          <li class="text-center">Apps gratis Hasta 23 hrs 59:59 del día de recarga</span></li>
                        </ul> -->
                </div>
              </div>
            </label>
          </div>
        </div>
        <!-- <section class="descrip-consideracion">
              <p>Nota:</p>
              <p>- Para todas los casos de Recarga, obtiene gratis los juegos: Clash Royale Y Clash of Clans.</p>
              <p>- Desde Recarga de S/5: Acceso a App's gratuitas desde S/5: Facebook, Twitter, Cineplanet, Tu Ruta, Aló Bodega, Mi Media Manzana, Waze, Instagram, Radio Player, Reach, Bitel Deportes. Restricciones que aplican a estas aplicaciones pueden ser consultadas en la sección restricciones.</p>
              <p>- YouTube gratis desde las 00:00 horas a las 05:00 horas.</p>
            </section> -->
      </div>
    </div>
  </div>
  <!--<div class="row">
        <div class="col-xs-12">
          <div id="especificaciones-tecnicas">
            <div class="title-detalle">
              <h4>ESPECIFICACIONES TÉCNICAS</h4>
            </div>
            <div class="content-detalle">
              <div class="descripcion-detalle">
                <ul class="list-unstyled">
                  <li> <img src="/images/equipo/svg/android.svg" alt="android"><span class="title-dispositivo">{{$product->product_os}}</span><span class="description-dispositivo">Sistema Operativo</span></li>
                  <li> <img src="/images/equipo/svg/memoria.svg" alt="android"><span class="title-dispositivo">{{$product->product_internal_memory}} GB / {{$product->product_external_memory}} GB</span><span class="description-dispositivo">Memoria</span></li>
                  <li> <img src="/images/equipo/svg/pantalla.svg" alt="android"><span class="title-dispositivo">{{$product->product_screen_size}}”</span><span class="description-dispositivo">Pantalla</span></li>
                  <li> <img src="/images/equipo/svg/camara.svg" alt="android"><span class="title-dispositivo">{{$product->product_camera_1}} MP / {{$product->product_camera_2}} MP</span><span class="description-dispositivo">Cámara</span></li>
                  <li> <img src="/images/equipo/svg/procesador.svg" alt="android"><span class="title-dispositivo">{{$product->product_processor_power}} GHz {{$product->product_processor_name}}</span><span class="description-dispositivo">Procesador</span></li>
                </ul>
              </div>
              {{--<div class="pdf-tecnica"><a href="{{route('download_file', ['filename' => str_slug($product->product_model)])}}">Descargar ficha técnica<span class="fa fa-download"></span></a></div>--}}
            </div>
          </div>
        </div>
      </div>-->

  <div class="row">
    <div class="col-xs-12">
      <a class="ver-mas-equipo" id="boton2">
        <div class="title-detalle">
          <span id="span2" class="btn-vmas"
            style="font-size: 25px;color: white;border: 1px solid #1d7c8c;background: #1d7c8c;width: 25px;border-radius: 25px;top: 0;bottom: 0;text-align: center;height: 25px;">
            <p style="vertical-align: middle;margin: 10px auto;line-height: 1px;display: block;">+</p>
          </span>
          <h4>VER CONSIDERACIONES COMERCIALES</h4>
        </div>
      </a>
      <div id="ifr2" style="display: none">
      </div>
    </div>
  </div>

  @if (count($available) > 0)
  <div class="row">
    <div class="col-xs-12">
      <div id="producto-disponibles">
        <div class="title-detalle">
          <h5>PRODUCTOS DISPONIBLES</h5>
        </div>
        <div class="list-producto">
          @foreach ($available as $item)
          <div class="producto">
            <div class="image-product text-center">
              <a href="{{$item->route}}">
                <img src="{{asset(Storage::url($item->picture_url))}}" alt="equipos">
              </a>
            </div>
            <div class="content-product text-center">
              <div class="title-product">
                <h3 class="text-center"><b>{{$item->brand_name}}</b></h3>
                <h3 class="text-center">{{$item->product_model}}</h3>
              </div>
              <div class="price-product">
                @if($item->promo_id)
                <span>S/{{$item->promo_price}}</span>
                <span class="normal-price">S/{{$item->product_price}}</span>
                @else
                <span>S/{{$item->product_price}}</span>
                @endif
              </div>
              <div class="btn-comprar"><a href="{{$item->route}}" class="btn btn-default">Solicitalo</a></div>
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </div>
  </div>
  @endif
</div>
@php
$product_init = [
'product' => $product,
'product_images' => $product_images,
'stock_models' => $stock_models,
'available' => $available
];
@endphp
<input id="product-init" type="hidden" value='@json($product_init)'>
@endsection