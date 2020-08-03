<template>
  <div>
    <div class="section-planes__tab">
      <ul>
        <li
          v-bind:id="'tab_' +productItemT.plan_id"
          v-for="productItemT in productsItemsContent"
          class="armatuplan tabs-header"
          :key="productItemT.plan_id"
          v-bind:class="{ active: setActiveChip == productItemT.selected }"
        >
          <a href="#" @click.prevent="selectToTabModal(productItemT.plan_id)">
            {{productItemT.plan_price}}
            <!-- S/
            <span>29</span> .90-->
          </a>
        </li>
      </ul>
    </div>
    <div class="section-planes__type section-planes__contentpop-card">
      <div class="section-planes__type--portabilidad">
        <div
          v-bind:id="'content_' +productItemC.plan_id"
          v-for="productItemC in productsItemsContent"
          class="planes-tab-content no-active"
          :key="productItemC.plan_id"
          v-bind:class="{ active: setActiveChip == productItemC.selected }"
        >
          <div class="caracteristicas-tipo-2">
            <div
              v-for="infoTipo in productItemC.infoComercial"
              :key="infoTipo.plan_infocomercial_informacion_adicional"
              class="caracteristicas-tab esconder-activeDescripcion"
              v-bind:class="{ activeDescripcion: 2 == infoTipo.tipo }"
            >
              <div class="img">
                <img
                  :src="infoTipo.plan_infocomercial_img_url"
                  :alt="infoTipo.plan_infocomercial_descripcion"
                />
              </div>
              <div class="caracteristica">{{infoTipo.plan_infocomercial_descripcion}}</div>
              <div class="info">
                <div
                  class="info-inicial"
                >{{infoTipo.plan_infocomercial_informacion_adicional.split("+")[0]}}</div>
                <div
                  class="info-inicial info-resaltado"
                >{{infoTipo.plan_infocomercial_informacion_adicional.split("+")[1]}}</div>
              </div>
            </div>
          </div>
          <div class="app-content">
            <div class="apps">
              <div class="texto titulo" v-show="mostrarSubtitulo(productItemC.infoComercial, 1)">
                Tus apps favoritas
                <span>ilimitadas</span>
              </div>
              <div class="imagenes">
                <div
                  v-for="infoTipo in productItemC.infoComercial"
                  :key="infoTipo.plan_infocomercial_informacion_adicional"
                  class="imagen-content esconder-activeImg"
                  v-bind:class="{ activeImg: 1 == infoTipo.tipo }"
                >
                  <img
                    :src="infoTipo.plan_infocomercial_img_url"
                    :alt="infoTipo.plan_infocomercial_descripcion"
                  />
                </div>
              </div>
              <div class="texto footer" v-show="mostrarSubtitulo(productItemC.infoComercial, 1)">
                <span>Foto</span>
              </div>
            </div>
          </div>
          <div class="app-content">
            <div class="apps">
              <div
                class="texto titulo"
                v-show="mostrarSubtitulo(productItemC.infoComercial, 3)"
              >Video y Música</div>
              <div class="imagenes">
                <div
                  v-for="infoTipo in productItemC.infoComercial"
                  :key="infoTipo.plan_infocomercial_informacion_adicional"
                  class="imagen-content esconder-activeImg"
                  v-bind:class="{ activeImg: 3 == infoTipo.tipo }"
                >
                  <img
                    :src="infoTipo.plan_infocomercial_img_url"
                    :alt="infoTipo.plan_infocomercial_descripcion"
                  />
                </div>
              </div>
              <div class="texto footer" v-show="mostrarSubtitulo(productItemC.infoComercial, 3)">
                <span>Bono 1 GB</span>
              </div>
            </div>
            <div class="apps apps-juegos">
              <div
                class="texto titulo"
                v-show="mostrarSubtitulo(productItemC.infoComercial, 4)"
              >Juegos</div>
              <div class="imagenes">
                <div
                  v-for="infoTipo in productItemC.infoComercial"
                  :key="infoTipo.plan_infocomercial_informacion_adicional"
                  class="imagen-content esconder-activeImg"
                  v-bind:class="{ activeImg: 4 == infoTipo.tipo }"
                >
                  <img
                    :src="infoTipo.plan_infocomercial_img_url"
                    :alt="infoTipo.plan_infocomercial_descripcion"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="button-content">
            <button @click.prevent="continuar(productItemC.plan_slug)">CONTINUAR</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["product", "baseUrl"],
  data() {
    return {
      // productsItemsTabs: this.product,
      productsItemsContent: this.product,
      setActiveChip: true,
      webBaseUrl: this.baseUrl
    };
  },
  methods: {
    selectToTabModal(id) {
      console.log("red");
      console.log(id);
      $(".planes-tab-content").removeClass("active");
      $(".tabs-header").removeClass("active");
      $("#tab_" + id).addClass("active");
      $("#content_" + id).addClass("active");
    },

    mostrarSubtitulo(array, tipoVideo) {
      var isExiste = false;
      array.forEach(function(element) {
        if (element.tipo == tipoVideo) {
          isExiste = true;
        }
      });
      return isExiste;
    },
    continuar(url) {
      console.log(url);
      window.location.href =
        self.webBaseUrl + "/flujorapidoarmatuplan/portabilidad/" + url;
    }
  },
  beforeMount() {
    self = this;
    // self.productsItems = product;
    console.log("Component before mounted popup.");
    // console.log(self.productsItemsTabs);
    console.log(self.productsItemsContent);
    console.log(self.webBaseUrl);
    // console.log(self.productsItems);
    //   console.log(element);
    // });
  },
  mounted() {
    self = this;
    console.log("Component mounted popup.");
    console.log(self.productsItemsContent);
  },
  computed: {
    // productsItemsContent: function() {
    //   console.log("computed");
    // }
  },
  watch: {
    product: function(valNew, valOld) {
      // console.log("THIRD - watch - myProp - ", valNew, " ", valOld);
      self = this;
      // self.productsItemsTabs = valNew;
      self.productsItemsContent = valNew;
    }
  }
};
</script>

<style lang="scss" scoped>
</style>