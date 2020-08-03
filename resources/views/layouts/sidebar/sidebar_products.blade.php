        <div class="col-xs-12 col-sm-3 sidebarbox">
          <div class="sidebar-box">
            <form id="search-product" class="form-inline" v-on:submit.prevent="searchProduct(1)">
              <input type="text" placeholder="Busca tu equipo" class="form-control" v-model="searchedString">
              <button type="submit" class="btn btn-default btn-search"> <span class="fa fa-search"></span></button>
            </form>
          </div>
          <div class="responsive-sidebar">
            <div class="responsive-sidebar-title">
              <span>Filtrar equipos por</span>
              <div class="pull-right btl-caret">
                <span aria-hidden="true" class="glyphicon glyphicon-chevron-down"></span>
              </div>
            </div>
            <div class="responsive-sidebar-item" v-cloak></div>
          </div>
          <div id="precio-equipo" class="content-catalogo">
            <div class="title-select" v-on:click="toggleAccordionMobile(filters[type].price)">
              <div class="btn-acordion"></div><span>Precio de producto:</span>
              <div class="pull-right btl-caret" v-if="isMobile" v-cloak>
                <span class="glyphicon " :class="filters[type].price.isOpen ? 'glyphicon-chevron-up' : 'glyphicon-chevron-down'" aria-hidden="true"></span>
              </div>
            </div>
            <transition v-on:enter="transitionEnter" v-on:leave="transitionLeave">
              <div class="select-item" v-show="filters[type].price.isOpen">
                <div class="item">
                  <input id="price-opt-0" type="radio" name="price" v-bind:value="{x : 0, y : 0}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-0">Todos</label>
                </div>
                <div class="item">
                  <input id="price-opt-1" type="radio" name="price" v-bind:value="{x : 1, y : 50}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-1">S/. 1 - 50</label>
                </div>
                <div class="item">
                  <input id="price-opt-2" type="radio" name="price" v-bind:value="{x : 51, y : 150}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-2">S/. 51 - 150</label>
                </div>
                <div class="item">
                  <input id="price-opt-3" type="radio" name="price" v-bind:value="{x : 151, y : 300}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-3">S/. 151 - 300</label>
                </div>
                <div class="item">
                  <input id="price-opt-4" type="radio" name="price" v-bind:value="{x : 301, y : 1000}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-4">S/.301 - 1000</label>
                </div>
                <div class="item">
                  <input id="price-opt-5" type="radio" name="price" v-bind:value="{x : 1001, y : 0}" v-model="filters[type].price.value" v-on:change="searchProduct(1)">
                  <label for="price-opt-5">S/. 1001 +</label>
                </div>
              </div>
            </transition>
          </div>
          <div id="marca" class="content-catalogo">
            <div class="title-select" v-on:click="toggleAccordionMobile(filters[type].manufacturer)">
              <div class="btn-acordion"></div><span>Filtrar por marca:</span>
              <div class="pull-right btl-caret" v-if="isMobile" v-cloak>
                <span class="glyphicon " :class="filters[type].manufacturer.isOpen ? 'glyphicon-chevron-up' : 'glyphicon-chevron-down'" aria-hidden="true"></span>
              </div>
            </div>
            <transition v-on:enter="transitionEnter" v-on:leave="transitionLeave">
              <div class="select-item" v-show="filters[type].manufacturer.isOpen">
                <div class="item checkbox-wrapper">
                  <input id="manufacturer-opt-0" type="checkbox" name="manufacturer" v-model="filters[type].manufacturer.all" v-on:change="selectAll()">
                  <label for="manufacturer-opt-0" class="checkmark-wrapper">Todos</label>
                </div>
                @foreach ($filters['brand_list'] as $brand)
                <div class="item checkbox-wrapper">
                  <input id="manufacturer-opt-{{$brand->brand_id}}" type="checkbox" name="manufacturer" v-model="filters[type].manufacturer.value" value="{{$brand->brand_id}}" v-on:change="searchProduct(1)">
                  <label for="manufacturer-opt-{{$brand->brand_id}}" class="checkmark-wrapper">{{$brand->brand_name}}</label>
                </div>
                @endforeach
              </div>
            </transition>
          </div>
        </div>
