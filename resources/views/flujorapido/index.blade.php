@extends('layouts.master')
@section('content')

@if (session('ws_result'))
@php
$ws_result = json_decode(session('ws_result'));
@endphp
{{-- @if (session('ws_result') == 2) --}}
<div class="alert alert-warning alert-ws alert-dismissible" role="alert">
    <div class="alert-header">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-push-4">
                <button type="button" class="btn-close close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <span><b>BITEL</b> {{$ws_result->title}}</span>
            </div>
        </div>
    </div>
    <div class="alert-body">
        <div class="row">
            <div class="center-flex">
                <div class="col-xs-12 col-sm-4">
                    <img class="img-responsive" src="{{asset('images/alerts/img-bitel.png')}}" alt="">
                </div>
                <div class="col-xs-12 col-sm-8">
                    <p>{{$ws_result->message}}</p>
                    {{-- {{session('msg')}} --}}
                </div>
            </div>
        </div>
    </div>
</div>
{{-- @endif --}}
@endif

@if (session('msg'))
<div class="alert alert-warning alert-dismissible" role="alert">
    <button type="button" class="btn-close close" data-dismiss="alert" aria-label="Close"><span
            aria-hidden="true">&times;</span></button>
    <div class="alert-body">
        <div class="row">
            <div class="center-flex">
                <div class="col-xs-12 col-sm-4">
                    <img class="img-responsive" src="{{asset('images/alerts/img-left.png')}}" alt="">
                </div>
                <div class="col-xs-12 col-sm-8">
                    <div class="text-center">
                        {!!session('msg')!!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
<div class="boxLoader" style="display: none;background-color: rgba(255, 255, 255, .7);
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    z-index: 9;
    left: 0;">
    <span style="background-image: url(https://bitel.com.pe/themes/custom/bitel/img/loaderNew.gif);
    -webkit-background-size: cover;
    background-size: cover;
    width: 90px;
    height: 90px;
    display: block;
    position: absolute;
    left: 50%;
    margin-left: -45px;
    top: 20%;
    margin-top: -45px;"></span>
</div>
<section id="box-popup-page-planes" v-bind:class="{ active: isActivePopUp }">
    <div class="box-popup-planes">

        <div class="box-popup-planes__header">
            <a class="box-btn-close" @click.prevent="toggleactiveaPopUp()">
                <i class="fa fa-close" aria-hidden="true"></i>
            </a>
        </div>
        <div class="box-popup-planes__body">
            <div class="box-popup-planes-description">

                @foreach ($plans as $plan)

                @if($nameSlugPlan)
                @if ($plan->plan_slug == $nameSlugPlan)
                <h1 class="box-popup-planes-description__title">Plan {{$plan->plan_name_name}}</h1>
                <div class="box-popup-planes-description__precio">
                    <span class="moneda">S/</span>
                    <span class="price price-change">{{$plan->plan_price_integer}}</span>
                    <span class="moneda">.</span>
                    <span class="moneda moneda-change">{{$plan->plan_price_decimal}}</span>
                    <span class="tagciclo">x Ciclo</span>
                </div>
                @endif
                @else
                @if ($loop->iteration == 1)
                <h1 class="box-popup-planes-description__title">Plan {{$plan->plan_name_name}}</h1>
                <div class="box-popup-planes-description__precio">
                    <span class="moneda">S/</span>
                    <span class="price price-change">{{$plan->plan_price_integer}}</span>
                    <span class="moneda">.</span>
                    <span class="moneda moneda-change">{{$plan->plan_price_decimal}}</span>
                    <span class="tagciclo">x Ciclo</span>
                </div>
                @endif
                @endif

                @endforeach

                @foreach ($plans as $plan)

                @if($nameSlugPlan)
                @if ($plan->plan_slug == $nameSlugPlan)
                <div id="box-popup-planes-description-{{$plan->plan_id}}"
                    class="box-popup-planes-description__detail box-popup-planes-description__detail--active">
                    @else
                    <div id="box-popup-planes-description-{{$plan->plan_id}}"
                        class="box-popup-planes-description__detail">
                        @endif

                        @else

                        @if ($loop->iteration == 1)
                        <div id="box-popup-planes-description-{{$plan->plan_id}}"
                            class="box-popup-planes-description__detail box-popup-planes-description__detail--active">
                            @else
                            <div id="box-popup-planes-description-{{$plan->plan_id}}"
                                class="box-popup-planes-description__detail">
                                @endif
                                @endif


                                <div class="box-plan-content-comercial">
                                    @foreach ($info_comercial as $info)
                                    @if($info->plan_id == $plan->plan_id)
                                    @if($info->tipo == 1)
                                    <div class="box-item-comercial">
                                        <div class="box-column">
                                            <div class="item-comercial">
                                                <img src="{{$info->plan_infocomercial_img_url}}" alt="icono" width="25">
                                                <span>{{$info->plan_infocomercial_descripcion}}</span>
                                            </div>
                                            <div class="item-comercial-detalle">
                                                <span>{{$info->plan_infocomercial_informacion_adicional}}</span>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    @endif
                                    @endforeach
                                </div>
                            </div>
                            @endforeach

                            @foreach ($plans as $plan)
                            @if ($loop->iteration == 1)
                            <div id="box-popup-planes-description-apps-{{$plan->plan_id}}" class="
                        box-popup-planes-description__appsilimitas box-popup-planes-description__appsilimitas--active">
                                @else
                                <div id="box-popup-planes-description-apps-{{$plan->plan_id}}"
                                    class="box-popup-planes-description__appsilimitas">
                                    @endif
                                    <div class="appsilimitasitem appsilimitasitem--social-media">
                                        @foreach ($info_comercial as $info)
                                        @if($info->plan_id == $plan->plan_id)
                                        @if($info->tipo == 1)
                                        <p class="appsilimitasitem__title">Tus apps favoritas <span>ilimitadas</span>
                                        </p>
                                        @break
                                        @endif
                                        @endif
                                        @endforeach
                                        {{-- @if (empty($info_comercial))
                                <p class="appsilimitasitem__title">Tus apps favoritas <span>ilimitadas</span></p>
                                @endif --}}
                                        <ul class="appsilimitasitem__list">
                                            @foreach ($info_comercial as $info)
                                            @if($info->plan_id == $plan->plan_id)
                                            @if($info->tipo == 1)
                                            <li>
                                                <img src="{{$info->plan_infocomercial_img_url}}"
                                                    alt="{{$info->plan_infocomercial_descripcion}}" width="32">
                                                {{-- <span>Foto</span> --}}
                                            </li>
                                            @endif
                                            @endif
                                            @endforeach
                                            {{-- <li>
                                    <img src="http://biteltienda.com/storage/plan_info/Facebook.svg" alt="" width="32">
                                    <span>Foto</span></li>
                                <li><img src="http://biteltienda.com/storage/plan_info/Instagram.svg" alt="" width="32">
                                </li>
                                <li><img src="http://biteltienda.com/storage/plan_info/whatsapp.svg" alt="" width="32">
                                </li>
                                <li><img src="http://biteltienda.com/storage/plan_info/Line.png" alt="" width="32">
                                </li> --}}
                                        </ul>
                                    </div>
                                    <div class="appsilimitasitem appsilimitasitem--musica">
                                        @foreach ($info_comercial as $info)
                                        @if($info->plan_id == $plan->plan_id)
                                        @if($info->tipo == 3)
                                        <p class="appsilimitasitem__title">Video y Música</p>
                                        @break
                                        @endif
                                        @endif
                                        @endforeach
                                        <ul class="appsilimitasitem__list">
                                            @foreach ($info_comercial as $info)
                                            @if($info->plan_id == $plan->plan_id)
                                            @if($info->tipo == 3)
                                            <li>
                                                <img src="{{$info->plan_infocomercial_img_url}}"
                                                    alt="{{$info->plan_infocomercial_descripcion}}" width="32">
                                                {{-- <span>Foto</span> --}}
                                            </li>
                                            @endif
                                            @endif
                                            @endforeach
                                        </ul>
                                        @foreach ($info_comercial as $info)
                                        @if($info->plan_id == $plan->plan_id)
                                        @if($info->tipo == 3)
                                        <p class="appsilimitasitem__description"><span>Bono 1 GB</span></p>
                                        @break
                                        @endif
                                        @endif
                                        @endforeach
                                    </div>
                                    <div class="appsilimitasitem appsilimitasitem--juegos">
                                        @foreach ($info_comercial as $info)
                                        @if($info->plan_id == $plan->plan_id)
                                        @if($info->tipo == 4)
                                        <p class="appsilimitasitem__title">Juegos</p>
                                        @break
                                        @endif
                                        @endif
                                        @endforeach
                                        <ul class="appsilimitasitem__list">
                                            @foreach ($info_comercial as $info)
                                            @if($info->plan_id == $plan->plan_id)
                                            @if($info->tipo == 4)
                                            <li>
                                                <img src="{{$info->plan_infocomercial_img_url}}"
                                                    alt="{{$info->plan_infocomercial_descripcion}}" width="32">
                                                {{-- <span>Foto</span> --}}
                                            </li>
                                            @endif
                                            @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                @endforeach
                            </div>
</section>

<section id="box-popup-page-planes" v-bind:class="{ active: isActivePopUpTerminosCondiciones }">
    <div class="box-popup-planes box-popup-equipo">

        <div class="box-popup-planes__header">
            <a class="box-btn-close" @click.prevent="toggleactiveaPopUpTerminos()">
                <i class="fa fa-close" aria-hidden="true"></i>
            </a>
        </div>
        <div class="box-popup-planes__body box-popup-equipo__body">
            <p>El usuario autoriza expresamente a Bitel a usar y tratar los datos personales que el titular proporciona
                en la página web y la contratación de servicios, así como en la información que se derive de su uso. El
                tratamiento de la información tiene como finalidad crear perfiles y enviar ofertas personalizadas de
                productos y servicios de la empresa y de terceros. El usuario ejercerá conforme a Ley, en cualquier
                momento, los derechos de información, acceso, actualización, inclusión, rectificación, cancelación y
                oposición sobre sus datos personales enviando una comunicación escrita a cualquier Centro de Atención
                Bitel ó llamando al 123.</p>
        </div>



</section>
<div id="page-planes">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div id="section-page-planes" class="container-section-new-information">

                    <div class="page-equipo-planes-header page-equipo-planes-header__phone">
                        <h1 class="title"><strong>PLANES</strong> Plan Control</h1>

                        {{-- <div class="descripcion">
                                    <p>{!! $product->product_description_postpaid !!}</p>
                                </div> --}}
                    </div>
                    <div id="content-page">
                        <!-- @include('products.tag',['product' => $product]) -->
                        <div id="image-equipo" class="image-equipo-chip">
                            <div class="img-loading">
                                <img src="/images/planes/placeholder.png" alt="">
                            </div>
                            @if(count($product_images)>0)
                            <div class="new-slider" id="descripcion-equipo">
                                <!-- <div class="image-product text-center">
                          <img id="zoom_01" src="{{asset(Storage::url($product_images[0]->product_image_url))}}" alt="{{$product->product_model}}">{{-- data-zoom-image="{{asset(Storage::url($product_images[0]->product_image_url))}}">--}}
                        </div> -->
                                @if(count($product_images)>0)
                                <ul>
                                    @foreach($product_images as $image)
                                    <li>
                                        <img src="{{asset(Storage::url($product->product_image_url))}}"
                                            alt="{{$product->product_model}}">
                                    </li>
                                    @endforeach
                                </ul>
                                @else
                                @endif
                            </div>
                            @else
                            <div class="new-slider-one">
                                <img src="{{asset(Storage::url($product->product_image_url))}}"
                                    alt="{{$product->product_model}}">
                            </div>
                            @endif

                            <!-- <ul>
                      <li><img src="http://via.placeholder.com/340x320" alt=""></li>
                      <li><img src="http://via.placeholder.com/340x320" alt=""></li>
                      <li><img src="http://via.placeholder.com/340x320" alt=""></li>
                      <li><img src="http://via.placeholder.com/340x320" alt=""></li>
                    </ul> -->


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
                <div id="gallery_01" class="galeria-min"></div>
                @endif
              @else
              <div class="image-product text-center"><img src="{{asset(Storage::url($product->product_image_url))}}" alt="{{$product->product_model}}">{{-- data-zoom-image="{{asset(Storage::url($product->product_image_url))}}">--}}
              </div>
              <div id="gallery_01" class="galeria-min"></div>
              @endif -->
                        </div>
                    </div>
                    <section id="descripcion-equipo" class="page-equipo-planes ">

                        <div class="page-equipo-planes-header page-equipo-planes-header__desktop">
                            <h1 class="title"><strong>PLANES</strong> Plan Control</h1>

                        </div>

                        <div id="section-planes" class="section-planes">
                            <input type="hidden" name="selectInitPlan" id="selectInitPlan" value="{{$nameTypePlan}}">
                            <div class="section-planes__tab">
                                <ul>

                                    {{-- setActive --}}

                                    @foreach ($afiliaciones as $afiliacion)
                                    @foreach ($plans as $plan)
                                    @if ($loop->iteration == 1)

                                    <li v-bind:class="{ active: setActive == '{{$afiliacion->affiliation_slug}}' }"
                                        class="section-planes__tab--{{$afiliacion->affiliation_slug}}">
                                        <a href="#"
                                            @click.prevent="selectToTab('{{$afiliacion->affiliation_slug}}', {{$afiliacion->affiliation_id}}, '{{$plan->plan_id}}')">
                                            @if ($afiliacion->affiliation_slug == 'portabilidad')
                                            Portabilidad
                                            @endif
                                            @if ($afiliacion->affiliation_slug == 'linea-nueva')
                                            Línea nueva
                                            @endif
                                            @if ($afiliacion->affiliation_slug == 'renovacion')
                                            Migración
                                            @endif
                                        </a>
                                    </li>
                                    @endif
                                    @endforeach


                                    @endforeach
                                    <li v-bind:class="{ active: setActive == 'prepago' }"
                                        class="section-planes__tab--prepago">
                                        <a href="#" @click.prevent="selectToTab('prepago', 4, '15')">Prepago</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="section-planes__type">
                                <div class="section-planes__type--portabilidad" v-if="setActive == 'portabilidad'">
                                    <div class="planes-tab-content">
                                        <div class="planes-tab-content__select-plan">
                                            <span>Elije tu plan</span>
                                            <div class="box-icon-form-up-down">
                                                <i class="fa fa-angle-up" aria-hidden="true"></i>
                                                <i class="fa fa-angle-down" aria-hidden="true"></i>
                                            </div>
                                            @php
                                            // dd($plansPortabilidad)
                                            @endphp
                                            <select name="portabilidadselect" id="portabilidadselect"
                                                v-on:change="selectToPlan($event, 1)">

                                                @foreach ($plansPortabilidad as $plan)

                                                @if($nameSlugPlan)

                                                @if ($plan->plan_slug == $nameSlugPlan)
                                                <option selected value="{{$plan->plan_id}}">
                                                    {{$plan->plan_name_name}}
                                                    {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}} x Ciclo
                                                </option>
                                                @else
                                                <option value="{{$plan->plan_id}}">
                                                    {{$plan->plan_name_name}}
                                                    {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}} x Ciclo
                                                </option>
                                                @endif

                                                @else

                                                @if ($loop->iteration == 1)
                                                <option selected value="{{$plan->plan_id}}">
                                                    {{$plan->plan_name_name}}
                                                    {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}} x Ciclo
                                                </option>
                                                @else
                                                <option value="{{$plan->plan_id}}">
                                                    {{$plan->plan_name_name}}
                                                    {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}} x Ciclo
                                                </option>
                                                @endif

                                                @endif

                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="planes-tab-content__description">
                                            <div class="planes-tab-content__description--socialmedia">
                                                @foreach ($plansPortabilidad as $plan)

                                                @if($nameSlugPlan)

                                                @if ($plan->plan_slug == $nameSlugPlan)
                                                <ul id="plan-{{$plan->plan_id}}"
                                                    class="plan-item-socialmedia plan-item-socialmedia-active">
                                                    @else
                                                    <ul id="plan-{{$plan->plan_id}}" class="plan-item-socialmedia">
                                                        @endif

                                                        @else

                                                        @if ($loop->iteration == 1)
                                                        <ul id="plan-{{$plan->plan_id}}"
                                                            class="plan-item-socialmedia plan-item-socialmedia-active">
                                                            @else
                                                            <ul id="plan-{{$plan->plan_id}}"
                                                                class="plan-item-socialmedia">
                                                                @endif
                                                                @endif





                                                                @foreach ($info_comercial as $info)
                                                                @if($info->plan_id == $plan->plan_id)

                                                                @if($info->tipo == 1)
                                                                <li><img src="{{$info->plan_infocomercial_img_url}}"
                                                                        alt="" width="32"></li>
                                                                @endif

                                                                @endif
                                                                @endforeach

                                                            </ul>

                                                            @endforeach

                                            </div>
                                            <div class="planes-tab-content__description--information">
                                                @foreach ($plansPortabilidad as $plan)

                                                @if($nameSlugPlan)

                                                @if ($plan->plan_slug == $nameSlugPlan)

                                                <div id="plan-information-{{$plan->plan_id}}"
                                                    class="plan-information-item plan-information-active">
                                                    @else
                                                    <div id="plan-information-{{$plan->plan_id}}"
                                                        class="plan-information-item">
                                                        @endif

                                                        @else

                                                        @if ($loop->iteration == 1)
                                                        <div id="plan-information-{{$plan->plan_id}}"
                                                            class="plan-information-item plan-information-active">
                                                            @else
                                                            <div id="plan-information-{{$plan->plan_id}}"
                                                                class="plan-information-item">
                                                                @endif
                                                                @endif




                                                                @foreach ($info_comercial as $info)

                                                                @if($info->plan_id == $plan->plan_id)

                                                                @if($info->tipo == 1)

                                                                <div class="box-information-plan">
                                                                    <span
                                                                        class="box-information-plan__description">{{$info->plan_infocomercial_descripcion}}</span>
                                                                    <p class="box-information-plan__value">
                                                                        {{$info->plan_infocomercial_informacion_adicional}}
                                                                    </p>
                                                                </div>
                                                                @endif
                                                                @endif
                                                                @endforeach

                                                            </div>

                                                            @endforeach

                                                        </div>
                                                        <div class="planes-tab-content__description--vermas">
                                                            <div class="box-btn-more">
                                                                <a href="#" class="btn-open-popup"
                                                                    @click.prevent="toggleactiveaPopUp()"> Ver más</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="planes-precio-content">

                                                    @php
                                                    // dd($plansPortabilidad)

                                                    @endphp
                                                    @if($nameSlugPlan)

                                                    @foreach ($plansPortabilidad as $key => $plan)

                                                    @if ($plan->plan_slug == $nameSlugPlan)
                                                    <postpaid-price-plan-flujo v-if="Object.keys(product).length != 0"
                                                        :product="product.plans[{{$key}}]">
                                                    </postpaid-price-plan-flujo>
                                                    @endif

                                                    @endforeach

                                                    @else
                                                    <postpaid-price-plan-flujo v-if="Object.keys(product).length != 0"
                                                        :product="product.plans[0]">
                                                    </postpaid-price-plan-flujo>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="section-planes__type--linea-nueva" style="display: none"
                                                v-if="setActive == 'linea-nueva'">
                                                <div class="planes-tab-content">
                                                    <div class="planes-tab-content__select-plan">
                                                        <span>Elije tu plan</span>
                                                        <div class="box-icon-form-up-down">
                                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                                        </div>
                                                        <select name="lineanuevaselect" id="lineanuevaselect"
                                                            v-on:change="selectToPlan($event, 2)">
                                                            @foreach ($plansLineaNueva as $plan)

                                                            @if($nameSlugPlan)

                                                            @if ($plan->plan_slug == $nameSlugPlan)
                                                            <option selected value="{{$plan->plan_id}}">
                                                                {{$plan->plan_name_name}}
                                                                {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                x Ciclo
                                                            </option>
                                                            @else
                                                            <option value="{{$plan->plan_id}}">
                                                                {{$plan->plan_name_name}}
                                                                {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                x Ciclo
                                                            </option>
                                                            @endif

                                                            @else

                                                            @if ($loop->iteration == 1)
                                                            <option selected value="{{$plan->plan_id}}">
                                                                {{$plan->plan_name_name}}
                                                                {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                x Ciclo
                                                            </option>
                                                            @else
                                                            <option value="{{$plan->plan_id}}">
                                                                {{$plan->plan_name_name}}
                                                                {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                x Ciclo
                                                            </option>
                                                            @endif

                                                            @endif

                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="planes-tab-content__description">
                                                        <div class="planes-tab-content__description--socialmedia">
                                                            @foreach ($plansLineaNueva as $plan)

                                                            @if($nameSlugPlan)

                                                            @if ($plan->plan_slug == $nameSlugPlan)
                                                            <ul id="plan-{{$plan->plan_id}}"
                                                                class="plan-item-socialmedia plan-item-socialmedia-active">
                                                                @else
                                                                <ul id="plan-{{$plan->plan_id}}"
                                                                    class="plan-item-socialmedia">
                                                                    @endif

                                                                    @else

                                                                    @if ($loop->iteration == 1)
                                                                    <ul id="plan-{{$plan->plan_id}}"
                                                                        class="plan-item-socialmedia plan-item-socialmedia-active">
                                                                        @else
                                                                        <ul id="plan-{{$plan->plan_id}}"
                                                                            class="plan-item-socialmedia">
                                                                            @endif
                                                                            @endif

                                                                            @foreach ($info_comercial as $info)
                                                                            @if($info->plan_id == $plan->plan_id)

                                                                            @if($info->tipo == 1)
                                                                            <li><img src="{{$info->plan_infocomercial_img_url}}"
                                                                                    alt="" width="32"></li>
                                                                            @endif

                                                                            @endif
                                                                            @endforeach

                                                                        </ul>

                                                                        @endforeach
                                                        </div>
                                                        <div class="planes-tab-content__description--information">
                                                            @foreach ($plansLineaNueva as $plan)

                                                            @if($nameSlugPlan)

                                                            @if ($plan->plan_slug == $nameSlugPlan)

                                                            <div id="plan-information-{{$plan->plan_id}}"
                                                                class="plan-information-item plan-information-active">
                                                                @else
                                                                <div id="plan-information-{{$plan->plan_id}}"
                                                                    class="plan-information-item">
                                                                    @endif

                                                                    @else

                                                                    @if ($loop->iteration == 1)
                                                                    <div id="plan-information-{{$plan->plan_id}}"
                                                                        class="plan-information-item plan-information-active">
                                                                        @else
                                                                        <div id="plan-information-{{$plan->plan_id}}"
                                                                            class="plan-information-item">
                                                                            @endif
                                                                            @endif

                                                                            @foreach ($info_comercial as $info)

                                                                            @if($info->plan_id == $plan->plan_id)

                                                                            @if($info->tipo == 1)

                                                                            <div class="box-information-plan">
                                                                                <span
                                                                                    class="box-information-plan__description">{{$info->plan_infocomercial_descripcion}}</span>
                                                                                <p class="box-information-plan__value">
                                                                                    {{$info->plan_infocomercial_informacion_adicional}}
                                                                                </p>
                                                                            </div>
                                                                            @endif
                                                                            @endif
                                                                            @endforeach

                                                                        </div>

                                                                        @endforeach
                                                                    </div>
                                                                    <div
                                                                        class="planes-tab-content__description--vermas">
                                                                        <div class="box-btn-more">
                                                                            <a href="#" class="btn-open-popup"
                                                                                @click.prevent="toggleactiveaPopUp()">
                                                                                Ver
                                                                                más</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="planes-precio-content">
                                                                @if($nameSlugPlan)

                                                                @foreach ($plansLineaNueva as $key => $plan)

                                                                @if ($plan->plan_slug == $nameSlugPlan)
                                                                <postpaid-price-plan-flujo
                                                                    v-if="Object.keys(product).length != 0"
                                                                    :product="product.plans[{{$key}}]">
                                                                </postpaid-price-plan-flujo>
                                                                @endif

                                                                @endforeach

                                                                @else
                                                                <postpaid-price-plan-flujo
                                                                    v-if="Object.keys(product).length != 0"
                                                                    :product="product.plans[0]">
                                                                </postpaid-price-plan-flujo>
                                                                @endif
                                                            </div>
                                                        </div>
                                                        <div class="section-planes__type--renovacion"
                                                            style="display: none" v-if="setActive == 'renovacion'">
                                                            <div class="planes-tab-content">
                                                                <div class="planes-tab-content__modalidad">
                                                                    <div class="planes-tab-content__modalidad--title">
                                                                        <span>Modalidad</span>
                                                                    </div>
                                                                    <div class="planes-tab-content__modalidad--select">
                                                                        <div class="box-select-type-radio">
                                                                            <label for="postpagoPostpago"
                                                                                class="box-select-type-radio__label">
                                                                                <input value="Postpago - Postpago"
                                                                                    type="radio"
                                                                                    name="select-modalidad-PostpagoPrepago"
                                                                                    id="postpagoPostpago" checked
                                                                                    v-on:change="selectModalidad($event)"
                                                                                    class="box-select-type-radio__input">
                                                                                <span>Postpago <i
                                                                                        class="fa fa-arrow-right"
                                                                                        aria-hidden="true"></i>
                                                                                    <strong>Postpago</strong></span>
                                                                            </label>
                                                                        </div>
                                                                        <div class="box-select-type-radio">
                                                                            <label for="prepagoPostpago"
                                                                                class="box-select-type-radio__label">
                                                                                <input
                                                                                    v-on:change="selectModalidad($event)"
                                                                                    value="Prepago - Postpago"
                                                                                    type="radio"
                                                                                    name="select-modalidad-PostpagoPrepago"
                                                                                    id="prepagoPostpago"
                                                                                    class="box-select-type-radio__input">
                                                                                <span>Prepago <i
                                                                                        class="fa fa-arrow-right"
                                                                                        aria-hidden="true"></i>
                                                                                    <strong>Postpago</strong></span>
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="planes-tab-content__select-plan">
                                                                    <span>Elije tu plan</span>
                                                                    <div class="box-icon-form-up-down">
                                                                        <i class="fa fa-angle-up"
                                                                            aria-hidden="true"></i>
                                                                        <i class="fa fa-angle-down"
                                                                            aria-hidden="true"></i>
                                                                    </div>
                                                                    <select name="migracionselect" id="migracionselect"
                                                                        v-on:change="selectToPlan($event , 3)">
                                                                        @foreach ($plansRenovacion as $plan)

                                                                        @if($nameSlugPlan)

                                                                        @if ($plan->plan_slug == $nameSlugPlan)
                                                                        <option selected value="{{$plan->plan_id}}">
                                                                            {{$plan->plan_name_name}}
                                                                            {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                            x Ciclo
                                                                        </option>
                                                                        @else
                                                                        <option value="{{$plan->plan_id}}">
                                                                            {{$plan->plan_name_name}}
                                                                            {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                            x Ciclo
                                                                        </option>
                                                                        @endif

                                                                        @else

                                                                        @if ($loop->iteration == 1)
                                                                        <option selected value="{{$plan->plan_id}}">
                                                                            {{$plan->plan_name_name}}
                                                                            {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                            x Ciclo
                                                                        </option>
                                                                        @else
                                                                        <option value="{{$plan->plan_id}}">
                                                                            {{$plan->plan_name_name}}
                                                                            {{$plan->plan_price_integer}}.{{$plan->plan_price_decimal}}
                                                                            x Ciclo
                                                                        </option>
                                                                        @endif

                                                                        @endif

                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="planes-tab-content__description">
                                                                    <div
                                                                        class="planes-tab-content__description--socialmedia">
                                                                        @foreach ($plansRenovacion as $plan)

                                                                        @if($nameSlugPlan)

                                                                        @if ($plan->plan_slug == $nameSlugPlan)
                                                                        <ul id="plan-{{$plan->plan_id}}"
                                                                            class="plan-item-socialmedia plan-item-socialmedia-active">
                                                                            @else
                                                                            <ul id="plan-{{$plan->plan_id}}"
                                                                                class="plan-item-socialmedia">
                                                                                @endif

                                                                                @else

                                                                                @if ($loop->iteration == 1)
                                                                                <ul id="plan-{{$plan->plan_id}}"
                                                                                    class="plan-item-socialmedia plan-item-socialmedia-active">
                                                                                    @else
                                                                                    <ul id="plan-{{$plan->plan_id}}"
                                                                                        class="plan-item-socialmedia">
                                                                                        @endif
                                                                                        @endif

                                                                                        @foreach ($info_comercial as
                                                                                        $info)
                                                                                        @if($info->plan_id ==
                                                                                        $plan->plan_id)

                                                                                        @if($info->tipo == 1)
                                                                                        <li><img src="{{$info->plan_infocomercial_img_url}}"
                                                                                                alt="" width="32"></li>
                                                                                        @endif

                                                                                        @endif
                                                                                        @endforeach

                                                                                    </ul>

                                                                                    @endforeach
                                                                    </div>
                                                                    <div
                                                                        class="planes-tab-content__description--information">
                                                                        @foreach ($plansRenovacion as $plan)

                                                                        @if($nameSlugPlan)

                                                                        @if ($plan->plan_slug == $nameSlugPlan)

                                                                        <div id="plan-information-{{$plan->plan_id}}"
                                                                            class="plan-information-item plan-information-active">
                                                                            @else
                                                                            <div id="plan-information-{{$plan->plan_id}}"
                                                                                class="plan-information-item">
                                                                                @endif

                                                                                @else

                                                                                @if ($loop->iteration == 1)
                                                                                <div id="plan-information-{{$plan->plan_id}}"
                                                                                    class="plan-information-item plan-information-active">
                                                                                    @else
                                                                                    <div id="plan-information-{{$plan->plan_id}}"
                                                                                        class="plan-information-item">
                                                                                        @endif
                                                                                        @endif

                                                                                        @foreach ($info_comercial as
                                                                                        $info)

                                                                                        @if($info->plan_id ==
                                                                                        $plan->plan_id)

                                                                                        @if($info->tipo == 1)

                                                                                        <div
                                                                                            class="box-information-plan">
                                                                                            <span
                                                                                                class="box-information-plan__description">{{$info->plan_infocomercial_descripcion}}</span>
                                                                                            <p
                                                                                                class="box-information-plan__value">
                                                                                                {{$info->plan_infocomercial_informacion_adicional}}
                                                                                            </p>
                                                                                        </div>
                                                                                        @endif
                                                                                        @endif
                                                                                        @endforeach

                                                                                    </div>

                                                                                    @endforeach

                                                                                </div>
                                                                                <div
                                                                                    class="planes-tab-content__description--vermas">
                                                                                    <div class="box-btn-more">
                                                                                        <a href="#"
                                                                                            class="btn-open-popup"
                                                                                            @click.prevent="toggleactiveaPopUp()">
                                                                                            Ver
                                                                                            más</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="planes-precio-content">
                                                                            @if($nameSlugPlan)

                                                                            @foreach ($plansPortabilidad as $key =>
                                                                            $plan)

                                                                            @if ($plan->plan_slug == $nameSlugPlan)
                                                                            <postpaid-price-plan-flujo
                                                                                v-if="Object.keys(product).length != 0"
                                                                                :product="product.plans[{{$key}}]">
                                                                            </postpaid-price-plan-flujo>
                                                                            @endif

                                                                            @endforeach

                                                                            @else
                                                                            <postpaid-price-plan-flujo
                                                                                v-if="Object.keys(product).length != 0"
                                                                                :product="product.plans[0]">
                                                                            </postpaid-price-plan-flujo>
                                                                            @endif
                                                                        </div>
                                                                    </div>
                                                                    <div class="section-planes__type--prepago"
                                                                        style="display: none"
                                                                        v-if="setActive == 'prepago'">
                                                                        <div class="planes-tab-content">
                                                                            <div class="planes-tab-content__modalidad">
                                                                                <div
                                                                                    class="planes-tab-content__modalidad--title">
                                                                                    <span>Modalidad</span>
                                                                                </div>
                                                                                <div
                                                                                    class="planes-tab-content__modalidad--select">
                                                                                    <div class="box-select-type-radio">
                                                                                        <label for="nuevaPrepago"
                                                                                            class="box-select-type-radio__label">
                                                                                            <input
                                                                                                value="Línea nueva prepago"
                                                                                                v-on:change="selectModalidad($event)"
                                                                                                type="radio"
                                                                                                name="select-modalidad-Prepago"
                                                                                                checked
                                                                                                id="nuevaPrepago"
                                                                                                class="box-select-type-radio__input">
                                                                                            <span>Línea nueva
                                                                                                <strong>prepago</strong></span>
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="box-select-type-radio">
                                                                                        <label for="portabilidadPrepago"
                                                                                            class="box-select-type-radio__label">
                                                                                            <input
                                                                                                value="Portabilidad - Prepago"
                                                                                                v-on:change="selectModalidad($event)"
                                                                                                type="radio"
                                                                                                name="select-modalidad-Prepago"
                                                                                                id="portabilidadPrepago"
                                                                                                class="box-select-type-radio__input">
                                                                                            <span>Portabilidad
                                                                                                <strong>prepago</strong></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div
                                                                                class="planes-tab-content__precioSimCard">
                                                                                <div
                                                                                    class="planes-tab-content__precioSimCard--title">
                                                                                    <span>Precio del simcard:</span>
                                                                                </div>
                                                                                <div
                                                                                    class="planes-tab-content__precioSimCard--price">
                                                                                    <span class="price-moneda">S/</span>
                                                                                    <span class="price-count">5</span>
                                                                                    <span>.00</span>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                    </section>

                </div>
            </div>

            <div class="col-xs-12">
                <section>
                    <form @submit.prevent="validateInfoCliente" action="{{route('store_order_plan')}}"
                        class="section-form" id="form-vue-validator-planes" method="POST" ref="orderform">
                        {{-- <form @submit.prevent="validateInfoCliente" action="{{route('store_order_plan')}}"
                        class="section-form" ref="orderform" method="POST"> --}}
                        <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                        <input type="hidden" id="valuePlanControl" value="1" name="valuePlanControl">
                        <input type="hidden" id="valueProductId" value="{{$product->product_id}}" name="valueProductId">
                        <input type="hidden" id="valueStockModelId" value="{{$product->stock_model_id}}"
                            name="valueStockModelId">
                        <input type="hidden" id="valueVariationId" value="{{$product->product_variation_id}}"
                            name="valueVariationId">

                        <input type="hidden" id="valueContract" value="{{$product->contract_id}}" name="valueContract">

                        @if (count($plans) > 1)

                        @foreach ($plans as $plan)

                        @if($nameSlugPlan)

                        @if ($plan->plan_slug == $nameSlugPlan)
                        <input type="hidden" id="valueSelectTypePlan" value="{{$plan->plan_id}}"
                            name="valueSelectTypePlan">
                        @endif

                        @else

                        @if ($loop->iteration == 1)
                        <input type="hidden" id="valueSelectTypePlan" value="{{$plan->plan_id}}"
                            name="valueSelectTypePlan">
                        @endif

                        @endif


                        @endforeach

                        @else

                        <input type="hidden" id="valueSelectTypePlan" value="70" name="valueSelectTypePlan">

                        @endif





                        @if($nameSlugPlan)
                        <input type="hidden" v-if="activePathArmaTuPlan" id="valueSelectArmaTuPlan"
                            class="valueSelectArmaTuPlan" value="Flujo Arma tu plan" name="valueSelectArmaTuPlan">
                        @endif
                        {{-- <input type="hidden" id="valueSelectTypePlan" value="" name="valueSelectTypePlan"> --}}
                        <input type="hidden" id="valueSelectModalidad" value="Postpago - Postpago"
                            name="valueSelectTypePlanRenovacion" v-if="setActive == 'renovacion'">
                        <input type="hidden" id="valueSelectModalidad" value="Línea nueva prepago"
                            name="valueSelectTypePlanPrepago" v-if="setActive == 'prepago'">
                        <div class="section-form__box section-information-cliente">
                            <h1 class="section-form__title">Información del Cliente</h1>
                            <div class="section-form__information">
                                <div class="section-form__row column-1">
                                    <div class="section-form__input section-form__type-text">
                                        <span>Nombres</span>
                                        <input type="text" name="first_name"
                                            placeholder="Nombres y apellidos del titular"
                                            v-validate="'required|alpha_spaces|max:150'" maxlength="150"
                                            :class="{'input': true, 'is-danger': errors.has('first_name')}">
                                        <span v-cloak v-show="errors.has('first_name')" class="help is-danger">Sólo se
                                            permiten caracteres
                                            alfabeticos</span>
                                    </div>
                                </div>
                                <div class="section-form__row column-2">
                                    <div class="section-form__input section-form__type-select">
                                        <span>Tipo de documento</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select id="document_type" name="document_type" v-model="document_type"
                                            v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('document_type') }">
                                            <option value="" selected disabled>Tipo de Documento</option>
                                            <option value="1">DNI</option>
                                            <option value="2">CARNÉT DE DE EXTRANJERÍA</option>
                                            <option value="3">PASAPORTE</option>
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-text">
                                        <span>Numero de documento</span>


                                        <input id="document_number" type="text" name="document_number"
                                            placeholder="Documento del titular"
                                            v-bind:maxlength="document_type == 1 ? '8' : '12'" v-model="number_document"
                                            v-validate="document_type == 1 ? 'required|numeric|min:8|max:8' : 'required|alpha_num|min:12|max:12'"
                                            :class="{'input': true, 'is-danger': errors.has('document_number')}">

                                        <span v-if="document_type == 1" v-show="errors.has('document_number')"
                                            class="help is-danger" v-cloak>Sólo se permiten 8 caracteres
                                            numéricos</span>
                                        <span v-if="document_type == 2 || document_type == 3"
                                            v-show="errors.has('document_number')" class="help is-danger" v-cloak>Sólo
                                            se permiten 12 caracteres alfanuméricos</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section-form__box section-information-afiliation"
                            v-if="setActive !== 'linea-nueva'">
                            <h2 class="section-form__title" v-if="lineaNuevaPrepago">Información de afiliación
                            </h2>
                            <div class="section-form__information"
                                v-if="setActive !== 'renovacion' && lineaNuevaPrepago">
                                <div class="section-form__row column-3">
                                    <div class="section-form__input section-form__type-select">
                                        <span>Tipo de número a portar</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select v-if="setActive !== 'prepago'" id=" type_number_carry"
                                            name="type_number_carry" v-model="type_number_carry" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('type_number_carry') }">
                                            <option value="" disabled selected>Elegir tipo de número a portar</option>
                                            <option value="02" id="postpagoOption">Postpago</option>
                                            <option value="01" id="prepagoOption">Prepago</option>
                                        </select>
                                        <select v-if="setActive == 'prepago'" style="cursor: no-drop"
                                            id="type_number_carry" name="type_number_carry" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('type_number_carry') }">
                                            <option value="01" id="prepagoOption" selected>Prepago</option>
                                        </select>
                                    </div>

                                    <div class="section-form__input section-form__type-select">
                                        <span>Operador de procedencia</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        {{-- @if (isset($item['affiliation_id']) && $item['affiliation_id'] == 1) --}}



                                        <select id="operator" name="operator" v-model="operator" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('operator') }">
                                            <option value="" disabled selected>Seleccione un operador de procedencia
                                            </option>
                                            @foreach($source_operators as $id => $operator)
                                            <option value="{{$id}}">{{$operator}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-text">
                                        <span>Número a portar</span>
                                        <input id="porting_phone" type="text" name="porting_phone" maxlength="9"
                                            placeholder="Ingresa tu número" v-model="porting_phone"
                                            v-validate="'required|numeric|min:9|max:9|between:900000000,999999999'"
                                            :class="{'input': true, 'is-danger': errors.has('porting_phone')}">
                                        <span v-show="errors.has('porting_phone')" class="help is-danger" v-cloak>Por
                                            favor ingrese un número</span>
                                    </div>
                                </div>
                            </div>
                            <div class="section-form__information" v-if="setActive == 'renovacion'">
                                <div class="section-form__row column-3">
                                    <div class="section-form__input section-form__type-select">
                                        <span>Tipo de afiliación</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select style="cursor: no-drop" id="type_number_carry" disabled
                                            name="type_number_carry" v-model="type_number_carry" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('type_number_carry') }">
                                            <option value="" selected>Migra tu plan</option>
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-select">
                                        <span>Modalidad</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select style="cursor: no-drop" disabled id="operator" name="operator"
                                            v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('operator') }">
                                            <option id="postpost" selected value="">Postpago - Postpago
                                            </option>
                                            <option id="prepost" value="">Prepago - Postpago
                                            </option>
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-text">
                                        <span>Número a portar</span>
                                        <input id="porting_phone" type="text" name="porting_phone" maxlength="9"
                                            placeholder="Ingresa tu número" v-model="porting_phone"
                                            v-validate="'required|numeric|min:9|max:9|between:900000000,999999999'"
                                            :class="{'input': true, 'is-danger': errors.has('porting_phone')}">
                                        <span v-show="errors.has('porting_phone')" class="help is-danger" v-cloak>Por
                                            favor ingrese un número</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section-form__box section-information-delivery">
                            <div class="section-information-delivery__header">
                                <h3 class="section-form__title">Información de delivery</h3>
                                <a class="section-information-delivery__box-option" v-bind:class="{ active: isActive }"
                                    href="#" @click.prevent="toggleactiveInfoDelivery()">
                                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                                    <i class="fa fa-angle-up" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div class="section-form__information" v-if="isActive">
                                <div class="section-form__row column-3">
                                    <div class="section-form__input section-form__type-select">
                                        <span>Departamento</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select id=delivery_departament" name="delivery_departament"
                                            v-model="delivery_departament" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('delivery_departament')}"
                                            @change="selectDepartamentd($event)">
                                            <option value="" disabled selected>Elegir departamento</option>
                                            @foreach ($departamentos as $departamento)
                                            <option value="{{$departamento->departament_id}}">
                                                {{$departamento->departament_name}}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-select">
                                        <span>Provincia</span>
                                        <provincesd-plan-filtered v-if="delivery_provinces.length > 0"
                                            :delivery_provinces="delivery_provinces"
                                            :deptprovdist="dept_prov_dist_branch_list">
                                        </provincesd-plan-filtered>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select id="delivery_province" name="delivery_province"
                                            v-if="delivery_provinces.length == 0" v-model="delivery_province"
                                            v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('delivery_province')}"
                                            @change="selectProvinced($event)">
                                            <option value="" disabled selected>Elegir provincia</option>
                                        </select>
                                    </div>
                                    <div class="section-form__input section-form__type-select">
                                        <span>Distrito</span>
                                        <districtsd-plan-filtered v-if="delivery_districts.length > 0"
                                            :delivery_districts="delivery_districts"
                                            :deptprovdist="dept_prov_dist_branch_list">
                                        </districtsd-plan-filtered>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select v-if="delivery_districts.length == 0" id="delivery_district_1"
                                            name="delivery_district_1" v-model="delivery_district_1"
                                            v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('delivery_district_1')}"
                                            @change="selectDistrictd($event)">
                                            <option value="" disabled selected>Seleccione Distrito</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="section-form__row column-1">
                                    <div class="section-form__input section-form__type-text">
                                        <span>Dirección de delivery</span>
                                        <input id="delivery_address" type="text" name="delivery_address"
                                            placeholder="Ingresar dirección de entrega" v-model="delivery"
                                            v-validate="{required: true, max: 150, regex: /^([a-zA-Z0-áéíóú9ñÑ#.,\s-]+)$/}"
                                            maxlength="150"
                                            :class="{'input': true, 'is-danger': errors.has('delivery_address')}">
                                        <span v-show="errors.has('delivery_address')" class="help is-danger">Introduce
                                            una dirección válida</span>
                                    </div>
                                </div>
                                <div class="section-form__row column-3">
                                    <div class="section-form__input section-form__type-text">
                                        <span>Número de contacto</span>
                                        <input id="contact_phone" type="text" placeholder="Ingresar número de contacto"
                                            name="contact_phone" v-model="number_contact"
                                            v-validate="'required|numeric|max:9'" maxlength="9"
                                            :class="{'input': true, 'is-danger': errors.has('contact_phone')}">
                                        <span v-show="errors.has('contact_phone')" class="help is-danger" v-cloak>Sólo
                                            se permiten máximo 9 caracteres</span>
                                    </div>
                                    <div class="section-form__input section-form__type-text">
                                        <span>Correo electrónico</span>
                                        <input id="email" type="text" name="email"
                                            placeholder="Ingresa correo electrónico" v-model="email"
                                            v-validate="'required|email|max:150'" maxlength="150"
                                            :class="{'input': true, 'is-danger': errors.has('email')}">
                                        <span v-show="errors.has('email')" class="help is-danger" v-cloak>Introduce una
                                            dirección de
                                            correo válida</span>
                                    </div>
                                    <div class="section-form__input section-form__type-select">
                                        <span>Horario de contacto</span>
                                        <div class="box-icon-form-up-down">
                                            <i class="fa fa-angle-up" aria-hidden="true"></i>
                                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                                        </div>
                                        <select id=delivery_schedule" name="delivery_schedule"
                                            v-model="delivery_schedule" v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('delivery_schedule')}">
                                            <option value="" disabled selected>Elegir un horario</option>
                                            @foreach ($horarios as $horario)
                                            <option value="{{$horario->idschedule_id}}">{{$horario->idschedule_name}}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="section-form__row column-1">
                                    <div class="section-form__input section-form__type-checkbox">
                                        <input type="checkbox" name="terminos_condiciones" id="terminos_condiciones"
                                            checked v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('terminos_condiciones')}">
                                        <label @click.prevent="toggleactiveaPopUpTerminos()">Aceptar los
                                            <span>términos y condiciones</span></label>

                                    </div>
                                </div>
                                <div class="section-form__row column-1">
                                    <div class="section-form__input section-form__type-checkbox">
                                        <input type="checkbox" name="terminos_condiciones" id="terminos_condiciones"
                                            checked v-validate="'required'"
                                            :class="{'input': true, 'is-danger': errors.has('terminos_condiciones')}">
                                        <a href="{{route('download_Consideraciones')}}" target="_blank">

                                            <label>Aceptar las
                                                <span>consideraciones comerciales</span></label>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" section-form__box section-informaction-submit">
                            <div class="section-form__submit">
                                <button id="submitOrder" type="submit" class="btn btn__submit">SOLICITALO AHORA</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>




        </div>

    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-offset-4 col-sm-8">
            <div class="add-select-plan"></div>

        </div>
    </div>




</div>
@php
$product_init = [
'product' => $product,
'product_images' => $product_images,
'stock_models' => $stock_models,
'available' => $available,
'plans' => $plans,
'affiliations' => $affiliations,
'contracts' => $contracts
];

$plansOptions = [
'plansPortabilidad' => $plansPortabilidad,
'plansLineaNueva' => $plansLineaNueva,
'plansRenovacion' => $plansRenovacion,
];

@endphp

<input id="product-init" type="hidden" value='@json($product_init)'>
<input id="product-initplansOption" type="hidden" value='@json($plansOptions)'>


@endsection


<!--script>
document.addEventListener("DOMContentLoaded", function(event) { 
  //do work

  $('#purchase-form').submit(function(event) {

    event.preventDefault(); //this will prevent the default submit
    var stopSubmit=0;

    $.ajax({
        type: 'post',
        url: "{{url('validateVariationAffiliation')}}",
        async: false,
        data: {
            '_token': $('meta[name="csrf-token"]').attr('content'),
            'product_variation': $('input[name="product_variation"]').val(),
            'affiliation': $('input[name="affiliation"]').val()
        },
        success: function(response)
        {
            if(response==0){
              alert("Ha ocurrido un error. Inténtelo nuevamente.");
              location.reload();             
              stopSubmit=1;
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("Ha ocurrido un error. Inténtelo nuevamente.");
          location.reload();            
          stopSubmit=1;
        }
    });
    if(stopSubmit!=1)
      $(this).unbind('submit').submit();

  });

});

</script-->