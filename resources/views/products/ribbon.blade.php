<div class="ribbon-wrapper">
	@if(!isset($product->stock_model_id))
	<div class="ribbon ribbon-sold-out">Agotado</div>
	@elseif(isset($product->promo_id) || $product->product_tag == 'Promoción')
	<div class="ribbon ribbon-promo">Promoción</div>
	@elseif($product->product_tag == 'Destacado')
	<div class="ribbon ribbon-outstanding">Destacado</div>
	@elseif($product->product_tag == 'Nuevo')
	<div class="ribbon ribbon-new">Nuevo</div>
	@elseif($product->product_sentinel)
	<div class="ribbon ribbon-new">Sentinel</div>
	@endif
</div>