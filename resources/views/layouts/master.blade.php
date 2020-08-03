<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta name="base-url" content="{{ url('/') }}">
  <meta name="prefix" content="{{ Request::segment(1) ? '/'.Request::segment(1).'/' : '/' }}">
  <meta name="type" content="{{ Request::segment(1) ? Request::segment(1) : '' }}">
  <meta name="affiliation_id" content="{{ config('filter.affiliation_id') }}">
  <meta name="plan_post_id" content="{{ config('filter.plan_post_id') }}">
  @if(isset($order_detail))
  <meta name="order_detail" content="{{ json_encode($order_detail) }}">
  @endif
  @if(isset($dept_prov_dist_branch_list))
  <meta name="dept_prov_dist_branch_list" content="{{ json_encode($dept_prov_dist_branch_list) }}">
  @endif


  @if(isset($metatags))
  <?php echo $metatags; ?>
  @else
  <title>Bitel</title>
  @endif

  <meta name="RATING" content="GENERAL" />
  <meta content="INDEX,FOLLOW" name="robots" />
  <meta name="copyright" content="Viettel Peru SAC" />
  <meta name="author" content="Viettel Peru SAC" />
  <meta http-equiv="audience" content="General" />
  <meta name="resource-type" content="Document" />
  <meta name="distribution" content="Global" />
  <meta name="revisit-after" content="1 days" />
  <meta name="GENERATOR" content="Viettel Peru SAC" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta property="og:site_name" content="tienda.bitel.com.pe" />
  <meta property="og:type" content="website" />
  <meta property="og:locale" content="es_PE" />
  <meta property="fb:pages" content="301618746637840" />


  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
  <link rel="manifest" href="/manifest.json">
  <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
  <meta name="theme-color" content="#ffffff">

  <link type="text/css" rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,600,700,800,900">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
  {{-- <link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css"> --}}
  <link type="text/css" rel="stylesheet" href="{{asset('css/main.min.css')}}?v=1.4.1.13">
  <link type="text/css" rel="stylesheet" href="{{asset('css/app.css')}}?v=1.4.1.13">
  <link type="text/css" rel="stylesheet" href="{{asset('css/biteltienda.css')}}?v=1.4.1.13">
  <!-- <link rel="stylesheet" type="text/css" href="{{asset('css/ie-explorer-9.css')}}"/> -->

  <!--[if lte IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('css/ie-explorer-9.css')}}" />

    <![endif]-->

  <!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="{{asset('css/ie-explorer-8.css')}}" />
    <script src="{{asset('js/css3-mediaqueries.min.js')}}"></script>
    <![endif]-->

  @include('layouts.dynamic-javascript')
  <!-- Google Tag Manager -->
  <script>
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-P59LLMB');
  </script>
  <!-- End Google Tag Manager -->

  <!-- Pegue también este código inmediatamente después de la etiqueta <body> de apertura: -->

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P59LLMB" height="0" width="0"
      style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
  <!-- Facebook Pixel Code -->
  <script>
    !function(f,b,e,v,n,t,s)
      {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
      n.callMethod.apply(n,arguments):n.queue.push(arguments)};
      if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
      n.queue=[];t=b.createElement(e);t.async=!0;
      t.src=v;s=b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t,s)}(window, document,'script',
      'https://connect.facebook.net/en_US/fbevents.js');
      fbq('init', '184311558975319');
      fbq('track', 'PageView');
  </script>
  <noscript><img height="1" width="1" style="display:none"
      src="https://www.facebook.com/tr?id=184311558975319&ev=PageView&noscript=1" /></noscript>
  <!-- End Facebook Pixel Code -->
  <!-- Hotjar Tracking Code -->
  <script>
    (function(h,o,t,j,a,r){
            h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
            h._hjSettings={hjid:1246561,hjsv:6};
            a=o.getElementsByTagName('head')[0];
            r=o.createElement('script');r.async=1;
            r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
            a.appendChild(r);
        })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
  </script>
</head>

<body>
  <div id="{{ Request::segment(1) != 'envio' ? 'app' : 'master' }}">
    @include('layouts.header')
    @include('layouts.nav')
    @yield('content')
    @include('layouts.footer')
  </div>
  {{-- <script type="text/javascript" src="{{asset('js/main.min.js')}}"></script> --}}
  <script type="text/javascript" src="{{asset('js/app.js')}}"></script>
  @if(isset($meta_type))
  <script type="text/javascript">
    console.log("{{$meta_type}}");
  </script>
  @if($meta_type=='smartphones.postpago.detail' || $meta_type=='smartphones.prepago.detail')
  <script type="text/javascript">
    var ruta1="{{route('download_FichaTecnica',[$product->product_id])}}";
        var ruta2="{{route('download_FichaComercial',[$product->product_id])}}";
  </script>
  @if($meta_type=='smartphones.prepago.detail')
  <script type="text/javascript">
    ruta2="{{route('download_Consideraciones')}}";
  </script>
  @endif
  <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {

          var width = document.body.clientWidth;
          console.log(width);

          if(width>=768){

            console.log("desktop");

            var iframe1='<iframe class="hidden-sm hidden-xs" src="'+ruta1+'#zoom=100" style="width:100%;"></iframe><iframe class="hidden-lg hidden-md" src="'+ruta1+'#zoom=30" style="width:100%;"></iframe>';
            var iframe2='<iframe class="hidden-sm hidden-xs" src="'+ruta2+'#zoom=100" style="width:100%;"></iframe><iframe class="hidden-lg hidden-md" src="'+ruta2+'#zoom=30" style="width:100%;">';

            $("#ifr1").html(iframe1);
            $("#ifr2").html(iframe2);

            $("#boton1").attr('onclick',"{if($('#ifr1').css('display')=='none'){ $('#ifr1').slideDown();$('#span1 p').html('-');} else {$('#ifr1').slideUp();$('#span1 p').html('+');} }");
            $("#boton2").attr("onclick","{if($('#ifr2').css('display')=='none'){ $('#ifr2').slideDown();$('#span2 p').html('-');} else {$('#ifr2').slideUp();$('#span2 p').html('+');} }");
          }
          else{

            console.log("mobile"); 
            $("#boton1").attr('href',ruta1);
            $("#boton2").attr('href',ruta2);
            $("#boton1").attr('target','_blank');
            $("#boton2").attr('target','_blank');

          }
        });

  </script>
  @endif
  @if($meta_type=='chip' || $meta_type=='plan')
  <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {
          var width = document.body.clientWidth;
          console.log(width);
          var ruta2="{{route('download_Consideraciones')}}";
          if(width>=768){

            console.log("desktop");

            var iframe2='<iframe class="hidden-sm hidden-xs" src="'+ruta2+'#zoom=100" style="width:100%;"></iframe><iframe class="hidden-lg hidden-md" src="'+ruta2+'#zoom=30" style="width:100%;">';

            $("#ifr2").html(iframe2);

            $("#boton2").attr("onclick","{if($('#ifr2').css('display')=='none'){ $('#ifr2').slideDown();$('#span2 p').html('-');} else {$('#ifr2').slideUp();$('#span2 p').html('+');} }");
          }
          else{
            console.log("mobile"); 
            $("#boton2").attr('href',ruta2);
            $("#boton2").attr('target','_blank');
          }
    });
  </script>
  @endif
  @endif
</body>

</html>