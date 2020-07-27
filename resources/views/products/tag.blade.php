@if (!isset($product->stock_model_id))
<div class="tag tag-sold-out">
  <div class="tag-icon">
    <span class="fa-stack">
      <i class="fa fa-circle fa-stack-2x"></i>
      <i class="fa fa-exclamation fa-stack-1x"></i>
    </span>
  </div>
  <div class="tag-text">
    Agotado
  </div>
</div>
@else
@if(isset($product->promo_id) || $product->product_tag == 'Promoción')
<div  class="state promo"><span>PROMOCIÓN</span></div>
@elseif(($product->product_tag == 'Nuevo'))
<div class="state"><span>NUEVO</span></div>
@elseif(($product->product_tag == 'Destacado'))
<div class="state outstanding"><span>DESTACADO</span></div>
@elseif(($product->product_sentinel))
<div class="state"><span>SENTINEL</span></div>
@endif
@endif