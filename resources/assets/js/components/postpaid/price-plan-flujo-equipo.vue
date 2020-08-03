<template lang="html">
  <!-- Junior Meza FC  V1.0 -->
  <!-- <div class="col-xs-12 col-sm-12 col-md-11 col-lg-5 col-12-mob"> -->
  <!-- V1.0 END -->
  <div id="box-detalle-product">
    <div class="detalle-product detalle-plan-chip-postpago">
      <div class="price-product">
        <p>Precio del equipo</p>
        <div class="preci-cant">

          <div
            :class="{ 'normal-price': product.promo_id != null }"
            class="preci-cant"
          >
            <span class="moneda">S/</span>
            <span class="price price-change">{{
              product.product_price_integer
            }}</span>
            <span class="moneda">.</span>
            <span class="moneda moneda-change">{{
              product.product_price_decimal
            }}</span>
          </div>
        </div>
      </div>
      <div class="plan-product">
        <p style="color: #9f5ed9">
          Precio del Plan {{ product.plan_name_name }}
        </p>
        <!-- <p><span class="preci-cant">{{product.plan_name}}</span></p> -->
        <div class="preci-cant">
          <span class="moneda">S/</span>
          <span class="price price-change">{{
            product.plan_price_integer
          }}</span>
          <span class="moneda">.</span>
          <span class="moneda moneda-change">{{
            product.plan_price_decimal
          }}</span>
          <span class="tagciclo">x Ciclo</span>
        </div>
      </div>
    </div>
  </div>
  <!-- Junior Meza FC  V1.0 -->
  <!-- </div> -->
  <!-- V1.0 END -->
</template>

<script>
export default {
  props: ["product"],
  // data: function () {
  //     return {
  //         product_id : this.product,
  //     }
  // },
  mounted() {
    console.log("Component mounted bitel.");
    // console.log(["product"]);
  }
};
</script>

<style lang="css"></style>
