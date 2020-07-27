<footer>
  <div class="container">
    <div class="box-footer-content">

      <div class="box-footer box-footer-logotipo">
        <div class="box-item box-item-logotipo">
          <div class="logo-footer">
            <img src="/images/footer/logo-footer.png" alt="logotipo-footer">
          </div>
        </div>
      </div>

      <div class="box-footer box-footer-options">
        <div class="box-item box-item-postpago">
          <div class="title-nav">
            <span>Postpago</span>
          </div>
          <ul>
            <li><a href="{{ url('/postpago') }}">Equipos</a></li>
            <li><a href="{{ url('/plan') }}">Planes</a></li>
            <li><a href="{{ url('/promociones') }}">Promociones</a></li>
          </ul>
        </div>

        <div class="box-item box-item-prepago">
          <div class="title-nav">
            <span>Prepago</span>
          </div>
          <ul>
            <li><a href="{{ url('/prepago') }}">Equipos</a></li>
            <li><a href="{{ url('/chip') }}">Chips</a></li>
            <li><a href="{{ url('/promociones') }}">Promociones</a></li>
          </ul>
        </div>
        <div class="box-item box-item-ayuda">
          <div class="title-nav">
            <span>Ayuda</span>
          </div>
          <ul>
            <li><a href="#">Cambiarme a Bitel</a></li>
            <li><a href="#">Tiendas cercanas</a></li>
            <li><a href="#">Comprar en la tienda Bitel</a></li>
          </ul>
        </div>

        <div class="box-item box-item-mibitel">
          <div class="title-nav">
            <span>Mi Bitel</span>
          </div>
          <ul>
            <li><a href="http://mi.bitel.com.pe/">Iniciar Sesión</a></li>
            <li><a href="http://mi.bitel.com.pe/Register">Registrarme</a></li>
          </ul>
        </div>



      </div>
      <div class="box-footer box-footer-social-media">
        <div class="box-item box-item-socialmedia">
          <div class="title-nav">
            <span>Mi Bitel</span>
          </div>
          <ul class="list-unstyled">
            <li>
              <a href="https://web.facebook.com/bitelperu" target="_blank">
                <i class="fa fa-facebook"></i>
                <span>Facebook</span>
              </a>
            </li>
            <li>
              <a href="https://www.instagram.com/bitel_peru" target="_blank">
                <i class="fa fa-instagram"></i>
                <span>Instagram</span>
              </a>
            </li>
            <li>
              <a href="https://www.youtube.com/BitelPeru" target="_blank">
                <i class="fa fa-youtube-play"></i>
                <span>Youtube</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

  </div>



  <div class="box-footer-copyright">
    <div class="container">
      <div class="box-footer-item">
        <div class="box-item">
          <span>© Copyright 2018 - Todos los derechos reservados</span>
        </div>
        <div class="box-item text-terminos-condiciones">
          <a href="{{route('download_Terminos')}}" target="_blank">Condiciones y Restricciones</a>
        </div>
      </div>
    </div>
  </div>




</footer>

