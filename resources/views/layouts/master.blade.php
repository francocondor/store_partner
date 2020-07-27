<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="utf-8">
    <title>Bitel</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <meta name="robots" content="noindex"> <!-- ESTO NO DEBE IR EN PRODUCCIÓN -->
    <meta property="og:description" content='Bitel'>
    <meta property="og:type" content="website">
    <meta property="og:url" content="http://bitel.com.pe">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="theme-color" content="#ffffff">

    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,600,700,800,900">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    {{-- <link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css"> --}}
    <link type="text/css" rel="stylesheet" href="{{asset('css/main.min.css')}}?v=1.4.1.12">
    <link type="text/css" rel="stylesheet" href="{{asset('css/app.css')}}?v=1.4.1.12">
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
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-54402503-11"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-54402503-11');
    </script>
    <!-- End Google Analytics Code --> 
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
      src="https://www.facebook.com/tr?id=184311558975319&ev=PageView&noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->
  </head>
  <body>
  <div id="{{ Request::segment(1) != 'envio' ? 'app' : 'master' }}">
    @include('layouts.header')
    @include('layouts.nav')
    @yield('content')
    @include('layouts.footer')
  </div>
  {{-- <script type="text/javascript" src="{{asset('js/main.min.js')}}"></script> --}}
  <script type="text/javascript" src="{{asset('js/app.js')}}?v=1.4.1.12"></script>
  </body>
</html>
