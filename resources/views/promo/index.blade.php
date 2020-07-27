@extends('layouts.master')
@section('content')


<div class="section-list-new-products section-list-promociones">


  <div class="box-popup-filter box-popup-filter-prepago" style="display: none">

    <div class="box-popup-info">
      <div class="box-btn-close">
        <button>X</button>
      </div>
      <div class="box-content-popup">
        <div class="box-title">
          <span>Filtro Avanzado</span>
        </div>
        <div class="box-body">

          <div class="box-section-filter">
            <div class="box-list">

              <div class="box-items item-precio">

                <div id="precio-equipo" class="content-catalogo">
                  <div class="box-title-filter">
                    <span>Precio de equipo:</span>
                  </div>

                  <div class="select-item" v-show="!filters[type].price.isOpen">
                    <div class="item active-option-precio">
                      <input id="price-opt-0" type="radio" name="price" v-bind:value="{x : 0, y : 0}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-0">Todos</label>
                    </div>
                    <div class="item">
                      <input id="price-opt-1" type="radio" name="price" v-bind:value="{x : 1, y : 50}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-1">S/. 1 - 50</label>
                    </div>
                    <div class="item">
                      <input id="price-opt-2" type="radio" name="price" v-bind:value="{x : 51, y : 150}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-2">S/. 51 - 150</label>
                    </div>
                    <div class="item">
                      <input id="price-opt-3" type="radio" name="price" v-bind:value="{x : 151, y : 300}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-3">S/. 151 - 300</label>
                    </div>
                    <div class="item">
                      <input id="price-opt-4" type="radio" name="price" v-bind:value="{x : 301, y : 1000}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-4">S/.301 - 1000</label>
                    </div>
                    <div class="item">
                      <input id="price-opt-5" type="radio" name="price" v-bind:value="{x : 1001, y : 0}" v-model="filters[type].price.value"
                        v-on:change="searchProduct(1)">
                      <label for="price-opt-5">S/. 1001 +</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="box-items item-marca">
                <div id="marca" class="content-catalogo">
                  <div class="box-title-filter">
                    <span>Filtrar por marca:</span>
                  </div>
                  <div class="select-item" v-show="!filters[type].manufacturer.isOpen">
                    <div class="item checkbox-wrapper">
                      <input id="manufacturer-opt-0" type="checkbox" name="manufacturer" v-model="filters[type].manufacturer.all"
                        v-on:change="selectAll()">
                      <label for="manufacturer-opt-0" class="checkmark-wrapper">Todos</label>
                    </div>
                    @foreach ($filters['brand_list'] as $brand)
                    <div class="item checkbox-wrapper">
                      <input id="manufacturer-opt-{{$brand->brand_id}}" type="checkbox" name="manufacturer" v-model="filters[type].manufacturer.value"
                        value="{{$brand->brand_id}}" v-on:change="searchProduct(1)">
                      <label for="manufacturer-opt-{{$brand->brand_id}}" class="checkmark-wrapper">{{$brand->brand_name}}</label>
                    </div>
                    @endforeach
                  </div>
                </div>
              </div>






            </div>
          </div>
        </div>


      </div>

    </div>

  </div>



  <div class="box-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          @include('layouts.sidebar.sidebar_promos')

        </div>
      </div>

    </div>
  </div>

  <div class="box-body">
    <div class="box-title-body">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="title-page">
              <h2>¡Los mejores equipos y precios exclusivos que tenemos para ti!</h2>
              <h3>Elige uno y disfruta de los beneficios que te ofrece Bitel</h3>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="box-filter-responsive">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            @include('layouts.sidebar.sidebar_type_postpago_catalogo_movil')
          </div>
        </div>
      </div>

    </div>
  </div>

  <div class="container">

    <div class="row">

      <div class="col-xs-12 col-sm-12">
        <div id="list-equipos" v-cloak>
          <div class="row" v-if="isSearching">
            <loader></loader>
          </div>
          <div class="row" v-if="noResults">
            <p class="text-center">No se encontraron resultados</p>
          </div>
          <div class="row" v-if="searchResult.length > 0">
            <promos v-for="(product, index) in searchResult" :product="product" :base-url="baseUrl" :compare="compare"
              v-on:additem="addItem" v-on:removeitem="removeItem" :key="index"></promos>
          </div>
          @if (count($products) == 0)
          <div class="row">
            <p class="text-center">No se encontraron resultados</p>
          </div>
          @endif
          <div class="row" v-if="!search">
            @foreach ($products as $product)
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div data-equipo="1" class="producto" v-bind:class="{'active-comparar' : _.find(compare, ['product_id', {{$product->product_id}}])}">
                <div class="ribbon-wrapper">
                  <div class="ribbon ribbon-promo">Promoción</div>
                </div>
                <div class="image-product text-center">
                  <a href="{{$product->route}}">
                    <img src="{{asset(Storage::url($product->picture_url))}}" alt="{{$product->product_model}}">
                  </a>
                </div>
                <div class="content-product text-center">
                  <div class="title-product">
                    <h4>
                      <span>{{$product->brand_name}}</span><br>
                      {{$product->product_model}}
                    </h4>
                  </div>
                  @if(isset($product->product_variation_id))

                  @if($product->variation_type_id == 1)

                  <div class="box-information-products">
                    <div class="price-product">
                      <span>S/.{{$product->promo_price}}</span>
                      <span class="normal-price">S/.{{$product->product_price}}</span>
                    </div>
                    <div class="plan-product">
                      <p>en plan <span>{{$product->plan_name}}</span></p>
                    </div>
                    <div class="box-contrato">
                    </div>
                  </div>

                  @elseif($product->variation_type_id == 2)

                  <div class="box-information-products">
                    <div class="price-product">
                      <span>S/.{{$product->promo_price}}</span>
                      <span class="normal-price">S/.{{$product->product_price}}</span>
                    </div>
                    <div class="plan-product">
                      <p>en plan <span>{{$product->plan_name}}</span></p>
                    </div>
                    <div class="box-contrato">
                      @include('products.contract_on_card', [
                        'smartphone' => $product
                      ])
                    </div>
                  </div>

                  @endif

                  @else

                  <div class="box-information-products">
                    <div class="price-product">
                      <span>S/.{{$product->promo_price}}</span>
                      <span class="normal-price">S/.{{$product->product_price}}</span>
                    </div>
                  </div>


                  @endif

                  <div class="btn-product form-inline" style="text-align: center;">
                    <div class="form-group btn-comprar">
                      <a href="{{$product->route}}" class="btn btn-default">ME INTERESA</a></div>
                  </div>
                </div>
              </div>
            </div>
            @endforeach
          </div>
          @php
          $paginationData = array_except(json_decode($products->toJson(), true), ['data']);
          @endphp
          <input id="pagination-init" type="hidden" value='@json($paginationData)'>
          <div class="row" v-if="!isSearching">
            <div class="col-xs-12">
              <nav aria-label="Page navigation" id="pagination-nav">
                <paginator-links v-bind:pagination="pagination" v-on:changepage="searchProduct" :offset="4"></paginator-links>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>
@endsection