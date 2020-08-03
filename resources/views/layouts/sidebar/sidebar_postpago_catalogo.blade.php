<div class="col-xs-12">
	<div class="box-section-filter">
		<div class="box-list">
			<div class="box-items item-marca">
				<div id="marca" class="content-catalogo">
					<div class="title-select" v-on:click="toggleAccordion(filters[type].manufacturer)">
						<div class="btn-acordion"></div><span>Marca</span>
						<div class="pull-right btl-caret" v-cloak>
							<span class="glyphicon glyphicon-menu-down" aria-hidden="true" v-show="!filters[type].manufacturer.isOpen"></span>
							<span class="glyphicon glyphicon-menu-up" aria-hidden="true" v-show="filters[type].manufacturer.isOpen"></span>
						</div>
					</div>
					<transition v-on:enter="transitionEnter" v-on:leave="transitionLeave" v-cloak>
						<div class="select-item" v-show="filters[type].manufacturer.isOpen">
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
					</transition>
				</div>
			</div>

			<div class="box-items item-plan">
				<div id="precio-plan" class="content-catalogo">
					<div class="title-select" v-on:click="toggleAccordion(filters[type].plan)">
						<div class="btn-acordion"></div><span>Plan</span>
						<div class="pull-right btl-caret" v-cloak>
							<span class="glyphicon glyphicon-menu-down" aria-hidden="true" v-show="!filters[type].plan.isOpen"></span>
							<span class="glyphicon glyphicon-menu-up" aria-hidden="true" v-show="filters[type].plan.isOpen"></span>
						</div>
					</div>
					<transition v-on:enter="transitionEnter" v-on:leave="transitionLeave" v-cloak>
						<div class="select-item" v-show="filters[type].plan.isOpen">
							<div class="item">
								<input id="plan-opt-0" type="radio" name="plan" value="0" v-model="filters[type].plan.value" v-on:change="searchProduct(1)">
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
					</transition>
				</div>
			</div>

			<div class="box-items item-precio">

				<div id="precio-equipo" class="content-catalogo">
					<div class="title-select" v-on:click="toggleAccordion(filters[type].price)">
						<div class="btn-acordion"></div><span>Precio de equipo:</span>
						<div class="pull-right btl-caret" v-cloak>
							<span class="glyphicon glyphicon-menu-down" aria-hidden="true" v-show="!filters[type].price.isOpen"></span>
							<span class="glyphicon glyphicon-menu-up" aria-hidden="true" v-show="filters[type].price.isOpen"></span>
						</div>
					</div>
					<transition v-on:enter="transitionEnter" v-on:leave="transitionLeave" v-cloak>
						
						<div class="select-item" v-show="filters[type].price.isOpen">
							<div class="item">
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
					</transition>
				</div>
			</div>

			<div class="box-items item-lo-quires-en">
				<div id="lo-quieres" class="content-catalogo">
					<div class="title-select" v-on:click="toggleAccordion(filters[type].affiliation)">
						<div class="btn-acordion"></div><span>Cambiate a Bitel</span>
						<div class="pull-right btl-caret" v-cloak>
							<!-- <span class="glyphicon " :class="filters[type].affiliation.isOpen ? 'glyphicon-menu-up' : 'glyphicon-menu-down'" aria-hidden="true"></span> -->

							<span class="glyphicon glyphicon-menu-up" aria-hidden="true" v-show="filters[type].affiliation.isOpen"></span>
							<span class="glyphicon glyphicon-menu-down" aria-hidden="true" v-show="!filters[type].affiliation.isOpen"></span>
						</div>
					</div>
					<transition v-on:enter="transitionEnter" v-on:leave="transitionLeave">
						<div class="select-item" style="display:none" v-show="filters[type].affiliation.isOpen">
							@foreach ($filters['affiliation_list'] as $affiliation)
							<div class="item">
								<input id="type-opt-{{$affiliation->affiliation_id}}" type="radio" name="affiliation" value="{{$affiliation->affiliation_id}}"
								 v-model="filters[type].affiliation.value" v-on:change="searchProduct(1)">
								<label for="type-opt-{{$affiliation->affiliation_id}}">
									@if($affiliation->affiliation_name != 'Portabilidad')
									{{$affiliation->affiliation_name}}
									@else
									Cambiate a Bitel (Portabilidad)
									@endif
								</label>
							</div>
							@endforeach
						</div>
					</transition>
				</div>
			</div>
			<!-- </div> -->


			<div class="box-items item-search">
				<div class="sidebar-box">
					<form id="search-product" class="form-inline" v-on:submit.prevent="searchProduct(1)">
						<input type="text" placeholder="Busca tu equipo" class="form-control" v-model="searchedString">
						<button type="submit" class="btn btn-default btn-search"> <span class="fa fa-search"></span></button>
					</form>
				</div>
			</div>



		</div>
	</div>
</div>
<!-- </div> -->