<template>
  <div class="col-xs-12 col-sm-6 col-md-4">
    <!-- <div data-equipo="1" class="producto active-comparar"> -->
    <div data-equipo="1" class="producto" v-bind:class="{'active-comparar': isSelected}">
      <div class="ribbon-wrapper"><div class="ribbon ribbon-promo">Promoción</div></div>
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

          <template v-if="product.product_variation_id">
            <template v-if="product.variation_type_id == 1">
            <div class="price-product">
              <span>S/.{{product.promo_price}}</span>
              <span class="normal-price">S/.{{product.product_price}}</span>
            </div>
            <div class="plan-product">
              <p>En plan Prepago <span>{{product.plan_name}}</span></p>
            </div>
            <div class="box-contrato">
            </div>
            </template>
            <template v-else-if="product.variation_type_id == 2">
            <div class="price-product">
              <span>S/.{{product.promo_price}}</span>
              <span class="normal-price">S/.{{product.product_price}}</span>
            </div>
            <div class="plan-product">
              <p>En plan <span>{{product.plan_name}}</span></p>
            </div>
            <div class="box-contrato">
              <span v-if="product.contract_id !== tiendaSettings.catalog_contract_id">Con contrato de {{product.contract_name}}</span>
              <span v-if="product.contract_id === tiendaSettings.catalog_contract_id">{{product.contract_name}}</span>
            </div>
            </template>
          </template>
          <template v-else>
          <div class="price-product">
            <span>S/.{{product.promo_price}}</span>
            <span class="normal-price">S/.{{product.product_price}}</span>
          </div>
          </template>
        </div>
        <div class="btn-product form-inline" style="text-align: center;">
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
                tiendaSettings: tiendaSettings,
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
