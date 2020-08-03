@extends('layouts.master')
@section('content')
<?php $precio1=0;$precio2=0;$prepago=0;$producto="equipo" ; ?>
<script>
  fbq('track', 'CompleteRegistration');
        console.log('fbq complete registration');
</script>
<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <section class="pedido-realizado">
        <div class="pedido-realizado__header">
          <h1 class="pedido-realizado__title">Pedido Realizado</h1>
          {{-- <span>{{$order_detail['first_name']]}}</span> --}}
        </div>
        <div class="pedido-realizado__content">
          <div class="box-description">
            <img src="{{asset('css/icon-realizado.svg')}}" alt="realizado" width="42" class="box-description__icon">
            <h2 class="box-description__title">¡Felicidades, tu solicitud de pedido ha sido enviada!</h2>
            <p class="box-description__subtitle">Gracias por confiar en nosotros, en breve te enviaremos un correo
              electrónico con la informacion de tu pedido</p>
          </div>
          <div class="box-numerodepedido">
            <p class="box-numerodepedido__id">#{{$order_id}}</p>
            <p class="box-numerodepedido__description">Es tu número de pedido</p>
          </div>
          <div class="box-planes">
            <div class="box-planes__images">
              <img src="{{$order['valueImageEquipo']}}" alt="{{$order['valueBrandEquipo']}}">
            </div>
            <div class="box-planes__content">
              <h3 class="box-planes__title"><strong>{{$order['valueBrandEquipo']}}</strong>
                {{$order['valueModelEquipo']}}</h3>
              <div class="box-planes__detail">
                <div class="box-planes-modalidad-equipos">
                  <h4 class="box-planes-modalidad-equipos__title">Modalidad:
                    @if (!empty($order['affiliation_type']))
                    @if (!empty($order['service_type']))
                    <strong>{{$order['affiliation_type']}} , {{$order['service_type']}} </strong>
                    @endif
                    @endif
                  </h4>
                  @if (!empty($order['valueContract']))
                  <h4 class="box-planes-modalidad-equipos__subtitle">Tipo de contratro:
                    <strong>{{$order['valueContract']}}</strong>
                  </h4>
                  @endif
                </div>
                <div class="box-planes-costos">
                  <div class="box-planes-costos__item box-planes-costos__item--simcard">
                    <span class="title">PAGO POR EL EQUIPO</span>
                    <p class="price">S/. {{$order['valuePriceEquipo']}}</p>

                  </div>
                  <div class="box-planes-costos__item box-planes-costos__item--plan">
                    <span class="title">PAGO PLAN MENSUAL</span>
                    @if ($order['idtype_id'] != 4)
                    <p class="price"><strong>S/. {{$order['total']}}</strong></p>
                    @else
                    <p class="price"><strong>S/. 0.00</strong></p>
                    @endif

                  </div>
                  <div class="box-planes-costos__item box-planes-costos__item--envio">
                    <span class="title">COSTO DE ENVÍO</span>
                    <p class="price">GRATIS</p>
                  </div>
                  <div class="box-planes-costos__item box-planes-costos__item--total">
                    <span class="title">TOTAL + IGV</span>
                    <p class="price">S/. {{$order['total_igv']}}</p>
                    <p class="consideraciones"><span>* </span>Pago total, incluido renta adelantada
                    </p>

                  </div>
                </div>
              </div>
              <div class="box-planes__observation">
                <p class="box-description"><span>*</span> Acepto todas las condiciones comerciales de Bitel, la renta
                  adelantada y su prorrateo
                  correspondiente</p>
                <a href="" class="box-consideration">ver consideraciones comerciales</a>
              </div>
            </div>
          </div>
        </div>
        <div class="pedido-realizado__button">
          <div class="box-button-options">
            <a href="{{route('home')}}" class="box-button-options__item box-button-options__item--home">IR AL
              INICIO</a>
            <a href="{{route('home')}}/trackeo/{{$order_id}}"
              class="box-button-options__item box-button-options__item--state">VER ESTADO DEL PEDIDO</a>
          </div>
        </div>
    </div>
    </section>

  </div>
</div>
@endsection