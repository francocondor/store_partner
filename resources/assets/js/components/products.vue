<template>
  <div class="col-xs-12 col-sm-6 col-md-4">
    <!-- <div data-equipo="1" class="producto active-comparar"> -->
    <div data-equipo="1" class="producto" v-bind:class="{'active-comparar': isSelected, 'not-stock': !product.stock_model_id}">
      <div v-if="!product.stock_model_id" class="ribbon-wrapper">
        <div class="ribbon ribbon-sold-out">Agotado</div>
      </div>
      <div v-else-if="product.promo_id" class="ribbon-wrapper">
        <div class="ribbon ribbon-promo">Promoción</div>
      </div>
      <div v-else-if="product.product_tag == 'Destacado'" class="ribbon-wrapper">
        <div class="ribbon ribbon-outstanding">Destacado</div>
      </div>
      <div v-else-if="product.product_tag == 'Nuevo'" class="ribbon-wrapper">
        <div class="ribbon ribbon-new">Nuevo</div>
      </div>
      <div class="image-product text-center">
        <a v-bind:href="product.route">
          <img v-bind:src="product.picture_url" :alt="product.product_model">
        </a>
      </div>
      <div class="content-product text-center">
        <div class="title-product">
          <h4>
            <span>{{product.brand_name}}</span><br>
            {{product.product_model}}
          </h4>
        </div>

        <div class="box-information-products">
          <div class="price-product">
            <span v-if="!product.promo_id">s/.{{product.product_price}}</span>
            <span v-if="product.promo_id">s/.{{product.promo_price}}</span>
            <span v-if="product.promo_id" class="normal-price">s/.{{product.product_price}}</span>
          </div>
        </div>

        

        <div class="btn-product form-inline" style="text-align:center">
          <div class="form-group btn-comprar">
            <a v-bind:href="product.route" class="btn btn-default">solicitalo</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        props: [
            'product',
            'baseUrl',
            'compare'
        ],
        data () {
            return {
                isSelected : false,
                compareItem : {
                  product_id: this.product.product_id,
                  picture_url: this.product.picture_url
                }
            }
        },
        methods : {
            emitCompare () {
                self = this
                self.isSelected ?
                this.$emit('additem', self.compareItem)
                :
                self.$emit('removeitem', self.compareItem.product_id)
            }
        },
        beforeMount() {
            self = this
            self.compare.forEach( function (e) {
                if (e.product_id == self.compareItem.product_id) {
                    self.isSelected = true
                }
            })
        },
        mounted() {
            console.log('Component mounted bitel.')
        }
    }
</script>
