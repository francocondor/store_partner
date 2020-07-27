@extends('layouts.master')
@section('content')

<div class="section-list-new-products section-list-prepago">
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

            <div class="box-items item-plan">

              <div id="precio-plan" class="content-catalogo">
                <div class="box-title-filter">
                  <span>Planes:</span>
                </div>
                <div class="select-item" v-show="!filters[type].plan.isOpen">
                  <div class="item active-option-plan">
                    <input id="plan-opt-0" type="radio" name="plan" value="0" v-model="filters[type].plan.value"
                      v-on:change="searchProduct(1)">
                    <label for="plan-opt-0">Todos</label>
                  </div>
                  @foreach ($filters['plan_list'] as $plan)
                  <div class="item">
                    <input id="plan-opt-{{$plan->plan_id}}" type="radio" name="plan" value="{{$plan->plan_id}}" v-model="filters[type].plan.value"
                      v-on:change="searchProduct(1)">
                    <label for="plan-opt-{{$plan->plan_id}}">{{$plan->plan_name}}</label>
                  </div>
                  @endforeach
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
          @include('layouts.sidebar.sidebar_prepago')
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
            @include('layouts.sidebar.sidebar_postpago_catalogo_movil')
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
              <prepaid v-for="(product, index) in searchResult" :product="product" :base-url="baseUrl" :compare="compare"
                v-on:additem="addItem" v-on:removeitem="removeItem" :key="index"></prepaid>
            </div>
            @if (count($products) == 0)
            <div class="row">
              <p class="text-center">No se encontraron resultados</p>
            </div>
            @endif
            <div class="row" v-if="!search">
              @foreach ($products as $smartphone)
              <div class="col-xs-12 col-sm-6 col-md-4">
                <div data-equipo="1" class="producto {{!isset($smartphone->stock_model_id)?'not-stock':''}}"
                  v-bind:class="{'active-comparar' : _.find(compare, ['product_variation_id', {{$smartphone->product_variation_id}}])}">
                  @include('products.ribbon',['product' => $smartphone])
                  <div class="image-product text-center">
                    <a href="{{route('prepaid_detail',  [
                      'brand'=>$smartphone->brand_slug,
                      'product'=>$smartphone->product_slug,
                      'plan'=>$smartphone->plan_slug
                    ])}}">
                      <img src="{{asset(Storage::url($smartphone->picture_url))}}" alt="{{$smartphone->product_model}}">
                    </a>
                  </div>
                  <div class="content-product text-center">
                    <div class="title-product">
                      <h4>
                        <span>{{$smartphone->brand_name}}</span><br>
                        {{$smartphone->product_model}}
                      </h4>
                    </div>
                    <div class="box-information-products">
                      <div class="price-product">
                        @if(isset($smartphone->promo_id))
                        <span>S/.{{$smartphone->promo_price}}</span>
                        <span class="normal-price">S/.{{$smartphone->product_price}}</span>
                        @else
                        <span>S/.{{$smartphone->product_price}}</span>
                        @endif
                      </div>
                      <div class="plan-product">
                        <p>en plan Prepago <span>{{$smartphone->plan_name}}</span></p>
                      </div>
                    </div>
                    {{--<div class="plan-product">
                      <p><a href="{{route('postpaid_detail', [
                        'brand'=>$smartphone->brand_slug,
                        'product'=>$smartphone->product_slug,
                        'affiliation'=>$affiliation_slug,
                        'plan'=>$plan_post_slug,
                        'contract'=>$contract_slug
                      ])}}">Ver
                          en plan postpago</a></p>
                    </div>--}}
                    <div class="btn-product form-inline">
                      <div class="form-group btn-comprar">
                        <a href="{{route('prepaid_detail',  [
                          'brand'=>$smartphone->brand_slug,
                          'product'=>$smartphone->product_slug,
                          'plan'=>$smartphone->plan_slug
                        ])}}"
                          class="btn btn-default">ME INTERESA</a></div>
                      <div class="checkbox btn-comparar">
                        <label>
                          <input type="checkbox" class="checkbox-compare" v-model="compare" v-bind:value="{product_variation_id: {{$smartphone->product_variation_id}}, picture_url: '{{asset(Storage::url($smartphone->picture_url))}}'}"
                            v-bind:disabled="compare.length==4 && !_.find(compare, ['product_variation_id', {{$smartphone->product_variation_id}}])">comparar
                          <span class="checkmark"></span>
                        </label>
                      </div>
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
            <compare-prepaid v-if="compare.length > 0" v-bind:base-url="baseUrl" v-bind:products="compare"
              v-on:removeitem="removeItem"></compare-prepaid>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>
@endsection