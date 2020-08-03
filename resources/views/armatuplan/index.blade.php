@extends('layouts.master')
@section('content')
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
                @endforeach
                @foreach ($plans as $plan)
                @if ($loop->iteration == 1)
                <div id="box-popup-planes-description-{{$plan->plan_id}}"
                    class="box-popup-planes-description__detail box-popup-planes-description__detail--active">
                    @else
                    <div id="box-popup-planes-description-{{$plan->plan_id}}"
                        class="box-popup-planes-description__detail">
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
                                <p class="appsilimitasitem__title">Tus apps favoritas <span>ilimitadas</span></p>
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

<section id="box-popup-page-planes" v-bind:class="{ active: isActivePopUpConsumoTotal }">
    <div class="box-popup-planes box-popup-equipo box-popup-equipo-armatuplan">

        <div class="box-popup-planes__header">
            <a class="box-btn-close" @click.prevent="toggleactiveaPopUpConsumoTotal()">
                <i class="fa fa-close" aria-hidden="true"></i>
            </a>
        </div>
        <div class="box-popup-planes__body box-popup-equipo__body armatuplan-modal-body">
            <p class="descripcion-header"><span>Gracias, </span> en base a tu consumo aproximado de <span class="gigas"
                    v-html="internetConsumidoTotal"> </span> <span class="gigas"> GB </span> por mes, el plan que mas se
                adecua a tus necesidades es:</p>

            {{-- v-for="(item, index) in items"
                v-bind:item="item" --}}
            <div id="section-planes" class="section-planes">
                <arma-tu-plan-popup v-if="productPlansInfoComercial.length > 0"
                    {{-- v-for="productPlansInfoComercialItem in productPlansInfoComercial" --}}
                    {{-- v-bind:product="productPlansInfoComercialItem" --}} :product="productPlansInfoComercial"
                    :base-url="baseUrl">
                </arma-tu-plan-popup>
                {{-- <postpaid-price-plan v-if="Object.keys(product).length != 0"
                                        :product="product.product"></postpaid-price-plan> --}}
            </div>



        </div>



</section>

<div id="page-armatuplan">
    <input id="cantContac" name="cantContac" type="hidden" v-bind:value="cantidadContactos">
    <input id="cantGigas" name="cantGigas" type="hidden" v-bind:value="internetConsumidoTotal">


    <div class="container container-titutlo">
        <h1>Ayudanos creando tu mejor Plan Control</h1>
    </div>
    <div class="container container-barra-head" v-if="renderizadoVistaBarra === '1'">
        <div class="container-barra">
            <div class="barra" v-bind:class="[barra_totalHead]"></div>
        </div>
    </div>

    <div class="container" v-if="renderizadoVistaBarra === '1'">
        <div class="body">
            <div class="title">
                <h2 v-show="renderizadoVista === '1'">¿Con cuantos contactos te comunicas cada mes?</h2>
                <h2 v-show="renderizadoVista === '2'" style="display:none" >OK, ¿Aproximadamente cuantas horas al día consumes internet
                    móvil desde tu smartphone? </h2>
            </div>
            <div class="content content-contactos" v-show="renderizadoVista === '1'">
                <div class="left">
                    <img src="/images/armatuplan/banner-2.png" alt="">
                </div>
                <div class="right">
                    <div class="cantidad-content">
                        <div class="descripcion">Selecciona la <span> cantidad </span> de contactos:</div>
                        <div class="numeros-barra">
                            <div class="numero numero1">0</div>
                            <div class="numero numero2">50</div>
                            <div class="numero numero3">70</div>
                            <div class="numero numero4">120</div>
                        </div>
                        <div class="barra" v-bind:class="[barra_total]">
                            <div class="circulo-after"></div>
                            <div class="boton boton1" @click="barraCantidad(0)"></div>
                            <div class="boton boton2" @click="barraCantidad(50)"></div>
                            <div class="boton boton3" @click="barraCantidad(70)"></div>
                            <div class="boton boton4" @click="barraCantidad(120)"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content content-horas" v-show="renderizadoVista === '2'" style="display:none">
                <div class="box">
                    <div class="box-celda">
                        <div class="caracteristica">
                            <div class="titulo">Redes sociales</div>
                            <div class="descripcion">Facebook, Twitter, Instagram, Whatsapp o similares</div>
                        </div>
                        <div class="valor-content">
                            <div class="valor-total">
                                <div class="boton-action restar" @click="dismuniurGigas('redesSociales')">-</div>
                                <div class="boton-action sumar" @click="aumentarGigas('redesSociales')">+</div>
                                <div class="valor"><span v-html="internetConsumido[0].numero"> </span> horas al día
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="box-celda">
                        <div class="caracteristica">
                            <div class="titulo">Streaming Video</div>
                            <div class="descripcion">Netflix, YouTube o similares</div>
                        </div>
                        <div class="valor-content">
                            <div class="valor-total">
                                <div class="boton-action restar" @click="dismuniurGigas('streamingVideo')">-</div>
                                <div class="boton-action sumar" @click="aumentarGigas('streamingVideo')">+</div>
                                <div class="valor"><span v-html="internetConsumido[1].numero"></span> horas al día</div>
                            </div>

                        </div>
                    </div>
                    <div class="box-celda">
                        <div class="caracteristica">
                            <div class="titulo">Streaming de música</div>
                            <div class="descripcion">Apple Music, Spotify o similares</div>
                        </div>
                        <div class="valor-content">
                            <div class="valor-total">
                                <div class="boton-action restar" @click="dismuniurGigas('streamingMusica')">-</div>
                                <div class="boton-action sumar" @click="aumentarGigas('streamingMusica')">+</div>
                                <div class="valor"><span v-html="internetConsumido[2].numero"></span> horas al día</div>
                            </div>

                        </div>
                    </div>
                    <div class="box-celda">
                        <div class="caracteristica">
                            <div class="titulo">Juego en línea</div>
                            <div class="descripcion">Call of duty o similares</div>
                        </div>
                        <div class="valor-content">
                            <div class="valor-total">
                                <div class="boton-action restar" @click="dismuniurGigas('juegos')">-</div>
                                <div class="boton-action sumar" @click="aumentarGigas('juegos')">+</div>
                                <div class="valor"><span v-html="internetConsumido[3].numero"></span> horas al día</div>
                            </div>

                        </div>
                    </div>
                    <div class="box-celda box-gigas-total">
                        <div class="titulo">Tu consumo aproximado al mes es de:</div>
                        <div class="giga-content">
                            <div class="giga-total"><span v-html="internetConsumidoTotal"></span> GB</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container botones-continuar" v-if="renderizadoVistaBarra === '1'">

        <button class="atras" @click="atras1()">ATRAS</button>
        <button class="continuar" @click.prevent="continuar1()" v-show="renderizadoVista === '1'">CONTINUAR</button>
        <button class="continuar" v-show="renderizadoVista === '2'" style="display:none"
            @click.prevent="toggleactiveaPopUpConsumoTotal()">LISTO</button>
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

$planInfocomercial = [
'info_comercial' => $info_comercial
];

@endphp

<input id="product-init" type="hidden" value='@json($product_init)'>
<input id="product-initplansOption" type="hidden" value='@json($plansOptions)'>
<input id="product-planInfocomercial" type="hidden" value='@json($planInfocomercial)'>


@endsection