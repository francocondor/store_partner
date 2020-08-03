@if(isset($product->color_id))
{{-- <div class="color-product" v-if="Object.keys(product).length == 0"> --}}
<div class="color-product">
  <fieldset>
    <legend>Color</legend>
    <div id="option-select" class="option-select">
      @foreach($stock_models as $stock_model)
        @if($stock_model->stock_model_id == $product->stock_model_id)
        <div class="radio-inline option-active is-active" @click.prevent="setColor('{{$stock_model->stock_model_id}}')">
          <div class="color-box" style="background-color: #{{$stock_model->color_hexcode}};"></div>
        </div>
        @else
        {{-- <a href="{{$stock_model->route}}" @click.prevent="setUrl('{{$stock_model->route}}', '{{$stock_model->api_route}}')"> --}}
          <div class="radio-inline option-active" @click.prevent="setColor('{{$stock_model->stock_model_id}}')">
            <div class="color-box" style="background-color: #{{$stock_model->color_hexcode}};"></div>
          </div>
        {{-- </a> --}}
        @endif
      @endforeach
    </div>
  </fieldset>
</div>
{{-- <postpaid-color v-if="Object.keys(product).length != 0" :stock_models="product.stock_models"></postpaid-color> --}}
@endif
