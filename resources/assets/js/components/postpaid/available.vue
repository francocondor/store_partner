<template lang="html">
  <!-- <div id="producto-disponibles">
    <div class="title-detalle">
      <h5>PRODUCTOS DISPONIBLES</h5>
    </div> -->
    <div id="api-available" class="list-producto">
      <div class="producto" v-for="product in products">
        <div class="image-product text-center">
          <a :href="product.route">
            <img :src="product.picture_url" alt="equipos">
          </a>
        </div>
        <div class="content-product text-center">
          <div class="title-product">
            <h4>
              <span>{{$product.brand_name}}</span><br>
              {{$product.product_model}}
            </h4>
          </div>
          <div class="box-information-products">
          
            <div class="price-product">
              <span v-if="product.promo_id" >S/.{{product.promo_price}}</span>
              <span v-if="product.promo_id" class="normal-price">S/.{{product.product_price}}</span>
              <span v-if="!product.promo_id">S/.{{product.product_price}}</span>
            </div>
            <div class="plan-product">
              <p>En plan <span>{{product.plan_name}}</span></p>
            </div>
          </div>
          <div class="btn-comprar"><a :href="product.route" class="btn btn-default">Solicitalo</a></div>
        </div>
      </div>
    </div>
  <!-- </div> -->
</template>

<script>
export default {
  props: ["products"],
  // data: function () {
  //     return {
  //         product_id : this.product,
  //     }
  // },
  methods: {
    slider() {
      $("#api-available").slick({
        arrows: true,
        dots: true,
        infinite: false,
        autoplay: false,
        draggable: false,
        speed: 500,
        slidesToShow: 3,
        slidesToScroll: 1,
        // centerMode: true,
        // variableWidth: true,
        responsive: [
          {
            breakpoint: 768,
            settings: {
              arrows: true,
              dots: false,
              centerMode: false,
              slidesToShow: 3
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: true,
              dots: false,
              centerMode: false,
              slidesToShow: 1,
              draggable: false
            }
          }
        ]
      });
    }
  },
  mounted() {
    if (this.products.length > 0) {
      this.slider();
    }
    console.log("Component mounted bitel.");
  },
  watch: {
    products: function() {
      if (this.products.length > 0) {
        $("#api-available").slick("unslick");
        this.slider();
      }
    }
  }
};
</script>

<style lang="css">
</style>
