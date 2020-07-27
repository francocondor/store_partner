<div class="col-xs-12">

	<div class="box-items-responsive box-items-responsive-column-1">
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
<div class="col-xs-12">
	<div class="box-items-responsive box-items-responsive-pre-prom box-items-responsive-column-2">
		

		<div class="box-items item-plan">
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

		<div class="box-items buttton-filter">
			<button class="btn-filter-postpago"><img src="/images/footer/icon-filter.svg" alt=""></button>
		</div>
	</div>

</div>