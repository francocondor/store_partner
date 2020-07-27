@extends('layouts.master')
@section('content')
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-10 col-sm-offset-1">
          <div id="page-rastreo">
            <div class="title-page-rastreo">
              <h2>TRACKEO</h2>
              <h3>Revisa el estado de tu pedido # {{$order->order_id}}</h3>
            </div>
            <div id="content-rastreo">
              @foreach ($products as $product)
              <section id="detalle-rastreo">
                <div class="title-section">
                  @php
                    // \Carbon\Carbon::setLocale('es');
                    $date = new \Carbon\Carbon($order->created_at);
                  @endphp
                  <h1>Producto comprado el:</h1><span>{{$date->format('d - m - Y')}}</span>
                </div>
                <div class="content-section">
                  <div class="row">
                    <div class="col-xs-6 col-sm-12 col-md-4 col-lg-4">
                      <div class="equipo-seleccionado">
                        <div class="image"><img src="{{asset(Storage::url($product->product_image_url))}}" alt="equipos"></div>
                        <div class="contenido">
                          <h2 class="text-uppercase title-contenido">
                            <b>{{$product->brand_name}}</b> {{$product->product_model}} {{isset($product->color_name) ? $product->color_name : ''}}
                          </h2>
                          <p> <span>Cantidad:</span>{{$product->quantity}}</p>
                          @if(isset($product->variation_type_id) && $product->variation_type_id == 2)
                          <p>
                            <span>Plan:</span>
                            {{$product->plan_name}}
                          </p>
                          @endif
                          @if(isset($product->promo_id))
                          <p>
                            <span>Precio del equipo:</span>
                            <p>S/. {{$product->promo_price}} <span class="normal-price">S/. {{$product->product_price}}</span>
                          </p>
                          @else
                          <p>
                            <span>Precio del equipo:</span>
                            <p>S/. {{$product->product_price}}</P>
                          </p>
                          @endif
                          <p class="status"><span>Status:</span>
                            @foreach($status_list as $status)
                              @if($status->order_status_id == $status_id)
                              {{$status->order_status_name}}
                              @endif
                            @endforeach
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-12 col-md-8 col-lg-8">
                      <div class="proceso">
                        <div id="nav-carrito" class="nav-carrito">
                          <ul class="list-unstyled">
                            @foreach($status_list as $status)
                            <li class="col-xs-4 col-sm-4 {{$weight == $status->weight ? 'active' : ''}} {{$weight == 8 ? 'text-muted' : ''}} {{$weight < $status->weight ? '' : 'is-completed'}}">
                              <span>{{$status->order_status_name}}</span>
                            </li>
                            @endforeach
                          </ul>
                        </div>
                        <div class="resp-proceso-web text-center">
                          @switch($status_id)
                            @case(1)
                              <p>¡Tu pedido está siendo evaluado!</p>
                              @break
                            @case(2)
                              <p>¡Tu pedido ya fue aceptado!</p>
                              @break
                            @case(3)
                              <p>¡Tu pedido esta siendo enviado!</p>
                              @break
                            @case(4)
                              <p>¡Tu pedido ha sido cancelado!</p>
                              @break 
                            @case(5)
                              <p>¡Tu pedido ha sido completado!</p>
                              @break
                            @case(6)
                              <p>¡Tu pedido esta siendo programado!</p>
                              @break
                            @case(7)
                              <p>¡No hemos podido contactarnos con usted!</p>
                              @break
                             @endswitch
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-12">
                      <div class="resp-proceso-movil text-center">
                        @switch($status_id)
                          @case(1)
                            <p>¡Tu pedido está siendo evaluado!</p>
                            @break
                          @case(2)
                            <p>¡Tu pedido ya fue aceptado!</p>
                            @break
                          @case(6)
                            <p>¡Tu pedido esta siendo programado!</p>
                            @break
                          @case(3)
                            <p>¡Tu pedido esta siendo enviado!</p>
                            @break
                          @case(7)
                            <p>¡No hemos podido contactarnos con usted!</p>
                            @break
                          @case(5)
                            <p>¡Tu pedido ha sido completado!</p>
                            @break  
                          @case(4)
                            <p>¡Tu pedido ha sido cancelado!</p>
                            @break   
                          @endswitch
                      </div>
                    </div>
                  </div>
                </div>
              </section>
            @endforeach
            </div>
            <div class="ver-mas-ratreo">
              <p>¿Quieres comprar más?</p>
              <div class="btn btn-default btn-rastreo"><a href="{{route('postpaid')}}">VER CATÁLOGO</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection
