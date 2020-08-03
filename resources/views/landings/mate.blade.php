@extends('layouts.master_clean')

@section('css')  

<script type="text/javascript">window.pageLoadStart = new Date().getTime();</script>
  
<script type="text/javascript">

  function getEncCookie(name){
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
      return unescape(arr[2]);
    else
      return null;
  }
    // data layer javascript
    window.digitalData={"page":{"pageInfo":{"pageName":"cbg:en:product:phones:mate20-pro","countryCode":"EN","siteCode":"en","siteCode2":"en","siteName":"Global (EN)","appNum":"A59919963","language":"en","site":"cbg","uri":"/en/phones/mate20-pro/","siteCodeForAPI":"worldwide"},"category":{"pageType":"product-detail","primaryCategory":"phones","subCategory1":"mate20-pro"}},"product":{"productInfo":{"marketingName":"HUAWEI Mate 20 Pro","category":"Phones"}},"event":[]}
    
    window.encUser = getEncCookie("data_layer_enc");
</script>

<script type="text/javascript" src="{{asset('js/mate/jquery-1.11.3.min.js')}}"></script>
<!--script type="text/javascript">
  var supportv2 = {};
  supportv2["apiBaseUrl"] = "https:\/\/ccpce\u002Dde.consumer.huawei.com\/ccpcmd\/services\/dispatch\/secured\/CCPC\/EN";
</script-->
<input type="hidden" id="month_txt" value="month txt">

    
<link rel="stylesheet" href="{{asset('css/mate/public-v3.min.css')}}" type="text/css">
<script type="text/javascript" src="{{asset('js/mate/public-v3.min.js')}}"></script>

<link href="{{asset('css/mate/global.css')}}" type="text/css" rel="stylesheet"/>  
<!--link href="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/css/global.css?v6" type="text/css" rel="stylesheet"/-->
<link href="{{asset('css/mate/mate20.css')}}" type="text/css" rel="stylesheet"/>
<link href="{{asset('css/mate/slick.css')}}" type="text/css" rel="stylesheet"/>
<script src="{{asset('js/mate/modernizr-source.js')}}" type="text/javascript"></script>
    
<!--link rel="stylesheet" href="js/mate/product-detail-v3.min.css" type="text/css"-->

<script type="text/javascript">
  var gascroll = 1;
</script>  
  
<script src="{{asset('js/mate/satelliteLib.js')}}"></script>
 
<style>
        #pie_nav .GB-8GB-de-regalo{
            max-width: 251px;
            max-height: 36px;
            font-family: Manrope-huawei;
            font-size: 22px;
            font-weight: 500;
            font-style: normal;
            font-stretch: normal;
            /*line-height: 2.25;*/
            letter-spacing: normal;
            color: #ffffff;
        }
        #pie_nav .GB-8GB-de-regalo .text-style-1{
            font-weight: 300;
        }
        .Pronto-footer {
         /* max-width: 85px;*/
          max-height: 34px;
          font-family: Manrope-huawei;
          font-size: 22px;
          font-weight: 600;
          font-style: normal;
          font-stretch: normal;
          line-height: normal;
          letter-spacing: normal;
          color: #ffffff;
        }
        .conv3_footer .column ul li a[href^='http']:not([href*='huawei.com']):after {
            content: "";
            display: inline-block;
            width: 12px;
            height: 12px;
            margin-left: 5px;/*
            background-image: url("https://consumer-img.huawei.com/content/dam/huawei-cbg-site/en/mkt/retailer-logo/other_site.png");*/
            vertical-align: middle;
        }

        .conv3_footer .column ul li a[href^='http']:not([href*='huawei.com']):hover {
            position: relative;
        }
        .equipos{
          max-width: 692px !important;
        }
        @media screen and (min-width:1500px){
          .subtitulo-slider {
            max-width: none !important;
          }
        }
        @media screen and (min-width:769px) and (max-width:993px){
          #mate20-bio-id .component-image-composition-master{
            visibility: hidden;
          }
        }
        @media screen and (max-width:768px){
          #reservalo-box{
            width:90%;
          }
          .Precio-del-equipo{
            text-align:left !important;
          }
          .Pronto{
            text-align:left !important;
          }
          .extra-image{
            width: 15% !important;left:0 !important;
          }
          .legal{
            font-size: 12px;text-align: center;margin-bottom:50px;
          }
          .gray-mobile{
            color: #d9d9d9 !important;
          }
          #ex1{
            width: auto;
            background: none;
            box-shadow: none;
            padding:0;
          }
          .auto-mobile{
            width:auto;
          }
          #mate20-bio-id{
            background: #000000 !important;
          }
          .logo-footer.text-right{
            text-align:center !important;
          }
          .equilibrio-row{
            margin: 0 auto;
          }
          .desc-enmarque{
            line-height: 1.5;
          }
          .centrado-responsive{
            text-align: center;
          }
          .mate20pro-intro .component-image-composition-follower img, .mate20pro-intro .component-image-composition-master img{
            width:225px;
          }
          .detalle{
            display:block;
          }
          .titulo1{
            font-size:24px;
          }
          .titulo2{
            font-size:20px;
            color: #4a4a4a !important;
          }
          .descripcion1{
            font-size:14px;
          }
          .subtitulo1{
            font-size:20px;
          }
          .modal{
            overflow: visible;
            max-width:100% !important;
          }
          .Resrvalo-desde {
            width: 169px;
            height: 60px;
            font-size: 18px;
            font-family: Manrope-huawei;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: 2.14;
            letter-spacing: normal;
            color: #000000;
          }
          .Resrvalo-desde .text-style-1 {
            font-family: LucidaGrande;
            font-weight: bold;
          }
          .Reserva-tu-Huawei-Ma {
            width: 308px;
            height: 66px;
            font-family: Manrope-huawei;
            font-size: 14px;
            font-weight: 300;
            font-style: normal;
            font-stretch: normal;
            line-height: 1.71;
            letter-spacing: normal;
            text-align: center;
            color: #707070;
          }
          .Reserva-tu-Huawei-Ma .text-style-1 {
            font-weight: 600;
            color: #4a4a4a;
          }
          .Resrvalo-desde {
            max-width: 169px;
            font-family: Manrope-huawei;
            font-size: 18px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: 3.33;
            letter-spacing: normal;
            text-align: center;
            color: #000000;
          }
          .Resrvalo-desde .text-style-1 {
            font-family: LucidaGrande;
            font-weight: bold;
          }
          .Precio-del-equipo {
            font-family: Manrope-huawei;
            font-size: 12px;
            font-weight: normal;
            font-style: normal;
            font-stretch: normal;
            line-height: 3;
            letter-spacing: normal;
            text-align: center;
            color: #129ea2;
          }.Pronto {
            /*width: 99px;*/
            height: 39px;
            background-image: linear-gradient(262deg, #00b7b8, #00629b);
            font-family: Manrope-huawei;
            font-size: 22px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: normal;
            letter-spacing: normal;
            text-align: center;
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
          }.GB-8GB-de-regalo {
            width: 289px;
            height: 36px;
            font-family: Manrope-huawei;
            font-size: 16px;
            font-weight: 500;
            font-style: normal;
            font-stretch: normal;
            line-height: 2.25;
            letter-spacing: normal;
            text-align: center;
            color: #000000;
          }

          .GB-8GB-de-regalo .text-style-1 {
            font-weight: 300;
            color: #4a4a4a;
          }
          .QUIERO-RESERVARLO {
            font-family: Manrope-huawei;
            font-size: 12px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: 1;
            letter-spacing: 3px;
            text-align: center;
            color: #ffffff;
            vertical-align: middle;
            display: table-cell;
          }
          .Pronto-precio{
            font-family: Manrope-huawei;
            font-size: 22px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: normal;
            letter-spacing: normal;
            color: #000000;
          }
          .Rectangle {
            width: 100%;
            height: 50px;
            border-radius: 42px;
            background: -webkit-linear-gradient(266deg, #00b7b8, #00629b); /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(266deg, #00b7b8, #00629b); /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(266deg, #00b7b8, #00629b); /* For Firefox 3.6 to 15 */
            background: linear-gradient(266deg, #00b7b8, #00629b); /* Standard syntax */
            cursor:pointer;
            display: table;
            margin:15px auto;
          }
          .enorme-h1 {
            padding-left:25px;
            padding-right:25px;
            padding-top: 45px !important;
            padding-bottom: 45px !important;
          }

        }

        @media screen and (min-width:769px){

          #ex2{
            width:30%; 
          }
          .legal{
            font-size: 14px;text-align: center;margin-bottom:50px;
          }
          .retina{
            width:50%;
          }
          .auto-mobile{
            width:100%;
          }
          .desc-enmarque{
            line-height: 25px;
          }
          .justificado-desktop{
            text-align: justify;
          }
          .conv3_footer .column ul li a[href^='http']:not([href*='huawei.com']):hover:before {
              display: inline-block;
              position: absolute;
              width: auto;
              min-width: 145px;
              height: 20px;
              line-height: 20px;
              padding: 0;           
              background-color: white;
              border: solid 1px #757575;
              top: 30px;
              font-size: 12px;
              border-radius: 4px;
              text-align: center;
              color: #333333;
          }
          
         .conv3_footer .column ul li a[href^='http']:not([href*='huawei.com']):hover:before {
              content: "You will leave Huawei.com";
              margin-top:-5px;
          }
          .conv3_footer .column ul{
            padding-bottom:30px;
          }
          .titulo1{
            font-size:64px !important;
          }
          .titulo2{
            font-size:44px !important;
          }
          .descripcion1{
            font-size:18px !important;
          }
          .subtitulo1{
            font-size:34px !important;
          }        
          .modal{
            overflow: visible;
            max-width:80% !important;
          }
          .Resrvalo-desde {
            width: 425px;
            height: 60px;
            font-family: Manrope-huawei;
            font-size: 28px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: 2.14;
            letter-spacing: normal;
            color: #000000;
          }

          .Resrvalo-desde .text-style-1 {
            font-family: LucidaGrande;
            font-weight: bold;
          }
          .Precio-del-equipo {
            /*width: 140px;*/
            height: 36px;
            font-family: Manrope-huawei;
            font-size: 14px;
            font-weight: normal;
            font-style: normal;
            font-stretch: normal;
            line-height: 2.57;
            letter-spacing: normal;
            color: #129ea2;
          }
          .Pronto {
            /*width: 134px;*/
            height: 52px;
            background-image: linear-gradient(262deg, #00b7b8, #00629b);
            font-family: Manrope-huawei;
            font-size: 32px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: normal;
            letter-spacing: normal;
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
          } 
          .Pronto-precio{
            /*width: 161px;*/
            height: 52px;
            font-family: Manrope-huawei;
            font-size: 32px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: normal;
            letter-spacing: normal;
            color: #000000;
          }
          .GB-8GB-de-regalo {
            width: 450px;
            height: 36px;
            font-family: Manrope-huawei;
            font-size: 26px;
            font-weight: 500;
            font-style: normal;
            font-stretch: normal;
            line-height: 1.38;
            letter-spacing: normal;
            color: #000000;
            margin:15px auto;
          }

          .GB-8GB-de-regalo .text-style-1 {
            font-weight: 300;
            color: #4a4a4a;
          }
          .Rectangle {
            width: 292px;
            height: 50px;
            border-radius: 42px;
            background: -webkit-linear-gradient(266deg, #00b7b8, #00629b); /* For Safari 5.1 to 6.0 */
            background: -o-linear-gradient(266deg, #00b7b8, #00629b); /* For Opera 11.1 to 12.0 */
            background: -moz-linear-gradient(266deg, #00b7b8, #00629b); /* For Firefox 3.6 to 15 */
            background: linear-gradient(266deg, #00b7b8, #00629b); /* Standard syntax */
            cursor:pointer;
            display: table;
            margin:15px auto;
          }
          .QUIERO-RESERVARLO {
            font-family: Manrope-huawei;
            font-size: 12px;
            font-weight: 600;
            font-style: normal;
            font-stretch: normal;
            line-height: 1;
            letter-spacing: 3px;
            text-align: center;
            color: #ffffff;
            vertical-align: middle;
            display: table-cell;
          }
          .GB {
            width: 35px;
            height: 36px;
            font-family: Manrope-huawei;
            font-size: 14px;
            font-weight: 500;
            font-style: normal;
            font-stretch: normal;
            /*line-height: 2.57;*/
            letter-spacing: normal;
            color: #129ea2;
          }
          .Internet {

            width: 77px;
            height: 36px;
            font-family: Manrope;
            font-size: 16px;
            font-weight: 300;
            font-style: normal;
            font-stretch: normal;
            line-height: 2.25;
            letter-spacing: normal;
            color: #4a4a4a;

          }
          
          .detalle{
            display: inline-block;
            vertical-align: top;
            height: 32px;
          }
       }
       .Enorme-capacidad {
          max-width: 331px;
          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.24;
          letter-spacing: normal;
          color: #000000;
          margin:25px auto;
        }
        .La-energa-duradera {
          max-width: 780px;
          /*height: 92px;*/
          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.67;
          letter-spacing: normal;
          text-align: center;
          color: #707070;
          margin:0 auto;margin-bottom: 25px;
        }
        .La-asombrosa-batera-Copy {
          /*max-width: 715px;*/
          /*max-height: 97px;*/
          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.67;
          letter-spacing: normal;
          text-align: center;
          color: #707070;
          margin-top: 20px;
        }
        .subtitulo-slider {
          max-width: 937px;
          max-height: 88px;
          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.67;
          letter-spacing: normal;
          text-align: center;
          color: #707070;
          text-align:center;
          margin:0 auto;
          margin-top: 25px;
          margin-bottom: 25px;
        }
        .descripcion-slider {
          max-width: 352px;
          max-height: 42px;
          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.24;
          letter-spacing: normal;
          text-align: center;
          color: #000000;
          text-align:center;
          margin:0 auto;
        }
        #mate20-bio-id{    
          background: url('images/landings/mate/mate/mate2/bio-id.jpg');
          background-size: cover;
        }
        nav#nav-bitel .container #navbar ul li a{
          font-size:14px;
        }
        .navbar-collapse {
          flex-basis: unset !important;
        }
        .navbar-nav{
          display:block !important;
        }
        .blocker{
          z-index: 99999999999999999999999999999999999999999 !important;
        }
        /*counter*/
        #clock{
          margin-bottom:30px;
        }
        .clock-div{
          text-align: center;
          border-radius: 4px;
          margin:0 auto;  
          background-image: linear-gradient(to bottom, #00b7b8, #00629b);
        }
        #clock div{
          text-align: center;
          margin:0 auto;
        }
        .clock-number{     
          /*background: -webkit-linear-gradient(267deg, #00b7b8, #00629b);*/
          color:white;
          border:1px solid white;
          text-align:center;
          padding: 0;
        }
        .clock-text{/*
          background: -webkit-linear-gradient(267deg, #00b7b8, #00629b);
          background-clip: border-box;
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;*/
          color:#333;
          font-weight: bold;
          font-family: Manrope-huawei;
          font-weight:bold;
        }
        @media screen and (min-width:768px){
          .clock-number{
            font-size:50px;
          }
          .clock-text{
            font-size:13px;
          }
          .trio-equipos{
            margin-top: 60px;
          }
          .Muy-pronto-el-Huawe {
            font-size: 18px;
          }
        }
        @media screen and (max-width:767px){
          #myModalLabel{
            font-size:18px;
          }
          .clock-number{
            font-size:30px;
          }
          .clock-text{
            font-size:10px;
          }
          .trio-equipos{
            margin-top: 30px;
          }
          .Muy-pronto-el-Huawe {
            font-size: 13px;
          }

        }
        .clock-div::after{
          content: '';
          display: block;
          width: 4px;
          height: 12px;
          top: 44%;
          right: -2px;
          z-index: 2;
          position: absolute;
            background-image: linear-gradient(to bottom, #00b7b8, #00629b);
        }       
        .clock-div::before{
          content: '';
          display: block;
          width: 4px;
          height: 12px;
          top: 44%;
          left: -2px;
          z-index: 2;
          position: absolute;
            background-image: linear-gradient(to bottom, #00b7b8, #00629b);
        }       
        .Muy-pronto-el-Huawe {

          font-family: Manrope-huawei;
          font-weight: 300;
          font-style: normal;
          font-stretch: normal;
          line-height: 1.67;
          letter-spacing: normal;
          text-align: center;
          color: #707070;

        }

        .Muy-pronto-el-Huawe span {

          font-weight: bold;
          color: #000000;

        } 
        .clock-number{
          padding:5px;
        }
        .clock-div{
          position:relative;
        }

        @media screen and (min-width:2000px){
          .padding-apple{
            padding:0 30% !important;
          }
          .xlg-7-a-xlg-10{
            -ms-flex: 0 0 83.33333% !important;
            flex: 0 0 83.33333% !important;
            max-width: 83.33333% !important;
            text-align: justify;
          }
        }

      </style>

<script type="text/javascript">
var service_sessionuuid_support = "base/basecommonService/sessionuuid"

var SITE_CODE = window.digitalData.page.pageInfo.siteCodeForAPI
var APP_NUM = window.digitalData.page.pageInfo.appNum
var site_language = window.digitalData.page.pageInfo.language
var countryCode = window.digitalData.page.pageInfo.countryCode
</script>
  <h1 class="header-tag-title">HUAWEI Mate 20 Pro</h1>

@endsection

@section('content')
<style>
    
    @media (max-width: 1023px) {
        .huawei-v3 .app-nav .app-nav-icon span {
            display: block;
            position: absolute;
            content: '';
            -webkit-transition: -webkit-transform .4s ease;
            transition: -webkit-transform .4s ease;
            transition: transform .4s ease;
            transition: transform .4s ease, -webkit-transform .4s ease;
            -webkit-transform-origin: center;
            transform-origin: center;
            width: 24px;
            height: 2px;
            left: 4px;
            top: 8px;
            background: url('data:image/svg+xml, <svg xmlns="http://www.w3.org/2000/svg" width="100" height="2"><rect width="100" y="0.5" height="1.5" fill="rgb(60,60,60)"/></svg>') no-repeat top;
        }
        .huawei-v3 .app-nav .app-nav-icon span:nth-child(2) {
            top: 15px;
        }
        .huawei-v3 .app-nav .app-nav-icon span:nth-child(3) {
            top: 22px;
        }
        .huawei-v3 .app-nav .app-nav-icon.clicked span:nth-child(1) {
            -webkit-transform: rotate(45deg) translate(5px, 5px);
            transform: rotate(45deg) translate(5px, 5px);
        }
        .huawei-v3 .app-nav .app-nav-icon.clicked span:nth-child(2) {
            -webkit-transform: scale(.05, 1);
            transform: scale(.05, 1);
        }
        .huawei-v3 .app-nav .app-nav-icon.clicked span:nth-child(3) {
            -webkit-transform: rotate(-45deg) translate(5px, -5px);
            transform: rotate(-45deg) translate(5px, -5px);
        }
    }
</style>
    
<style>
  footer span.mapa{
    margin:auto !important;
    font-size: 14px !important;
  }
</style>
    
    
    
    <script>
            $(".hide-rmdproducts .products-cnt").each(function(){
                var $t = $(this);
                var wrap = $t.attr("wrap") 
                var $that = $(".nav-list.rmd_pro[wrap='"+ wrap +"'] .products-wrap")
                $t.appendTo($that);
            })
    </script>
    
       <!--head-end-->
        
        
  <style>
  /* product buy page 购买按钮弹窗：partner/global*/
  #pdbuypage{display:none;position:fixed;top:0;left:0;bottom:0;right:0;z-index:800;font-size: 18px;color: #242728;letter-spacing: 0.83px;line-height: 20px;}
  .pdbuypage-bg{position:fixed;top:0;left:0;bottom:0;right:0;z-index:183;background:rgba(0,0,0,.8);}
  .pdbuypage-box{width:760px;height:580px;position:absolute;z-index:300!important;left:50%;top:50%;margin-left:-380px;margin-top:-290px;background:#fff;border-radius:8px;padding:5px 5px 19px 19px;box-sizing:border-box;}
  .pdbuypage-close{height:35px;padding:10px 10px 0 0;}
  .pdbuypage-closebtn{float:right;width:35px;height:35px;cursor:pointer;}
  .pdbuypage-title{text-align:center;}
  .pdbuypage-title-product{height:20px;margin:5px auto;font-size: 18px;color: #6F6F6F;display:inline-block;}
  .pdbuypage-title-tipinfo{min-height:50px;max-height:88px;line-height:50px;font-size: 36px;color: #242728;letter-spacing: 1.66px;padding-right:2%;margin-bottom:20px;overflow:hidden;}
  .pdbuypage-list{height:360px;width:100%;    box-sizing: border-box;}
  .pdbuypage-box-global .pdbuypage-list{ height:400px;}
  .pdbuypage-listul{overflow-y:auto;height:100%;}
  .pdbuypage-listitem{display:inline-block;width:200px;height:150px;margin:15px 18px;}
  .pdbuypage-listitem-link{display:block;width:100%;height:100%;border:1px solid #cecece;border-radius:8px;text-align:center;}
  .pdbuypage-listitem-link.active,.pdbuypage-listitem-link:hover{border-color:#D0021B;}
  .pdbuypage-listitem-img{max-width:180px;height:120px;margin:15px auto;display:block;font-size:12px;text-align:center;}
  .pdbuypage-listitem-name{display:none;width:160px;height:36px;line-height:20px;margin:0 auto;font-family: AkkuratPro-Bold;font-size: 18px;color: #242728;letter-spacing: 0.83px;overflow:hidden;}
  .pdbuypage-footinfo{padding:15px 19px;text-align:left;display:none;}
  .pdbuypage-footinfo a{color:#D0021B;}
  .plp-item-productbtn{cursor:pointer;}
  .pdbuypage-listitem-global{ display:block; width:88%; height:auto; margin:15px 6%;}
  .pdbuypage-listitem-area{ width:100%; display:block; font-family:AkkuratPro-Bold; font-size:18px; color:#000; margin:18px 0; text-align:left;}
  .pdbuypage-listitem-country{ display:block; width:100%; font-family: AkkuratPro-Regular; overflow:hidden;}
  .pdbuypage-listitem-country .pdbuypage-listitem-link{ font-family: AkkuratPro-Regular; font-size: 15px; color: #242728; height:36px; margin:8px 0; border:none; width:46%; margin-right:4%;float:left; text-align:left; overflow:hidden;}
  .pdbuypage-listitem-country .pdbuypage-listitem-name{ font-family: AkkuratPro-Regular; font-size: 15px; color: #242728; text-align:left; display:none; overflow:hidden; width:100%; line-height:22px; word-break: break-word;}
  .pdbuypage-listitem-country .pdbuypage-listitem-link:hover .pdbuypage-listitem-name{ color:#D0021B;}
  
  @media screen and (min-width:1024px) and (max-width:1920px){
    .pdbuypage-box{width:750px;height:600px;margin-left:-375px;margin-top:-290px;}
  }
  @media screen and (min-width:1921px){
    .pdbuypage-box{width:1200px;height:770px;margin-left:-600px;margin-top:-375px;}
    .pdbuypage-list{height:540px;padding:0 10px 0 80px;}
    .pdbuypage-listitem{margin:15px 25px;}
    .pdbuypage-footinfo{padding:15px 106px;}
    .pdbuypage-box-global .pdbuypage-list{ height:575px;}
    .pdbuypage-listitem-country .pdbuypage-listitem-link{ width:30%; margin-right:3%;}
  }
  @media screen and (max-width:1023px){
    .pdbuypage-box{width: 88%;    height: 92%;    margin-left: 0;    margin-top: 0;    left: 6%;    top: 4%;border-radius:4px;padding:10px;}
    .pdbuypage-close{padding:0;}
    .pdbuypage-title{height:73px; overflow:hidden;}
    .pdbuypage-title-product{font-size:12px;height:12px;line-height:12px;display:inline-block;}
    .pdbuypage-title-tipinfo {font-size:20px;height:28px;line-height:24px;}
    .pdbuypage-list{height:70%;}
    .pdbuypage-box-global .pdbuypage-list{ height:75%;} 
    .pdbuypage-listul {    width: 260px;    margin: 0 auto;}
    .pdbuypage-listitem{width:110px;height:80px;margin:7.5px 10px;}
    .pdbuypage-listitem-link{border-radius:4px;}
    .pdbuypage-listitem-img{max-width:100px;height:70px;margin:5px auto;display:block;}
    .pdbuypage-listitem-name{display:none;width:100px;height:26px;line-height:14px;margin:0 auto;font-family: AkkuratPro-Bold;font-size: 12px;color: #242728;letter-spacing: 0.83px;}
    .pdbuypage-listitem-global{ width:96%; margin:7.5px 2%; height:auto;} 
    .pdbuypage-listitem-country .pdbuypage-listitem-link{ height:30px;} 
    .pdbuypage-listitem-country .pdbuypage-listitem-name{ font-size:12px; line-height:12px;}
    .pdbuypage-footinfo{padding:15px 30px;font-size:12px;}
  }
  </style>
  <script>
    var showStoreFinder=false;
    if(!!$(".hide_showstorefinder").html()){
      showStoreFinder=JSON.parse($(".hide_showstorefinder").html().trim());
    }

    /*购买按钮类别*/
    $(function(){
      if(!!$(".buybtnhidedata").html()){
        var buyBtnJson=JSON.parse($(".buybtnhidedata").html().trim());
          var buyBtnType="";
          var btnLinkInfo="";
          var targetType="_self";
          var buybtnCat="Buy Clicks";
          var storeLink="";
          var device=$(window.width)<1024?"mobile":"pc";
          if(!!buyBtnJson){
            buyBtnType=buyBtnJson.buttonType;
            targetType=!!buyBtnJson.openInNewPage?(buyBtnJson.openInNewPage=="true"?"_blank":targetType):targetType;
            switch (buyBtnType){
              case "none":
                $(".plp-item-productbtn").hide();
                buybtnCat="Explore";
                break;    
              case "partner":
                /*partner ：单个链接*/
                var selList=buyBtnJson.chooseAPartners;
                $.each(selList,function(m){
                  btnLinkInfo+=(selList[m].partnerLink+"%@%"+selList[m].url+",");
                });
                storeLink=!$(".hide_storefinderlink").html()?"javascript:;":$(".hide_storefinderlink").html();
                break;
              case "third-party-site":
                /*third-party ：单个链接*/
                btnLinkInfo=!!buyBtnJson.thirdPartySiteLink?buyBtnJson.thirdPartySiteLink:"";
                if(device=="mobile"){
                  btnLinkInfo=!!buyBtnJson.mobileThirdPartySiteLink?buyBtnJson.mobileThirdPartySiteLink:btnLinkInfo;
                }
                break;
              case "price-spider":
                /*sku code*/
                btnLinkInfo=!!buyBtnJson.priceSpiderSkuCode?buyBtnJson.priceSpiderSkuCode:"";
                break;
              case "global-buy":
                /*globalbuy*/
                btnLinkInfo="";
                break;
            }
          }
          
          if(!!buyBtnJson&&buyBtnJson.buttonType=="price-spider"&&!!buyBtnJson.priceSpiderSkuCode){
            $(".plp-item-productbtn").attr({
              "cat":buybtnCat,
              "data-buybtntype":buyBtnType,
            "class":"plp-item-productbtn a-common ps-widget",
            "ps-button-label":"BUY",
            "ps-sku":buyBtnJson.priceSpiderSkuCode
            });
          }else{
            $(".plp-item-productbtn").attr({
              "cat":buybtnCat,
              "data-buybtntype":buyBtnType,
              "data-btnlinkinfo":btnLinkInfo,
              "data-targettype":targetType,
              "data-storelink":storeLink
            });
            $(".plp-item-productbtn").on("click",buyBtnPage);
          }
      }
        
    })
      
      
      var buyBtnPage=function(){
        var thsBtn=$(this);
        var btnType=thsBtn.attr("data-buybtntype");
        var prodcutId=thsBtn.attr("data-pid");
        var productName=thsBtn.attr("data-pname");
        var targetType=thsBtn.attr("data-targettype");
        
        if(btnType=="partner"){ /* 合作伙伴 */
          var storeFinderLink=thsBtn.attr("data-storelink");
          /*partnerSel获取产品当前选择的合作商标识 ； partnerJson 当前站点所有合作商*/
          var partnerSel=!!thsBtn.attr("data-btnlinkinfo")?thsBtn.attr("data-btnlinkinfo").split(","):[];
          if(!!$(".partnerhidedata").html()){
            var partnerJson=JSON.parse($(".partnerhidedata").html().trim());
            /*遍历 当前产品 选择的合作商 */
            var pdbuypageListHtml="";
            for(n=0;n<partnerSel.length;n++){
              $.each(partnerJson,function(i){
                var partnerItem=partnerJson[i];
                if(partnerItem.path==partnerSel[n].split("%@%")[0]){ /**/
                  var imgSrc=!!partnerItem.icon?partnerItem.icon:"#";
                  var pdbuyLink=(!!partnerItem.url)?partnerItem.url:partnerSel[n].split("%@%")[1];
                  if(pdbuyLink.indexOf("http")=="-1"){
                    pdbuyLink="https://"+pdbuyLink;
                  }
                  pdbuypageListHtml+='<li class="pdbuypage-listitem">'+
                              '<a href="'+pdbuyLink+'" cat="Buy Clicks" act="Filter on '+partnerItem.name+'" lab="'+productName+'"   target="'+targetType+'" data-parterlink="'+pdbuyLink+'" class="a-common pdbuypage-listitem-link">'+
                                '<img src="'+imgSrc+'" onerror="javascript:this.src=\'/etc/designs/huawei-cbg-site/clientlib-support-v2/asset/img/huawei_logo.png\'" alt="partner-logo" class="pdbuypage-listitem-img" />'+
                                '<span  class="pdbuypage-listitem-name">'+partnerItem.name+'</span>'+
                            '</a></li>';
                }
              })
            }
            /* 生成 合作商 弹框 */
            $(".pdbuypage-box").addClass("pdbuypage-box-partner");
            $(".pdbuypage-title-productname").html("");
            $(".pdbuypage-title-productplane").html("");
            $(".pdbuypage-title-tipinfo").html(tl_pn);
            $(".pdbuypage-listul").html(pdbuypageListHtml);
            if(!!showStoreFinder){
                    $(".pdbuypage-footinfo").show();
                    $(".pdbuypage-footinfo span").html(tl_bis);
                    storeFinderLink=!$(".hide_storefinderlink").html()?"javascript:;":$(".hide_storefinderlink").html();
                    targetType=!!JSON.parse($(".hide_storefinderinnewpage").html())?"_blank":"_self";
                      $(".pdbuypage-footinfo a").text(tl_sf).attr({"href":storeFinderLink,"target":targetType});
                  }else{
                    $(".pdbuypage-footinfo").hide();
                  }
            
            if($(window).width()>=1024){
              if($(".pdbuypage-listul .pdbuypage-listitem").length>3){
                $(".pdbuypage-listul .pdbuypage-listitem").css("float","left");
              }
            }else{
              if($(".pdbuypage-listul .pdbuypage-listitem").length>2){
                $(".pdbuypage-listul .pdbuypage-listitem").css("float","left");
              }
            }
            
            
            $("body").css("overflow-y","hidden");
            $("#pdbuypage").slideDown(300);
            
            $(".pdbuypage-closebtn").on("click",function(){
              $("#pdbuypage").slideUp(300,function(){
                $("body").css("overflow-y","auto");
                $(".pdbuypage-box").removeClass("pdbuypage-box-partner");
              });
            })
          }
        }else if(btnType=="third-party-site"){ /*第三方合作商*/
          var targetType=thsBtn.attr("data-targettype");
          var targetUrl=thsBtn.attr("data-btnlinkinfo");
          if(targetUrl.indexOf("http")=="-1"){
            targetUrl="https://"+targetUrl;
          }
          if(targetType=="_self"){
            window.location.href=targetUrl;
          }else{
            window.open(targetUrl);
          }
        }else if(btnType=="price-spider"){/*price-spider*/
          var skuCode=thsBtn.attr("data-btnlinkinfo");
          console.log(skuCode);
        }else if(btnType=="global-buy"){/*global buy*/
          var globalBuyJson={};
          if(!!prodcutId){
            var siteCode2=window.digitalData.page.pageInfo.siteCode2;
            var host=window.location.href.split('/'+siteCode2+'/')[0];
            var globalBuyUrl=host+"/en/hidden/product/"+prodcutId+"/_jcr_content.json";
            $.getJSON(globalBuyUrl,function(res){//请求数据
              globalBuyJson=JSON.parse(res.buyInfo);
              
              var globalBuyListHtml="";
              for(var area in globalBuyJson){//遍历区域
                var areaItem=globalBuyJson[area];
                var globalBuyCountry="";
                for(var country in areaItem){//*遍历国家
                  globalBuyCountry+='<a href="'+areaItem[country].buyLink+'" cat="Buy Clicks" act="Filter on '+productName+"--"+'" lab="'+productName+'" target="'+targetType+'" data-parterlink="" class="a-common pdbuypage-listitem-link">'+
                            '<span  class="pdbuypage-listitem-name">'+areaItem[country].localSiteName+'</span>'+
                            '</a>'
                }
                globalBuyListHtml+='<li class="pdbuypage-listitem pdbuypage-listitem-global">'+
                '<p class="pdbuypage-listitem-area"> '+area +'</p>'+
                '<div class="pdbuypage-listitem-country">'+
                  globalBuyCountry+
                '</div></li>';
              }
              
              // 国家 弹框 数据弹框 
              $(".pdbuypage-box").addClass("pdbuypage-box-global");
              $(".pdbuypage-title-productname").html(productName);
              $(".pdbuypage-title-productplane").html(tl_rb).css({"float":"left","margin-right":"10px"});
              $(".pdbuypage-title-tipinfo").html(tl_sc);
              $(".pdbuypage-listul").html(globalBuyListHtml);
              $(".pdbuypage-footinfo").hide();
              $("body").css("overflow-y","hidden");
              $("#pdbuypage").slideDown(300);
              $(".pdbuypage-closebtn").on("click",function(){
                $("#pdbuypage").slideUp(300,function(){
                  $("body").css("overflow-y","auto");
                  $(".pdbuypage-box").removeClass("pdbuypage-box-global");
                });
              })
              
            })//getJSON
          }//if
        }/*global-buy*/
      }/*buyBtnPage*/
  </script>


  
    <div class="content-v3">

  

    
    
    
    <div class="html-text-component parbase">



  <style type="text/css">
    .pop-video{cursor: pointer;display:none;}
.fancybox-close{top:0;right:0;}
.component-picture-video{position: relative;}
.mate20-frame-landscape > picture img.img-fluid:nth-of-type(1){z-index:1;}
.pop-video50 {
 position: absolute;
 top: 50%;
 left: 50%;
 transform: translate(-50%,-50%);
z-index:1;
}


ol.component-footnotes{padding-left:20px}

.mate20pro-hero-1{-webkit-mask-image: url(images/landings/mate/mate/mate2/intro-hero-1-mask.png);mask-image: url(images/landings/mate/mate/mate2/intro-hero-1-mask.png);}
.mate20pro-hero-2{-webkit-mask-image: url(images/landings/mate/mate/mate2/intro-hero-1-mask.png);mask-image: url(images/landings/mate/mate/mate2/intro-hero-2-mask.png);mask-image: url(images/landings/mate/mate/mate2/intro-hero-1-mask.png);mask-image: url(images/landings/mate/mate/mate2/intro-hero-2-mask.png);mask-image: url(images/landings/mate/mate/mate2/intro-hero-2-mask.png);}

/* ie11 Hack */
@media all and (-ms-high-contrast:none){*::-ms-backdrop, .component-tile .flex-lg-row{width:978px}} 
/* ie11 Hack End*/

/* ie10 Hack */
@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) { 
.component-tile .flex-lg-row{width:978px} 
}
/* ie10 Hack End*/


@media (width: 1024px){
.h1-lg {font-size: 2.5rem!important;}
.display-lg-1 {font-size: 4.5rem!important;}
.h2-lg {font-size: 2rem!important;}
.h3, h3 {font-size: 1.5rem;}
}
@media (width: 1366px){
.h1-lg {
    font-size: 2.6rem!important;
}}

.linkto{color: #6aa2da;}


@media (max-width:1610px){
.no-objectfit .component-background-image img{height:100%!important;width:auto!important;}
} 
/*programmed for midnight*/
.show-at-midnight{
  display:none;
}
.hide-before-midnight{
  display:none !important;
}
.hidden-at-the-moment{
  display:none;
}
input:focus{
  outline:none !important;
  border-color: inherit !important;
  -webkit-box-shadow: none !important;
  box-shadow: none !important;
}
#btn-reservar:hover{
background:#008c95;
color:white;
}
</style>

<div class="product-mate20pro">
  <div class="container pb-6 mate20pro-intro">
    <div class="text-center pt-6 pb-7 pb-sm-8" style="position:relative;z-index:4;
    padding-bottom: 20px !important;">
      <svg width="526" height="75" viewBox="0 0 526 75" xmlns="http://www.w3.org/2000/svg" class="img-fluid"><g fill="none" fill-rule="evenodd"><path d="M417 1.3c5 0 11.8-1 15.8 2.5 3.3 2.8 3.4 8.2 1.3 11.8-2.7 4.6-8.5 5.4-13.3 4.2V32h-3.9V1.3zM439 15l-.1-5.8h3.4l.4 4.5c1.9-3.1 4.5-5.8 8.5-4.6l-.6 3.4c-3.6-1-6 1.6-7.8 4.4v15H439V15zm17.2 16c-5.1-3-6-10.3-4.1-15.4 2-5.8 9-8.7 14.5-5.5 5.2 3 6.3 10.5 4.3 15.7a10.3 10.3 0 0 1-14.7 5.2zM75.5 13.5V1h6.3v31h-6.3V19.4H61.3V32H55V1h6.3v12.5h14.2zm35.5 5.3V1h6.3v15c0 5.1-.4 10.7-5 14-5.1 3.9-14.4 3.5-18.8-1.6-3.4-4-3-9.5-3-14.4V1h6.3v17c0 3.7 1 7.4 5 8.3 5.4 1.2 9.2-2.3 9.2-7.5zm72.7 3.5L190.6 1h6.5l-10.8 31h-5.2L174 11.7 167 32h-5.3L151 1h6.7l6.9 21.3 7-21.3h5.2l7 21.3zm24.7-3.6v7.7h17.2V32h-23.4V1H225v5.7h-16.6V13h11.4v5.7h-11.4zM233 32V1h6.2v31H233zm-89.2-6.5h-14.2l-.2.5-2.6 6h-6.5L134 1h5.5l.1.2L153.3 32h-6.6l-2.8-6.5zm215 3.9c4.3-4.1 9.2-8.1 12.4-13 2-3 3.5-8.2.3-10.8-3.5-2.9-8.3-.5-11 2.2l-1.4-3c6.1-6.6 19.4-4 18 6.5-1 7.2-8.5 12.9-13.4 17.6h14.7l-.4 3.3h-19v-2.8zm24.7-.7c-3-4.9-3-12-2-17.4 1-5.2 3.7-10.2 9.6-10.2 5.9 0 8.6 5 9.4 10 .8 5.6.8 12.7-2.3 17.6-3.3 5.2-11.5 5.3-14.7 0zM268.2 11.5c-.8-2-1.5-4-2-6 .5 8.8.1 17.8.1 26.7h-3.6V1h5.2l4.9 12.1c1.9 4.7 4.2 9.5 5.4 14.5 2.9-9 7.1-17.8 10.7-26.6h5v31.2h-3.8c0-9-.2-17.8.3-26.7-2.8 9.1-7.1 17.9-10.8 26.7h-3l-8.4-20.7zm45.6 20.7c-.2-.7-.3-1.8-.3-3.2-4.3 5.2-14.6 5-14.5-3.2 0-7.6 8.7-7.8 14.3-7 0-2.5-.1-5.2-2.5-6.5-2.8-1.5-6.8-.2-9.4 1l-.7-3c3.4-1.7 8.6-2.5 12.2-.9 3.6 1.7 4.2 5.8 4.2 9.3.1 4.5 0 9 .2 13.5h-3.5zm11.3-1.3c-2.3-2.4-1.6-7-1.6-10v-8.7h-3l.6-2.7 2.5-.4.3-5.4 3.4-.5V9h6.6l-.5 3h-6.1v13.2c.2 4.1 3.2 4.6 6.6 3.4l.7 2.8c-2.8 1.4-7.2 1.9-9.5-.6zm29.4-10.1h-15c.1 2.9.8 6.1 3.5 7.7 3 1.8 7.2.9 10.1-.6l1 2.9c-4.6 2.4-11.7 3-15.5-1-3.5-3.8-3.7-10.5-1.9-15 2-5 7.8-7.8 12.8-5.3 4.3 2 5 7 5 11.3zm75.2-5.5c2.7-2.5 2.7-8.2-1-10-2.3-1.1-5.3-.8-8-.8v12.2c3 .6 6.6.8 9-1.4zm36.6 11.8c2.3-3.3 2.1-9 .2-12.3-1.8-3.2-6.7-4-9.3-1.2-2.7 3-2.7 8.9-1 12.3 1.8 3.7 7.6 4.9 10.1 1.2zM136.8 8.9l-4.5 10.3-.3.8h9.5l-.3-.8L136.9 9zm173.6 19.6a8.6 8.6 0 0 0 3-2.3v-5c-3.2-.3-8.9-1-10.3 2.8-1.8 5 3.7 6.4 7.3 4.5zM350.6 18c-.2-3.2-1.6-6.4-5.2-6.4s-5.2 3.2-5.7 6.4h11zm45 8.2a27 27 0 0 0 .4-17.8c-.8-2.4-2.5-4.3-5.2-4.1-1.7 0-3 1-3.8 2.5-2.7 4.4-2.4 11.7-1.4 16.5.4 2.4 1.3 5.1 3.8 6 2.7.8 5.1-.7 6.2-3z" fill="#1E1C1C"/><path d="M507 73.5c-8.7 0-16.5-6.4-18.2-15a18.7 18.7 0 0 1 8.9-19.5c6.5-3.8 15-3.2 21 1.6 6 4.9 8.4 13.3 5.7 20.7A18.7 18.7 0 0 1 507 73.5zm10.8-21a3.4 3.4 0 0 0-3.3 3.2c-3.6 4-2.4-4.4-.3-1.8l.3-.9c-1.7-1-5.5.4-4.9 2.8-.8 1-1.6.7-1.5-.4 0-.8.5-1.8.7-2.6h-2.3l-.7 2.9c-.9.5-4.3 2-4.3 0 1 .2 2.6 0 3.3-.9 1.5-2.2-2.4-2.3-3.6-1.8-1.6.7-2.9 3-1.1 4.2 1.5 1.2 4.1.3 5.6-.6.4 2 3.3.9 4.2 0 1.2 1.7 3.6 1.1 4.8-.1.6 1.4 2.7 1.4 3.7.4.8 1.3 2.6.6 3.5-.1l-.2-.8c-1.9 1.9-.5-2.8-.3-3.2h-2.1l-.1.3s-.3-.5-1.4-.5zm-9.7-2.4c1.6 0 1.6 1.8 0 1.8s-1.5-1.8 0-1.8zm-7-3.4c-3.6-.1-4.5 4.8-4.7 5.7-1.1 0-1.7-.3-1.7-.3l-.3.7c.7.3 1.8.4 1.8.4-.2 1.4-1.3 3.9-1.3 3.9-1.1-.3-5.8-.4-3.8 2 1.2 1.3 4 .6 5.1-.5 8.4 3 17.7 2.7 26.1.1l-.2-.7a39 39 0 0 1-10.4 1.5c-5 .2-10-.2-14.6-1.9a21 21 0 0 0 1.6-4.4c1.2-.3 2.3-1 3.1-1.8 1.4-1.4 2-4.6-.8-4.7zm-8.7 11c.7 0 1.4.1 2 .4-.4.3-1.2.7-1.7.7-.7 0-1.4-1-.3-1.1zm25.8-4.3c1.3 0 .3 3-.6 3.1-1.4.1-.6-3 .6-3zm-15.2 0c1.4 0-.2 1.7-1.3 1.6 0 0 .3-1.7 1.3-1.6zm-1.8-5.7c1.8 0 .3 2.8-.3 3.4-.5.5-1.3 1-2 1.2 0 0 .7-4.6 2.3-4.6z" fill="#E20714"/><text font-size="11" font-weight="bold" letter-spacing="1" fill="#000"><tspan x="471" y="60" text-anchor="end">CO-ENGINEERED WITH</tspan></text></g></svg>
    </div>
    <script>
      var getRemainingTime = function getRemainingTime(deadline) {
        var now = new Date(),
        remainTime = (new Date(deadline) - now + 1000) / 1000,
        remainSeconds = ('0' + Math.floor(remainTime % 60)).slice(-2),
        remainMinutes = ('0' + Math.floor(remainTime / 60 % 60)).slice(-2),
        remainHours = ('0' + Math.floor(remainTime / 3600 % 24)).slice(-2),
        remainDays = ('0' + Math.floor(remainTime / (3600 * 24))).slice(-2);

        if(remainTime > 1) {
          $("#first-row-of-all").removeClass("hidden-at-the-moment");

          var url_direction="{{asset('images/landings/mate/mate/extra.png')}}";

          $(".colum1").append('<img style="z-index: 1;right:0;position: absolute;border-radius:15px;width: 18%;top: 30%;" src="'+url_direction+'">');
        }

        return {
          remainSeconds: remainSeconds,
          remainMinutes: remainMinutes,
          remainHours: remainHours,
          remainDays: remainDays,
          remainTime: remainTime };

      };
      var t_initial = getRemainingTime('Nov 13 2018 00:00:00 GMT-0500');  

    </script>
    <div id="first-row-of-all" class="row hidden-at-the-moment hide-at-midnight">
      <div class="col-lg-6 col-md-8 col-sm-10 col-xs-12 mx-auto">
        <p class="Muy-pronto-el-Huawe">¡Muy pronto el <span class="Muy-pronto-el-Huawe .text-style-1">Huawei Mate 20PRO</span> podrá estar en tus manos!</p>
      </div>
    </div>
    <div class="row hide-at-midnight">
      <div class="col-lg-4 col-md-5 col-sm-7 col-xs-9 mx-auto">
          <div id="clock" class="row">
            

          </div>
          <script>
            
          var countdown = function countdown(deadline, elem, finalMessage) {
            var el = document.getElementById(elem);

            var timerUpdate = setInterval(function () {
              var t = getRemainingTime(deadline);
              el.innerHTML = '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-number"><div class="clock-div">'+t.remainDays + '</div></div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-number"><div class="clock-div">'+t.remainHours+'</div></div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-number"><div class="clock-div">' + t.remainMinutes + '</div></div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-number"><div class="clock-div">'+t.remainSeconds+'</div></div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-text">DIAS</div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-text">HORAS</div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-text">MINUTOS</div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 clock-text">SEGUNDOS</div>';

              if (t.remainTime <= 1) {
                clearInterval(timerUpdate);
                //el.innerHTML = finalMessage;
                $(".hide-at-midnight").hide();
                $(".show-at-midnight").show();
                $("#venta").val("si");
                $(".hide-before-midnight").removeClass("hide-before-midnight");

                $(".colum1").removeClass("col-lg-6");
                $(".colum1").removeClass("col-md-8");
                $(".colum1").removeClass("col-sm-10");
                $(".colum1").removeClass("col-xs-12");

                $(".colum1").addClass("col-lg-5");
                $(".colum1").addClass("col-md-12");
                $(".colum1").addClass("col-sm-12");
                $(".colum1").addClass("col-xs-12");

              }

            }, 1000);
          };

          countdown('Nov 13 2018 00:00:00 GMT-0500', 'clock', '');
          </script>
      </div>
    </div>
    <div class="row pt-xs-5 pt-sm-8 pt-md-5 trio-equipos">
      <div class="col-9 col-lg-9 mx-auto">
        <div class="component component-image-composition" style="text-align:center">
          <div class="component-image-composition-follower" data-parallax='{"y": 100, "distance": 1600, "smoothness": 10}'>
            <img class="retina" src="{{asset('images/landings/mate/mate/1.png')}}" alt=""/>
          </div>
          <div class="component-image-composition-follower" data-parallax='{"y": -200, "distance": 1600, "smoothness": 10}'>
            <img class="retina" src="{{asset('images/landings/mate/mate/2.png')}}" alt=""/>
          </div>
          <div class="component-image-composition-follower" data-parallax='{"y": 100, "distance": 1600, "smoothness": 10}'>
            <img class="retina" src="{{asset('images/landings/mate/mate/3.png')}}" alt=""/>
          </div>
          <div class="component-image-composition-master" style="visibility:hidden" data-parallax='{"y": 100, "distance": 1600, "smoothness": 10}'>
            <img src="{{asset('images/landings/mate/mate/mate_c.png')}}" alt=""/>
          </div>
          <div class="row">
            <div class="col-lg-9 mx-auto">
              <p class="legal">(*) Imágenes referenciales, se tiene disponible en color Negro.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
      <div class="col-11 mx-auto mx-lg-0 col-lg-12 animation-block pt-6 pb-7 d-flex flex-column align-self-center text-center text-lg-left" style="font-family: Manrope-huawei;padding: 20px !important;text-align: center !important;">
        <h3 class="h1 h2-lg h6-xs mb-4 subtitulo1">Huella digital en la pantalla</h3>
        <p class="h3 mb-0 descripcion1" style="    max-width: 937px;
      margin: 0 auto;">Con el diseño ergonómico y la tecnología de detección de presión dinámica, solo tiene que mover su dedo y tocar la pantalla, y su teléfono se desbloqueará de forma rápida y segura.</p>
      </div>
  </div>
  <div class="overflow-hidden" id="mate20pro-bio-fingerprint">
    <div class="component component-background component2">
      <div class="container">
        <div id="mate20pro-bio-fingerprint-container"></div>
      </div>
      <picture class="component-background-image" data-parallax='{"y": -100, "rotateZ": 5, "distance": 1200, "smoothness": 10}'>
        <source media="(max-width: 545px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-fingerprint-xs.jpg')}}">
        <source media="(min-width: 546px) and (max-width: 1680px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-fingerprint-md@2x.jpg 1.5x')}}">
        <source media="(min-width: 1681px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-fingerprint-xlg@2x.jpg 1.5x')}}">
        <source media="(min-width: 1681px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-fingerprint-xlg.jpg')}}">
        <img src="{{asset('images/landings/mate/mate/mate3/bio-fingerprint-xlg.jpg')}}" alt=""/>
      </picture>
    </div>
  </div>
  <div class="container pb-6 mate20pro-intro">
    <div class="row" style="margin-bottom: 50px;">
      <div class="col-11 mx-auto col-sm-12 col-lg-9">
        <h1 class="display-sm-2 display-md-1 pt-4 text-center titulo1">
          <div style="color: #d9d9d9;">Bienvenido a una</div>
          <div style="background: -webkit-linear-gradient(267deg, #00b7b8, #00629b);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">inteligencia superior </div> 
        </h1>
        <div class="animation-block pt-6 pb-7 text-center">
          <p class="animate-1 h3 h2-sm descripcion1" style="color:#313233">Imaginación humana sin límites, la inspiración del nuevo HUAWEI Mate 20 Pro. Los avances tecnológicos desdibujarán los límites entre lo que puede soñar y lo que puede hacer.</p>
        </div>
      </div>
    </div>
    <div class="row" id="mate20pro-intro-video" style="
      margin-bottom: 50px;
  ">
      <div class="mx-auto col-sm-10 col-md-12">
        <div class="component-image-composition mate20-frame-landscape">
          <video playsinline muted="muted" loop="loop" class="videoplays component-image-composition-follower mate20-video-play-stop video_2">
            <source type="video/mp4" src="{{asset('images/landings/mate/mate/mate3/intro-video.mp4')}}">
          </video>
          <img class="component-image-composition-follower videoplaysfallback" src="{{asset('images/landings/mate/mate/mate3/intro-video.jpg')}}" alt="">
          <picture>
            <source media="(min-width: 546px)" srcset="{{asset('images/landings/mate/mate/mate3/frame-landscape@2x.png 1.5x')}}">
            <img src="{{asset('images/landings/mate/mate/mate3/frame-landscape.png')}}" class="img-fluid" alt=""/>
          </picture>
          <a class="component-image-composition-follower d-flex justify-content-center align-items-center" style="cursor:auto">
              <svg width="60" height="60" style="background-color: #000000;opacity: 0.7;border-radius: 50%;" xmlns="http://www.w3.org/2000/svg"  style="cursor:pointer;" onclick="video_accion(1)" class="pop-video play_video" href="{{asset('images/landings/mate/mate/mate3/teaser_video_pad_mob.mp4')}}" data-video-image="{{asset('images/landings/mate/mate/mate3/video-poster.jpg')}}" data-t-ignore-link="true" data-video-id="videoPlayer" data-t-label="video1" data-video-ratio="16:9" data-video-name="video1"><g fill="none" fill-rule="evenodd"><circle stroke="#FFF" stroke-width="2" cx="30" cy="30" r="29"/><path fill="#FFF" d="M26 23v15.8l11.8-8z"/></g></svg>
          </a>
        </div>
      </div>
    </div>
  </div>
  <br><br>
  <div class="text-light mb-6 pt-6" style="background:#000">
    <div class="component component-head-section pt-6 pt-xlg-8 pb-xlg-6" style="padding-top: 5% !important;">
      <div class="container animation-block">
        <div class="row d-md-flex align-items-stretch">
          <div class="mx-auto col-lg-12 mx-lg-0">
            <h3 class="animate-1 h1 h2-lg mb-3 titulo1" style="text-align:center;max-width:804px;margin: 0 auto;font-weight: 600;background: -webkit-linear-gradient(265deg, #00b7b8, #00629b);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">Rendimiento</h3>
          </div>
          <div class="mx-auto col-lg-12 mx-lg-0">
            <p class="animate-3 h3 mb-0 titulo2" style="color:#4a4a4a;text-align:center;margin: 0 auto;font-weight: 600;">El más poderoso e inteligente, sin duda</p>
          </div>
        </div>
      </div>
    </div>

    <div class="component component-tile mt-6 mt-sm-0 pb-6 pt-6">
      <div class="container d-lg-flex">
        <div class="row d-flex flex-column flex-lg-row flex-column-reverse flex-lg-row-reverse"  style="display: block !important;">
          <div class="component-tile-media overflow-hidden col-lg-6" style="padding: 0 !important;">
                    
            <picture>  
              <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate2/performance-npu-xs.jpg')}}">
              <img src="{{asset('images/landings/mate/mate/mate3@2x.png')}}" alt="" onerror="imgErrorUrl(this)">
            </picture>

            <picture>
              <img src="{{asset('images/landings/mate/mate/performance-npu-overlay.svg')}}" alt="" id="performance-npu-overlay" onerror="imgErrorUrl(this)">
            </picture>
         
          </div>
          <div style="padding: 5%;" class="mx-auto mx-lg-0 col-lg-6 offset-lg-7 align-self-lg-center animation-block">
            <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Primer conjunto de chips con IA móvil de 7nm del mundo</h3>
            <p class="animate-3 h3 mb-0 descripcion1">La tecnología de procesos de 7nm de Kirin 980 líder en la industria genera mejores resultados de incremento de velocidad y eficiencia energética.
            <br><br>Al adoptar la arquitectura multinúcleo avanzada y flexible de CPU y GPU, las tareas y la velocidad de funcionamiento del dispositivo han aumentado de forma considerable. Una de las NPU DOBLE ofrece una increíble informática con IA y la otra se centra en tareas específicas para generar grandes eficiencias y una mejor experiencia de usuario.</p>
          </div>
        </div>
      </div>
    </div>

    <div class="container pt-6" id="mate20-benchmark" style="
        padding-top: 0 !important;
    ">
      <div class="mate20-benchmark-container">
        
        <div class="row">
          <div class="col-11 col-lg-6 mx-auto mx-lg-0 mt-6 mb-6 mate20-benchmark">
            <svg width="390" height="120" viewBox="0 0 390 120" xmlns="http://www.w3.org/2000/svg" class="img-fluid">
              <defs>
                <linearGradient x1="0%" y1="0%" x2="100%" y2="0%" id="benchmark-red-vert">
                  <stop stop-color="#00E2FF" offset="0%"/>
                  <stop stop-color="#FF006C" offset="100%"/>
                </linearGradient>
                <linearGradient x1="0%" y1="0%" x2="100%" y2="0" id="benchmark-blue-vert">
                  <stop stop-color="#00E2FF" offset="0%"/>
                  <stop stop-color="#40A9DA" offset="100%"/>
                </linearGradient>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <rect fill="url(#benchmark-red-vert)" fill-rule="nonzero" y="28" width="390" height="32" rx="2" class="mate20-benchmark-bar"/>
                <rect fill="url(#benchmark-blue-vert)" fill-rule="nonzero" y="88" width="119.6" height="32" rx="2" class="mate20-benchmark-bar"/>
                <rect fill="url(#benchmark-blue-vert)" fill-rule="nonzero" y="28" width="119.6" height="32" rx="2" class="mate20-benchmark-bar"/>
                <path d="M14.5 0v120M.5 0v120m29-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120" stroke="#FFF" opacity=".1"/>
              </g>
            </svg>
            <div class="d-sm-flex align-items-center mb-2">
              <div class="display-1 h1-sm display-lg-2 font-weight-light pr-1">
                <span class="mate20-benchmark-number" data-number="75">?</span>
                <span class="d-sm-none h4">%</span>
              </div>
              <strong class="h4 h5-sm h4-lg d-block">
                <span class="d-none d-sm-inline">%</span>
                CPU Performance <span class="d-none d-sm-block"></span>Upgrade<sup><a href="#footnote2">2</a></sup>          </strong>
            </div>
          </div>
          <div class="col-11 col-lg-6 pl-lg-7 mx-auto mx-lg-0 mt-6 mb-6 mate20-benchmark">
            <svg width="390" height="120" viewBox="0 0 390 120" xmlns="http://www.w3.org/2000/svg" class="img-fluid">
              <defs>
                <linearGradient x1="0%" y1="0%" x2="0%" y2="100%" id="benchmark-red-hor">
                  <stop stop-color="#FF006C" offset="0%"/>
                  <stop stop-color="#00E2FF" offset="100%"/>
                </linearGradient>
                <linearGradient x1="0%" y1="0%" x2="0%" y2="100%" id="benchmark-blue-hor">
                  <stop stop-color="#6984C2" offset="0%"/>
                  <stop stop-color="#00E2FF" offset="100%"/>
                </linearGradient>
              </defs>
              <g fill="none" fill-rule="evenodd">
                <path fill="#000" d="M0 0h390v120H0z"/>
                <path d="M.5 110.5h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390M.5.5h390" stroke="#FFF" opacity=".1" stroke-linecap="square"/>
                <path fill="url(#benchmark-red-hor)" fill-rule="nonzero" opacity=".4" d="M327.5 18.4L322 17l-16 44-20-13.4-8.8 16.4-20.9-13.5-5 3.5-14.6-24-31.8 28.2-5.7-3.3-8.8 9.8-12.1-23-8.4 24.5-11.5-9.4-28.2 4.7-23.6-26.6-7.3 22.6-6.2-1.4-5.1 1.4-15.8-40.7-9.6 46-19.2-31.4-22.3 27-6.6-8.8-7.2 13.3L0 53v67h390V44.5l-11.2 4.8-7.8-12.1-12 17.6L336.6 0z" class="mate20-benchmark-graph"/>
                <path fill="url(#benchmark-blue-hor)" fill-rule="nonzero" d="M327.5 76.8l-5.5-.5L306 95l-20-5.7-8.8 7-20.9-5.8-5 1.5-14.6-10.3-31.8 12-5.7-1.4-8.8 4.2-12.1-9.8-8.4 10.4-11.5-4-28.2 2-23.6-11.3-7.3 9.7-6.2-.7-5.1.6-15.8-17.3-9.6 19.6-19.2-13.4L21 93.8l-6.6-3.7-7.2 5.6L0 91.5V120h390V88l-11.2 2-7.8-5.2-12 7.5L336.6 69z" class="mate20-benchmark-graph"/>
              </g>
            </svg>
            <div class="d-sm-flex align-items-center mb-2">
              <div class="display-1 h1-sm display-lg-2 font-weight-light pr-1">
                <span class="mate20-benchmark-number" data-number="58">?</span>
                <span class="d-sm-none h4">%</span>
              </div>
              <strong class="h4 h5-sm h4-lg d-block">
                <span class="d-none d-sm-inline">%</span>
                CPU Power <span class="d-none d-sm-block"></span>Efficiency Upgrade<sup><a href="#footnote2">2</a></sup>          </strong>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-11 col-lg-6 mx-auto mx-lg-0 mt-6 mate20-benchmark">
            <svg width="390" height="120" viewBox="0 0 390 120" xmlns="http://www.w3.org/2000/svg" class="img-fluid">
              <g fill="none" fill-rule="evenodd">
                <rect fill="url(#benchmark-red-vert)" fill-rule="nonzero" y="28" width="390" height="32" rx="2" class="mate20-benchmark-bar"/>
                <rect fill="url(#benchmark-blue-vert)" fill-rule="nonzero" y="88" width="210.6" height="32" rx="2" class="mate20-benchmark-bar"/>
                <rect fill="url(#benchmark-blue-vert)" fill-rule="nonzero" y="28" width="210.6" height="32" rx="2" class="mate20-benchmark-bar"/>
                <path d="M14.5 0v120M.5 0v120m29-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120m15-120v120" stroke="#FFF" opacity=".1"/>
              </g>
            </svg>
            <div class="d-sm-flex align-items-center mb-2">
              <div class="display-1 h1-sm display-lg-2 font-weight-light pr-1">
                <span class="mate20-benchmark-number" data-number="46">?</span>
                <span class="d-sm-none h4">%</span>
              </div>
              <strong class="h4 h5-sm h4-lg d-block">
                <span class="d-none d-sm-inline">%</span>
                GPU Performance <span class="d-none d-sm-block"></span>Upgrade<sup><a href="#footnote2">2</a></sup>          </strong>
            </div>
          </div>
          <div class="col-11 col-lg-6 pl-lg-7 mx-auto mx-lg-0 mt-6 mate20-benchmark">
            <svg width="390" height="120" viewBox="0 0 390 120" xmlns="http://www.w3.org/2000/svg" class="img-fluid">
              <g fill="none" fill-rule="evenodd">
                <path fill="#000" d="M0 0h390v120H0z"/>
                <path d="M.5 110.5h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390m-390-10h390M.5.5h390" stroke="#FFF" opacity=".1" stroke-linecap="square"/>
                <path fill="url(#benchmark-red-hor)" fill-rule="nonzero" opacity=".4" d="M224 .2l-7.6 26.2-5.3-.9-3.3-.1-7 .2-13.5 2h-3.1l-7.2-6.4-7.8 5.3h-10.3l-9.3 2h-1.7l-12.3-3-9.7 1.7-7.7.4-4.2.9-5.3-1.8-4 .8-3.6 1-1.8-1-8.8-3.1-6.8-2.1-3.7-3.4-8.2-12.3L66.6 2l-3.9 7.8-3.9 7.4-5-.9L46 15l-7.8.1-12 2.2-6.6 4.2-8.5-7.6-3.2 8.3L0 15.7V120h390V31.5l-3.4-17L382 4l-7.4 16.5-6.8-2.5-6.7 7.4-13.2-2-6.4 3.5-7.3-16.5-9.6 12.9-10.2 2.3-4.7.9h-11.4l-5.2.9-10.4-.8-3.6 1-9.6-1-10-.1-9.8-1-17 1L225.2 0z" class="mate20-benchmark-graph"/>
                <path fill="url(#benchmark-blue-hor)" fill-rule="nonzero" d="M224 106.8l-7.6 2.9H211l-3.3-.1h-7l-13.5.2h-3.1l-7.2-.7-7.8.6h-10.3l-9.3.2h-1.7l-12.3-.3-9.7.2h-7.7l-4.2.1-5.3-.2-4 .1-3.6.1h-1.8l-8.8-.4-6.8-.2-3.7-.4-8.2-1.4-5.2-.5-3.9.9-3.9.8-5-.1-7.9-.2H38l-12 .3-6.6.5-8.5-.9-3.2 1-7.8-.8V120h390v-9.7l-3.4-2-4.6-1-7.4 1.8-6.8-.3-6.7.8-13.2-.2-6.4.4-7.3-1.9-9.6 1.5-10.2.2-4.7.1h-11.4l-5.2.1h-33.6l-9.8-.2-17 .1-7.6-2.9z" class="mate20-benchmark-graph"/>
              </g>
            </svg>
            <div class="d-sm-flex align-items-center mb-2">
              <div class="display-1 h1-sm display-lg-2 font-weight-light pr-1">
                <span class="mate20-benchmark-number" data-number="178">?</span>
                <span class="d-sm-none h4"> %</span>
              </div>
              <strong class="h4 h5-sm h4-lg d-block">
                <span class="d-none d-sm-inline">%</span>
                GPU Power <span class="d-none d-sm-block"></span>Efficiency Upgrade<sup><a href="#footnote2">2</a></sup>          </strong>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-8 col-lg-6 mx-auto mx-lg-0 pb-8 pb-sm-6 pb-lg-8">
          <div class="component-carousel-dots"></div>
        </div>
      </div>
    </div>

    <div class="d-none d-sm-block">
      <div class="pt-8"></div>
    </div>
  </div>

</div> 

<!--ppt5-->
<div class="position-relative" style="z-index:5">
  <div class="component component-head-feature pt-6 mb-6" style="padding-top: 0 !important;">
    <div class="container animation-block">
      <div class="row d-md-flex align-items-stretch">
        <div class="col-11 mx-auto col-sm-12 col-lg-9">
          <h1 class="display-sm-2 display-md-1 pt-4 text-center">
            <div style="background: -webkit-linear-gradient(274deg, #2e30a7, #3c59d9 53%, #65c9fa);-webkit-background-clip: text;-webkit-text-fill-color: transparent;font-family: Manrope-huawei;" class="titulo1">Triple cámara leica</div>
            <div style="color: #d9d9d9;font-weight: 300;" class="titulo2">Libere su creatividad</div> 
            <div class="La-asombrosa-batera-Copy descripcion1">La asombrosa batería y la carga de reserva inalámbrica del HUAWEI Mate 20 Pro pueden rescatar algunos dispositivos que están sin batería. En una salida nocturna, las personas recurrirán a su teléfono.</div>
          </h1>
        </div>
        <!--div class="col-11 mx-auto col-lg-3 mx-lg-0">
          <h3 class="animate-1 h1 h2-lg mb-3">New Leica Triple Camera</h3>
        </div>
        <div class="col-11 mx-auto col-lg-9 mx-lg-0">
          <p class="animate-3 h3 mb-0">The new Leica Triple Camera powered by AI reveals life’s drama, texture, colour and beauty in every photograph that will take your breath away.</p>
        </div-->
      </div>
    </div>
  </div>
  <div class="component component-background-boxed mt-6 pt-6  fullHeight"
  >
    <picture class="component-background-image parallax-true">
    <source media="(max-width: 545px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-leica-xs.jpg')}}">    
    <source media="(min-width: 546px) and (max-width: 1259px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-leica@2x.jpg 1.5x')}}">
    <source media="(min-width: 1260px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-leica-xlg@2x.jpg 1.5x')}}">    <source media="(min-width: 1260px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-leica-xlg.jpg')}}">
    <img src="{{asset('images/landings/mate/mate/mate3/photo-leica-xlg.jpg')}}" alt="" data-parallax='{"y": 100, "distance": 1200, "smoothness": 10}'/>
  </picture>
  </div>
  <div class="container pt-6 pb-6 animation-block">
    <div class="row">
      <div class="col-11 mx-auto col-lg-12 mx-lg-0">
        <p class="animate-1 h3 mb-0 descripcion1" style="font-family:Manrope-huawei;max-width:774px;text-align: center;margin: 0 auto;">El lente RGB principal de 40 MP, diseñado para diferentes escenarios, captura excelentes detalles en fotos diarias, mientras que el lente telefotográfico de 8 MP se centra en fotografías de escenas distantes, y el nuevo lente con ángulo superamplio de 20 MP Leica es ideal para tomar fotografías de paisajes y en primer plano.</p>
      </div>
    </div>
  </div>
  <div class="component component-tile pt-6 mb-6 mb-sm-0 pb-sm-6" style="padding: 0 !important;">
    
    <div class="container d-lg-flex">
      <div class="row d-flex flex-column flex-lg-row auto-mobile">
        <div class="mx-auto mx-lg-0 col-lg-6 offset-lg-7 align-self-lg-center animation-block centrado-responsive animation-x" style="font-family: Manrope-huawei;">
          <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Acérquese</h3>
          <p class="animate-3 h3 mb-0 descripcion1">Capture detalles y sorpresas que resultaban imposibles. El lente con ángulo superamplio Leica toma fotografías en primer plano de 2.5 cm. Descubra el mundo desde una nueva perspectiva.</p>
        </div>
        <div class="mt-6 col-lg-6 overflow-hidden parallax-true">
          <div class="component-parallax-container hidden-sm hidden-xs" data-parallax='{"y": 100, "distance": 1200, "smoothness": 10}'>
            <picture>
              <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate6@2x.png')}}">
              <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate6@2x.png')}}">    
              <img class="img-responsive" style="border-radius: 10px;" src="{{asset('images/landings/mate/mate/mate6@2x.png')}}" alt="acerquese"/>
            </picture>
          </div>  
          <img class="img-responsive hidden-lg hidden-md" style="border-radius: 10px;" src="{{asset('images/landings/mate/mate/mate6@2x.png')}}" alt="acerquese"/>     
        </div>
      </div>
    </div>
  </div>
  <div class="component component-tile pt-6 pb-lg-6" style="padding: 0 !important;">
    <div class="container d-lg-flex">
      <div class="row d-flex flex-column flex-lg-row auto-mobile">
        <div class="mx-auto mx-lg-0 col-sm-12 col-md-12 hidden-md hidden-lg offset-lg-7 align-self-lg-center animation-block centrado-responsive animation-x" style="font-family: Manrope-huawei;">
          <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Capture la noche</h3>
          <p class="animate-3 h3 mb-0 descripcion1">Con la avanzada estabilización de imagen por IA HUAWEI, el modo nocturno de HUAWEI Mate 20 Pro le permitirá tomar increíbles fotografías a mano, sin efecto borroso y con poca luz. El modo nocturno también puede equilibrar escenas de contraste alto para lograr increíbles imágenes en cualquier escenario.</p>
        </div>
        <div class="mt-6 col-lg-6 col-md-6 col-xs-12 col-sm-12 overflow-hidden parallax-true">
          <div class="component-parallax-container hidden-sm hidden-xs" data-parallax='{"y": 100, "distance": 1200, "smoothness": 10}'>
            <picture>
              <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate7@2x.png')}}">
              <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate7@2x.png')}}">    
                <img class="img-responsive" style="border-radius: 10px;" src="{{asset('images/landings/mate/mate/mate7@2x.png')}}" alt="Natural Masterpiece"/>
            </picture>

          </div>    
          <img class="img-responsive hidden-lg hidden-md" style="border-radius: 10px;" src="{{asset('images/landings/mate/mate/mate7@2x.png')}}" alt="Natural Masterpiece"/>    
        </div>
        <div class="mx-auto mx-lg-0 col-lg-6 col-md-6 hidden-sm hidden-xs offset-lg-7 align-self-lg-center animation-block centrado-responsive animation2" style="font-family: Manrope-huawei;">
          <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Capture la noche</h3>
          <p class="animate-3 h3 mb-0 descripcion1">Con la avanzada estabilización de imagen por IA HUAWEI, el modo nocturno de HUAWEI Mate 20 Pro le permitirá tomar increíbles fotografías a mano, sin efecto borroso y con poca luz. El modo nocturno también puede equilibrar escenas de contraste alto para lograr increíbles imágenes en cualquier escenario.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-light mb-6 pt-6 pb-6">
<div class="component component-head-section pt-6 pt-xlg-8 pb-xlg-6">
  <div class="container animation-block animation2">
    <div class="row d-md-flex align-items-stretch">
      <div class="mx-auto col-lg-12 mx-lg-0">
        <h3 class="animate-1 h1 h2-lg mb-3 titulo1" style="text-align:center;max-width:804px;margin: 0 auto;font-weight: 600;background: -webkit-linear-gradient(265deg, #00b7b8, #00629b);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">Cinemato­grafía con IA</h3>
      </div>
      <div class="mx-auto col-lg-12 mx-lg-0">
        <p class="animate-3 h3 mb-0 titulo2" style="color:#4a4a4a;text-align:center;margin: 0 auto;font-weight: 600;
color: #d9d9d9;">Fotografíe como un profesional</p>
      </div>
    </div>
  </div>
</div>
<div id="mate20-photo-filmmaker" class="pt-6">
  <div class="position-relative">
    <div class="container">
      <div class="row">
        <div class="col-11 mx-auto col-xlg-12 mx-xlg-0">
          <div class="component-image-composition mate20-frame-landscape">
            <div class="component-image-composition-follower">
              <div class="component-carousel-media">
                <div>
                  <picture>
                    <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-color@2x.jpg 1.5x')}}">
                    <img src="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-color.jpg')}}" alt=""/>
                  </picture>
                </div>
                          <div>
                  <picture>
                    <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-editor@2x.jpg 1.5x')}}">
                    <img src="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-editor.jpg')}}" alt=""/>
                  </picture>
                </div>
                          <div>
                  <picture>
                    <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-hollywood@2x.jpg 1.5x')}}">
                    <img src="{{asset('images/landings/mate/mate/mate3/photo-filmmaker-hollywood.jpg')}}" alt=""/>
                  </picture>
                </div>
              </div>
            </div>
            <picture>
              <source media="(min-width: 546px)" srcset="{{asset('images/landings/mate/mate/mate3/frame-landscape@2x.png 1.5x')}}">
              <img src="{{asset('images/landings/mate/mate/mate3/frame-landscape.png')}}" class="img-fluid" alt=""/>
            </picture>
            <svg width="60" height="60" xmlns="http://www.w3.org/2000/svg"  style="cursor:pointer;" onclick="video_accion(2)" class="pop-video pop-video50 play_video slick_video" href="{{asset('images/landings/mate/mate/mate3/teaser_video_pad_mob.mp4')}}" data-video-image="{{asset('images/landings/mate/mate/mate3/video-poster.jpg')}}" data-t-ignore-link="true" data-video-id="videoPlayer" data-t-label="video3" data-video-ratio="16:9" data-video-name="video3"><g fill="none" fill-rule="evenodd"><circle stroke="#FFF" stroke-width="2" cx="30" cy="30" r="29"/><path fill="#FFF" d="M26 23v15.8l11.8-8z"/></g></svg>
          </div>
        </div>
      </div>
    </div>
    <div class="component-carousel-arrows"></div>
  </div>
  <div class="container pt-6">
    <div class="row">
      <div class="col-11 mx-auto col-xlg-12 mx-xlg-0 pb-6">
        <div class="component-carousel-content">
          <div>            
            <div class="descripcion-slider subtitulo1">
              Capture la noche
            </div>
            <div class="subtitulo-slider descripcion1">En las películas, el color establece una conexión emocional con el público; ahora usted puede ajustar una gama de filtros: natural, vintage, fondo difuminado y suspenso en tiempo real. La función Color de retrato con IA detecta personas y sombrea el fondo en color gris para grabar películas con un toque artístico.
            </div>
          </div>
                    <div>     
            <div class="descripcion-slider subtitulo1">Corte del director</div>
            <div class="subtitulo-slider descripcion1">El editor de videos con IA puede identificar rostros y crear los momentos más destacados del video para cada persona, lo que le ahorra tiempo y esfuerzo de edición para compartir con sus seres queridos los mejores momentos.</div>
          </div>
                    <div>
            
            <div class="descripcion-slider subtitulo1">Modo cine con IA</div>
            <div class="subtitulo-slider descripcion1">Para que sus videos grabados con el teléfono se parezcan más a una película, HUAWEI Mate 20 Pro ofrece la relación de película clásica 21 : 9 y opción HDR para crear videos envolventes con mejor claridad.</div>
          </div>
        </div>
      </div>
    </div>
    <div class="component-carousel-dots"></div>
  </div>
</div>
  </div>
</div>
<!--ppt6-->
<div class="product-mate20pro">
  <div class="container">  
    <div class="row">
      <div class="col-11 mx-auto col-sm-12 col-lg-10">
        <h1 class="display-sm-2 display-md-1 pt-4 text-center">
          <div class="titulo1" style="background: -webkit-linear-gradient(274deg, #2e30a7, #3c59d9 53%, #65c9fa);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">Energía</div>
          <div class="titulo2" style="color: #d9d9d9;">Más duradera, más segura, más rápida</div> 
        </h1>
      </div>
    </div>
      <div  style="margin-top:50px; border-radius: 50px;background-color: #f5f3f4;">
        <h1 class="display-sm-2 display-md-1 pt-4 text-center enorme-h1">
          <div class="Enorme-capacidad subtitulo1">Enorme capacidad</div>
          <div class="La-energa-duradera descripcion1">La energía duradera es siempre el símbolo de la serie Mate. Una batería más grande de 4,200 mAh4 con administración inteligente de la energía con IA impulsa su trabajo diario y las necesidades de entretenimiento.</div> 
        </h1>
        <div class="component-image-composition" id="mate20proBatteryTrigger">

          <div class="component-picture">
              <picture>
              <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate3/power-capacity-xs.jpg')}}">
              <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/power-capacity@2x.jpg 1.5x')}}">        
              <img src="{{asset('images/landings/mate/mate/mate3/power-capacity.jpg')}}" alt="Massive Capacity"/>
            </picture>
          </div>    <div class="component-image-composition-slave">
            <div class="text-light text-center text-md-right">
              <span class="mate20-battery-capacity-number font-weight-bold">0</span>
              <div class="h4 py-1">mAh</div>
            </div>
          </div>
        </div>
      </div>
  </div>
</div>

<div class="component container mt-8 pb-6">
  <div class="row d-flex">
    <div class="col-11 mx-auto mx-lg-0 col-lg-6 align-self-center pb-7" style="font-family: Manrope-huawei;">
      <div class="component-tile-caption">
        <h3 class="animate-1 h2 h6-xs pb-4 pt-6 subtitulo1">Cargador de confianza</h3>
      </div>
      <p class="animate-3 h3 mb-4 descripcion1" style="font-weight:300">El cargador HUAWEI SuperCharge de 40 W5 con certificación de Sistema seguro de carga rápida TÜV convierte el HUAWEI Mate 20 Pro en un poderoso dispositivo en el cual confiar. En 30 minutos, puede recargar la batería hasta un 70%.</p>
    </div>
    <div class="col-11 mx-auto mx-lg-0 col-lg-6 offset-lg-1" id="mate20BatteryTrigger">
      <div class="d-block mx-auto position-relative text-center">
        <div class="mate20-gallery-container">
          <picture class="mate20-gallery-frame">
            <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate3/frame.png')}}">
            <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/frame@2x.png 1.5x')}}">
            <img src="{{asset('images/landings/mate/mate/mate3/frame.png')}}" alt="" class="img-fluid"/>
          </picture>
          <div class="mate20-gallery-media">
            <div class="mate20-component-supercharge-bowl text-light text-center">
              <div class="mate20-component-supercharge-inner">
                <div class="mate20-component-supercharge-fill">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="323px" height="676px" viewBox="0 0 323 676" enable-background="new 0 0 323 676" xml:space="preserve">
                    <defs>
                      <linearGradient id="power-wave-gradient" x1="0" x2="0" y1="0" y2="1">
                        <stop offset="0%" stop-color="#00D89E"/>
                        <stop offset="100%" stop-color="#00CE5F"/>
                      </linearGradient>
                    </defs>
                    <path class="mate20-component-supercharge-waveShape" d="M473 676H0V9.2c20 1 36 1 53.3-2.8 8-1.8 16-3.9 24.9-5.2 25.8-3.8 42.7 2.4 63.3 6.1 21.8 4 46.5 3 66.2-1.7 19-4.7 40.6-7.9 63-3.2 7.3 1.5 14 3.3 21.3 4.8a150 150 0 0 0 54.8.7c8.4-1.4 16-3.4 24-5.1a134 134 0 0 1 53.3 0c2.8.5 5.6 1.1 8.2 1.8 11.7 3 24 5.6 40.7 5.1V676z" fill-rule="evenodd" fill="url(#power-wave-gradient)"/>
                  </svg>
                </div>
              </div>
              <div class="d-flex flex-column component-image-composition-slave mate20-component-supercharge-teaser">
                <div class="mt-8 mt-sm-9 mt-md-7"><span class="display-1 font-weight-light">0</span> <span class="h6">%</span></div>
              </div>
              <div class="d-flex flex-column component-image-composition-slave mate20-component-supercharge-timer">
                <div class="mt-8 mt-sm-9 mt-md-7"><span class="display-1 font-weight-light mate20-component-supercharge-percent">70</span> <span class="h6">%</span></div>
                <div class="mb-auto my-auto mt-9">
                  <h3 class="mt-3 mt-sm-9 mt-md-3 mate20-component-supercharge-time">30.00</h3>
                  minutes                </div>
              </div>
            </div>
          </div>
          <div class="mate20-component-supercharge-battery-cable component-image-composition-slave">
            <picture>
              <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/power-cable@2x.png 1.5x')}}">
              <img src="{{asset('images/landings/mate/mate/mate3/power-cable.png')}}" alt="" class="img-fluid d-block mx-auto"/>
            </picture>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="pt-9"></div>
<div class="component component-tile pt-6 pb-lg-6">
  <div class="container d-lg-flex">
    <div class="row d-flex flex-column flex-lg-row auto-mobile">
      <div class="mt-6 col-lg-6 overflow-hidden parallax-true">
        <div class="component-parallax-container" data-parallax='{"y": 100, "distance": 1200, "smoothness": 10}'>
          <picture>
            <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate4@2x.png')}}">
            <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate4@2x.png')}}">    
              <img class="img-responsive" style="border-radius: 10px;" src="{{asset('images/landings/mate/mate/mate4@2x.png')}}" alt="Natural Masterpiece"/>
          </picture>

        </div>      
      </div>
      <div class="mx-auto mx-lg-0 col-lg-6 offset-lg-7 align-self-lg-center animation-block centrado-responsive animation2" style="font-family: Manrope-huawei;">
        <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Carga de reserva inalámbrica</h3>
        <p class="animate-3 h3 mb-0 descripcion1">La asombrosa batería y la carga de reserva inalámbrica del HUAWEI Mate 20 Pro pueden rescatar algunos dispositivos que están sin batería. En una salida nocturna, las personas recurrirán a su teléfono.</p>
      </div>
    </div>
  </div>
</div>

<!--ppt7-->
<div class="component component-background mt-6 mb-6 pt-6 pt-md-0 pt-xlg-6 text-light animation-block animation2" id="mate20-bio-id">
  <div class="row" style="display: block;text-align:center;padding-bottom: 0;">
    <div style="background: -webkit-linear-gradient(274deg, #2e30a7, #3c59d9 53%, #65c9fa);-webkit-background-clip: text;-webkit-text-fill-color: transparent;" class="titulo1">Tecnología biométrica</div>
    <div style="color: #d9d9d9;" class="titulo2">Nuevas posibilidades de vida</div> 
  </div>
  <div class="row padding-apple" style="display:block;padding:0 5%">
    <div class="col-sm-12 col-xs-12 hidden-lg hidden-md">
      <picture>
        <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-id-xs.jpg')}}">
        <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate3/bio-id@2x.jpg 1.5x')}}">
        <img src="{{asset('images/landings/mate/mate/mate3/bio-id.jpg')}}" alt="" class="component-image-composition-master"/>
      </picture>
    </div>
    <div class="container pb-6 pb-xlg-0 col-sm-12 col-xs-12 col-md-6 col-lg-6">
      <div class="row d-flex flex-column flex-lg-row flex-column-reverse">
        <div class="component-tile-content col-11 mx-auto mx-xlg-0 col-xlg-7 xlg-7-a-xlg-10">
          <h3 class="animate-1 h1 h2-lg h6-xs mb-4 pt-lg-6 subtitulo1">Desbloqueo facial 3D</h3>
          <p class="animate-3 h3 mb-6 descripcion1">Un gran salto en cuanto a precisión y seguridad. Gracias a la Cámara de detección de profundidad 3D, la cual puede proyectar más de 30,000 puntos, su HUAWEI Mate 20 Pro lo reconoce fácilmente y desbloquea su teléfono en apenas medio segundo. La función Identificación facial también se puede utilizar para acceder de forma segura a una pantalla privada que contiene aplicaciones bloqueadas y datos personales.</p>      
        </div>
      </div>
    </div>
  </div>
</div>
<!--div class="component component-head-feature pt-6">
  <div class="container animation-block">
    <div class="row d-md-flex align-items-stretch">
      <div class="col-11 mx-auto col-lg-3 mx-lg-0">
        <h3 class="animate-1 h1 h2-lg mb-3">Bring Your Toy to Life<sup><a href="#footnote9">9</a></sup></h3>
      </div>
      <div class="col-11 mx-auto col-lg-9 mx-lg-0">
        <p class="animate-3 h3 mb-0">Scan a toy with the 3D Depth Sensing Camera to create an AI live model. Not only can you take photos, but also record it moving and dancing on your desk. Enjoy the fun of interaction and share with your friends.</p>
      </div>
    </div>
  </div>
</div-->

<!--div class="container pt-6 pb-6 ">
  <div class="component-carousel-container">
    <div class="component-picture">
        <picture>
        <source media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate8@2x.png')}}">
        <source media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate8@2x.png')}}"> <img src="{{asset('images/landings/mate/mate/mate8@2x.png')}}" alt="Bring Your Toy&nbsp;to&nbsp;Life"/>
        <svg style="background:gray;opacity:0.7;border-radius:50%;" width="60" height="60" xmlns="http://www.w3.org/2000/svg" class="pop-video pop-video50 play_video" href="https://consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/homepage/himalaya/video/teaser_video_pad_mob.mp4" data-video-image="https://consumer-img.huawei.com/content/dam/huawei-cbg-site/common/mkt/homepage/himalaya/video/video-poster.jpg" data-t-ignore-link="true" data-video-id="videoPlayer" data-t-label="video2" data-video-ratio="16:9" data-video-name="video2"><g fill="none" fill-rule="evenodd"><circle stroke="#FFF" stroke-width="2" cx="30" cy="30" r="29"/><path fill="#FFF" d="M26 23v15.8l11.8-8z"/></g></svg>
      </picture>
    </div>  </div>
</div-->
<div class="container d-lg-flex">
  <div class="row d-flex flex-column flex-lg-row auto-mobile">
    <div class="mx-auto mx-lg-0 col-lg-6 offset-lg-7 align-self-lg-center animation-block centrado-responsive animation2" style="font-family: Manrope-huawei;">
      <h3 class="animate-1 h1 h2-lg h6-xs mb-4 subtitulo1">Dele vida a su juguete</h3>
      <p class="animate-3 h3 mb-0 descripcion1">Escanee un juguete con la cámara de detección de profundidad 3D para crear un modelo en tiempo real con IA. No solo puede fotografiarlo, sino que también puede grabarlo mientras se mueve y baila en su escritorio. Disfrute de la experiencia de interacción y compártala con sus amigos.</p>
    </div>
    <div class="mt-6 col-lg-6 overflow-hidden parallax-true">
      <div class="component-parallax-container" data-parallax='{"y": 100, "distance": 1200, "smoothness": 10}'>
        <picture>
          <source style="max-width:100%;max-height:100%" media="(max-width: 755px)" srcset="{{asset('images/landings/mate/mate/mate8@2x.png')}}">
          <source style="max-width:100%;max-height:100%" media="(min-width: 756px)" srcset="{{asset('images/landings/mate/mate/mate8@2x.png')}}"> 
          <img style="max-width:100%;max-height:100%" src="{{asset('images/landings/mate/mate/mate8@2x.png')}}" alt="Bring Your Toy&nbsp;to&nbsp;Life"/>
          <svg style="background:gray;opacity:0.7;border-radius:50%;" width="60" height="60" xmlns="http://www.w3.org/2000/svg" style="cursor:pointer;" onclick="video_accion(3)" class="pop-video pop-video50 play_video" href="{{asset('images/landings/mate/mate/mate3/teaser_video_pad_mob.mp4')}}" data-video-image="{{asset('images/landings/mate/mate/mate3/video-poster.jpg')}}" data-t-ignore-link="true" data-video-id="videoPlayer" data-t-label="video2" data-video-ratio="16:9" data-video-name="video2"><g fill="none" fill-rule="evenodd"><circle stroke="#FFF" stroke-width="2" cx="30" cy="30" r="29"/><path fill="#FFF" d="M26 23v15.8l11.8-8z"/></g></svg>
        </picture>
      </div>      
    </div>
  </div>
</div>



<div class="container" id="bio-animoji">
  <div class="row d-flex justify-content-between mate20-frame-container pt-6 pb-6" style="
    display: none !important;
">
    <div class="col-9 col-sm-10 col-md-12 col-lg-7 mx-auto text-center">
      <div class="mate20-gallery-container">
        <div class="component-carousel-media">
          <div class="component-picture">
        <picture>
        <source media="(max-width: 755px)" srcset="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/bio-animoji-ui.jpg">
        <source media="(min-width: 756px)" srcset="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/bio-animoji-ui@2x.jpg 1.5x">        <img src="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/bio-animoji-ui.jpg" alt="Show Your Fun&nbsp;Side"/>
      </picture>
    </div>          <video playsinline muted="muted" loop="loop" class="component-image-composition-follower videoplays mate20-video-play-stop">
            <source type="video/mp4" src="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/bio-animoji-hero.mp4">
          </video>
          <img src="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/bio-animoji-hero.gif" class="component-image-composition-follower videoplaysfallback" alt="">
        </div>
        <picture class="mate20-gallery-frame">
          <source media="(max-width: 755px)" srcset="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/frame.png">
          <source media="(min-width: 756px)" srcset="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/frame@2x.png 1.5x">
          <img src="https://consumer-img.huawei.com/content/dam/huawei-cbg-campaign/2018/mate20-pro/en/img/frame.png" alt="" class="img-fluid"/>
        </picture>
      </div>
    </div>
    <div class="col-11 mx-auto mx-lg-0 col-lg-5 animation-block pt-6 pb-7 d-flex flex-column align-self-center text-center text-lg-left" style="font-family:Manrope-huawei">
      <h3 class="h1 h2-lg h6-xs mb-4 subtitulo1">Muestre su lado divertido</h3>
      <p class="h3 mb-0 descripcion1">Exprese sus emociones de forma precisa con los divertidos Emojis 3D en tiempo real. Además, intente animar la imagen del rostro de una persona con sus propias expresiones. A veces, compartir las cosas más simples genera grandes sonrisas.</p>
    </div>
  </div>
</div>

  <div class="component component-head-feature pt-6 mb-6 component2" id="last_section">
    <div class="container animation-block">
      <div class="row d-md-flex align-items-stretch">
        <div class="col-11 mx-auto col-sm-12 col-lg-11">
          <h1 class="display-sm-2 display-md-1 pt-4 text-center">
            <div class="titulo1 show-at-midnight" style="background: -webkit-linear-gradient(274deg, #2e30a7, #3c59d9 53%, #65c9fa);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">¡Solicítalo ahora!</div>
            <div class="titulo1 hide-at-midnight" style="background: -webkit-linear-gradient(274deg, #2e30a7, #3c59d9 53%, #65c9fa);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">¡Pronto podrás reservarlo!</div>
            <!-- 
            <div class="La-asombrosa-batera-Copy descripcion1">Reserva tu Huawei Mate 20 Pro en <b>portabilidad o línea nueva</b></div>
            -->
          </h1>
        </div>
        <!--div class="col-11 mx-auto col-lg-3 mx-lg-0">
          <h3 class="animate-1 h1 h2-lg mb-3">New Leica Triple Camera</h3>
        </div>
        <div class="col-11 mx-auto col-lg-9 mx-lg-0">
          <p class="animate-3 h3 mb-0">The new Leica Triple Camera powered by AI reveals life’s drama, texture, colour and beauty in every photograph that will take your breath away.</p>
        </div-->
      </div>
      <div class="row" style="margin-top: 30px;">
        <!--
        <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
        -->
        <div class="colum1 col-lg-6 col-md-8 col-sm-10 col-xs-12 mx-auto">
          <img class="img-responsive" src="{{asset('images/landings/mate/mate/mate_final@2x.png')}}" onerror="imgErrorUrl(this)">
          <img class="hide-before-midnight hidden-lg hidden-md" style="z-index: 1;right:0;position: absolute;border-radius: 15px;    width: 18%;
    top: 30%;" src="{{asset('images/landings/mate/mate/extra.png')}}">
        </div>
        <!--div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
          <img class="img-responsive" src="{{asset('images/landings/mate/mate/mate_final@2x.png')}}" onerror="imgErrorUrl(this)">
        </div-->

        <div class="colum2 col-lg-1 visible-lg hide-before-midnight"></div>
        <div style="display: flex;justify-content: center;align-items: center;background-color: #f5f3f4;border-radius: 50px;" class="colum3 col-lg-6 col-md-12 col-sm-12 col-xs-12 hide-before-midnight">
          <img class="hidden-sm hidden-xs hide-before-midnight" style="z-index: 1;left: -15%;position: absolute;border-radius: 15px;width: 20%;" src="{{asset('images/landings/mate/mate/extra.png')}}">
          <div style="padding: 25px 40px;" id="reservalo-box">
            <div class="Resrvalo-desde">Solicítalo desde:</div>
            <div class="row">
              <div class="col-lg-6 col-sm-6 col-xs-6" style="padding-top: 0 !important">
                <div class="Precio-del-equipo">Precio del equipo</div>
                <div class="Pronto">S/2,999</div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="Precio-del-equipo">Plan del equipo</div>
                <div class="Pronto-precio">iChip 109.90</div>
              </div>
            </div><br>
            <div class="Precio-del-equipo">Portabilidad o Línea nueva</div>
            <div class="GB-8GB-de-regalo hidden">20 GB</div><br>
            <div class="row">
              <div class="col-xs-4 col-lg-4 col-md-4 col-sm-4" style="text-align:center;">
                <img style="width:49px;height:49px;" src="{{asset('images/landings/mate/mate/4g.svg')}}" alt=" 4g=" "="" lte"="" onerror="imgErrorUrl(this)">
                <strong style="color:#129EA2;" class="detalle GB">20GB<br><font style="color:#4a4a4a;font-weight: 300;">Internet</font></strong>        
              </div>
              <div class="col-xs-4 col-lg-4 col-md-4 col-sm-4" style="text-align:center;">
                <img style="width:49px;height:49px;" src="{{asset('images/landings/mate/mate/call.svg')}}" alt=" 4g=" "="" lte"="" onerror="imgErrorUrl(this)">
                <strong style="color:#129EA2;" class="detalle GB">Ilimitado<br><font style="color:#4a4a4a;font-weight: 300;">Llamadas</font></strong> 
              </div>
              <div class="col-xs-4 col-lg-4 col-md-4 col-sm-4" style="text-align:center;">
                <img style="width:49px;height:49px;" src="{{asset('images/landings/mate/mate/sms.svg')}}" alt=" 4g=" "="" lte"="" onerror="imgErrorUrl(this)">
                <strong style="color:#129EA2;" class="detalle GB">Ilimitado<br><font style="color:#4a4a4a;font-weight: 300;">Mensajes</font></strong>
              </div>
            </div>
            <div class="Rectangle hide-at-midnight">
              <p class="QUIERO-RESERVARLO">¡SOLICÍTALO AQUÍ!</p>
            </div>
            <!--
            <div class="Rectangle hide-before-midnight" onclick="window.open('https://tienda.bitel.com.pe/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90','_blank')">
              <p class="QUIERO-RESERVARLO">¡SOLICÍTALO AQUÍ!</p>
            </div>
            -->
            <div class="Rectangle hide-before-midnight" onclick="window.open('https://tienda.bitel.com.pe/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90','_blank')">
              <p class="QUIERO-RESERVARLO">¡SOLICÍTALO AQUÍ!</p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

</div>

  <script type="text/javascript">
    $('svg.pop-video[data-video-name="video2"]').show();

var pageTitle = digitalData.page.pageInfo.pageName;
window.variableData = {
  '<page title>': pageTitle,
  '<URL>': 'HUAWEI Mate 20 Pro - ' + pageTitle,
  '<product name>': 'HUAWEI Mate 20 Pro'
};


function addSlickGa(){
if($('.slick-prev').length<1){
  setTimeout(function(){addSlickGa();},5000);
}else{
  $('.slick-prev').addClass('a-interaction a-common');
  $('.slick-prev').attr('cat','Content Interactions').attr('act','Scroll Left').attr('lab','<product name> - <page title>');
  $('.slick-next').addClass('a-interaction a-common');
  $('.slick-next').attr('cat','Content Interactions').attr('act','Scroll Right').attr('lab','<product name> - <page title>');
  $('li[role="presentation"] button').parent().addClass('a-interaction a-common');
  $('li[role="presentation"] button').each(function(){
    $(this).parent().attr('cat','Content Interactions').attr('act','Switch '+$(this).html()).attr('lab','<product name> - <page title>');
  });
}
}
addSlickGa();


function addColorGa(){
  if($('li[role="presentation"] a').length<1){
  setTimeout(function(){addColorGa();;},5000);
}
  $('li[role="presentation"] a').each(function(){
  var str=$(this).attr('class').split('color-switcher-')[1];
  str = str.substring(0,1).toUpperCase()+str.substring(1);
    $(this).attr('cat','Content Interactions').attr('act','Switch '+ str).attr('lab','<product name> - <page title>');
  });
  $('li[role="presentation"] a').addClass('a-interaction a-common');
}
addColorGa();

</script>

</div>
  
</div>
<input id="venta" type="hidden" value=""/>
<div id="pie_nav" style="display:none;position: fixed;z-index: 9999999999999999999999999999999999999;bottom: 0;width: 100%;height: 80px;opacity: 0.9;background-color: #202020;">
  <div class="center-block" style="display: table;width: 80%;">
    <img class="hidden-xs" src="{{asset('images/landings/mate/mate/bb@2x.png')}}" style="width: 119px;margin-top: -80px;" onerror="imgErrorUrl(this)">
    <div class="hidden-sm hidden-xs hidden-md" style="display: table-cell;height: 100%;align-content: center;align-items: center;width: 12%;position: relative;">
      <div style="top: 15px;position: absolute;left: 35px;"><div style="color: #9b9b9b;">Precio del equipo</div>
        <div class="Pronto-footer">S/ 2,999</div></div>
    </div>
    <div class="hidden-sm hidden-xs" style="display: table-cell;height: 100%;align-content: center;align-items: center;width: 20%;position: relative;"><div style="top: 15px;position: absolute;left: 24%;">
      <div style="display: block;display: block;color: #9b9b9b;">Plan del equipo</div>
      <div style="display: block;" class="Pronto-footer">iChip 109.90</div>
  </div></div>
    <div class="hidden-sm hidden-xs" style="display: table-cell;height: 100%;align-content: center;align-items: center;width: 25%;position: relative;"><div style="top: 15px;position: absolute;left: 25px;">
      <div style="display: block;display: block;color: #9b9b9b;">En Portabilidad o Línea Nueva</div>
      <div style="display: block;margin-top: 5px;" class="GB-8GB-de-regalo">20GB</span></div>
  </div></div>
    <div style="display: table-cell;height: 100%;align-content: center;align-items: center;width: 30%;position: relative;">
      <div class="Rectangle hide-at-midnight">
        <p class="QUIERO-RESERVARLO">¡SOLICÍTALO AHORA!</p>
      </div>
      <!--
      <div class="Rectangle hide-before-midnight" onclick="window.open('https://tienda.bitel.com.pe/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90','_blank')">
        <p class="QUIERO-RESERVARLO">¡RESÉRVALO AHORA!</p>
      </div>
      -->
      <div class="Rectangle hide-before-midnight" onclick="window.open('https://tienda.bitel.com.pe/postpago/huawei/mate-20-pro/portabilidad/ichip-plus-109_90','_blank')">
        <p class="QUIERO-RESERVARLO">¡SOLICÍTALO AHORA!</p>
      </div>
    </div>
  </div>
</div>

<!--div class='login-menu-component' data-support-country-code='EN' data-support-login='no' data-version='v3'>

    <div class='login-menu'>
        <div class='login-menu-contaner'>
            <div class='login-menu-list'>
                <a class='a-sup-common login-btn' cat='Navigation' act='Click on sign in' lab='<page title>' href='javascript:;'></a>
                <a class='a-sup-common reg-btn' cat='Navigation' act='Click on sign up' lab='<page title>'></a>
                <a class='a-sup-common my-service' cat='Navigation' act='Click on my service' lab='<page title>'></a>
                <a class='a-sup-common my-userinfo' cat='Navigation' act='Click on my info' lab='<page title>'></a>
                <a class='a-sup-common my-exit' cat='Navigation' act='Click on exit' lab='<page title>' href='javascript:;'></a>
            </div>
        </div>
    </div>
    <div class='login-menu login-phone'>
    <a class='login-btn a-sup-common' href='javascript:;' cat='Navigation' act='Click on sign in' lab='<page title>'>/</a>
    <a class='user-logined'></a>
    <script>
          $(function(){
              var nl = $('.login-menu-component').attr('data-support-login')
              if(typeof(nl) !="undefined" &&  nl == "yes")  $(".login-menu .user-logined").text($.cookie("user"))
            })
         </script>
  </div>
</div>
<div class="user-perfect-dialog" data-contact-type="phone">
    <div class="" style="display:none">
        <div class="s-perfect-dialog-container">
            <div class="s-content-dialog s-show">
                <div class="content support-perfect-dialog ">
                    <div class="s-content-dialog s-show">
                        <div class="s-dialog-title">
                            <h4></h4>
                            <span><i></i></span>
                        </div>
                          <div class="person-name-ner">:<span></span></div>   
                        <div class="perfect-name">
                            <input id="perfectName" class="s-input" type="text">
                        </div>
                        <div class="perfect-sex">
                            <div>
                                <span><input type="radio" name="perfect-sex" id="perfectSex1" value="1"/><label class="" for="perfectSex1"></label></span>
                                <span><input type="radio" name="perfect-sex" id="perfectSex2" value="2"/><label class="" for="perfectSex2"></label></span>
                                <span><input type="radio" name="perfect-sex" id="perfectSex3" value="3" checked/><label class="" for="perfectSex3"></label></span>
                            </div>
                        </div>
                        <div class="perfect-province">
                            <div>
                                <div id="perfectProvince" class="s-selector province">
                                    <div class="select">
                                        <span id="province" class=""></span>
                                        <ol style="display: none;"></ol>
                                    </div>
                                </div>
                                <div id="perfectCity" class="s-selector city">
                                    <div class="select">
                                        <span id="city" class=""></span>
                                        <ol style="display: none;"></ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="login-phone">
                            <input id="phoneNumber" class="s-input" type="text" maxlength="11">
                        </div>
                        <div class="login-email">
                  <input id="emailNumber" class="s-input phonenumber" type="text">
                  <span class="error-tips emailnumber"></span>
              </div>
                        <div class="login-verify">
                            <input id="verifyCode" class="s-input" type="text" maxlength="6">
                            <a id="sendVerifyCode" href="javascript:;" class="s-btn s-btn-disabled"></a>
                        </div>
                        <div class="s-login-btn">
                            <a href="javascript:;" style='display:none;' id="skipMyUserInfo" class="s-btn s-ok-btn"></a>
                            <a href="javascript:;" id="saveMyUserInfo" class="s-btn s-ok-btn s-disabled"></a>
                        </div>
                        <div class="contact-close login-close"><i></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="login-dialog-component">
    <div class='login-dialog'>
        <div class='s-login-dialog'>
            <div class='s-content-dialog s-show'>
                <div class='content'>
                    <iframe id='loginFrame' frameborder='0'> </iframe>
                    <div class='contact-close login-close'> <i></i></div>
                </div>
            </div>
        </div>
    </div>
</div-->
<style>
    .login-menu-component  { display: none; }
    .user-perfect-dialog  .perfect-dialog{ display: none; }
    .login-dialog-component .login-dialog { display:none;}
    .support-perfect-dialog .s-selector.province .select > span:empty:before { content: ""; }
    .support-perfect-dialog .s-selector.city .select > span:empty:before { content: ""; }
    .support-perfect-dialog .s-selector.area .select > span:empty:before { content: "选择区/县"; }
    .support-perfect-dialog .login-verify.verify-error:after { content: ""; }
    .support-perfect-dialog .login-verify.error:after { content: ""; }
    .support-perfect-dialog .login-phone.phone-error:after { content: ""; }
    .support-perfect-dialog .login-phone.error:after { content: ""; }
  .user-perfect-dialog .login-email.error-email:after {content:"";display: block;color: #ce3c40; margin-top: 5px;position: absolute;}
    .user-perfect-dialog .login-email.exist-emai:after {content:"";display: block;color: #ce3c40; margin-top: 5px;position: absolute;}
</style>
 
<!--/HWIntelligentDocMeta-->
<!--/HW Intelligent DocContent-->

 
<script src="{{asset('js/mate/mate20.js')}}" type="text/javascript"></script>
<script src="{{asset('js/mate/components.js')}}" type="text/javascript"></script>
<script src="{{asset('js/mate/slick.min.js')}}" type="text/javascript"></script>
    
<link rel="stylesheet" href="{{asset('css/mate/clientlib-product.min.css')}}" type="text/css">
<script type="text/javascript" src="{{asset('js/mate/clientlib-product.min.js')}}"></script>
    
<script type="text/javascript" src="{{asset('js/mate/product-detail-v3.min.js')}}"></script>

@endsection

@section('js')
<!--
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>


<div id="ex1" class="modal" data-backdrop="static" data-keyboard="false">
  <video id="video1" style="width:100%" preload="none" controls>
    <source src="{{asset('images/landings/mate/mate/HUAWEI-MATE-20-PRO-TVC-GLOBAL.mp4')}}"> 
  </video>
  <video id="video2" style="width:100%;display:none" preload="none" controls>
    <source src="{{asset('images/landings/mate/mate/3d.mp4')}}"> 
  </video>
  <a rel="modal:close" style="z-index:999999999999999999999999999999999999999999999999999999999;position: absolute;top: -12.5px;right: -12.5px;display: block;width: 30px;height: 30px;text-indent: -9999px;background-size: contain;background-repeat: no-repeat;background-position: center center;background-image: url('/images/landings/mate/mate/close.png');" onclick="video_cerrar()" href="#close-modal">Close</a>
</div>
<div id="ex2" class="modal" data-backdrop="static" data-keyboard="false" style="padding:0;font-family: Manrope-huawei">  
  <!--Header-->
  <div class="modal-header text-center">
    <h3 class="modal-title w-100 dark-grey-text font-weight-bold my-3" id="myModalLabel"><strong>Ingresa tus datos</strong></h3>
  </div>

  <div class="modal-body mx-4" style="
    font-size: 12px;
    font-family: Manrope-huawei;
">

    <meta name="csrf" value="{{ csrf_token() }}">
    <div class="md-form pb-3">
      <!--input type="email" id="Form-email13" class="form-control validate"-->
      <input type="text" id="nombre" maxlenght="174" class="form-control" placeholder="Nombre" style="
    font-size: 110%;
">
    </div>

    <div class="md-form pb-3">
      <input type="number" id="dni" maxlenght="8" class="form-control" placeholder="DNI" style="
    font-size: 110%;
">
    </div>
    
    <div class="md-form pb-3">
      <input type="number" id="telefono" maxlenght="14" class="form-control" placeholder="Teléfono" style="
    font-size: 110%;
">
    </div>
    <div class="md-form pb-3">
      <input type="email" id="email" maxlenght="174" class="form-control" placeholder="Correo" style="
    font-size: 110%;
">
    </div>

    <div class="text-center mb-3">
      <button type="button" id="btn-reservar" style="
    font-size: 120%;
" onclick="send_form()" class="btn blue-gradient btn-block btn-rounded z-depth-1a waves-effect waves-light">Reservar</button>
      <label id="reserva_exitosa" style="display:none;color:#008c95;font-weight:bold;font-size:130%"><br>¡Tus datos han sido enviados!</label>
      <label id="error" style="display:none;color:red;font-weight:bold;font-size:130%"></label>
      <label id="dni_registrado" style="display:none;color:#008c95;font-weight:bold;font-size:130%"><br>¡Usted ya hizo su reserva!</label>
    </div>

  </div>
</div>

<!-- Link to open the modal -->
<!--p><a href="#ex1" rel="modal:open">Open Modal</a></p-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script type="text/javascript">
  function video_accion(num){
    $("#ex1").css("padding-left","0 !important");
    if($(window).width()<320){  
      /*$("#ex1").css("padding-right","0 !important");*/
    }
    else{
      $("#ex1").css("padding-right","17px !important");
    } 
    $("#ex1").modal({
      escapeClose: false,
      clickClose: false,
      showClose: false
    });
    $("#ex1").modal('show');
    if(num==1){
      $("#video1").show();
      $("#video2").hide();
      $("#video1").get(0).play();
    }
    else{
      $("#video2").show();
      $("#video1").hide();
      $("#video2").get(0).play();
    }
  } 
  function video_cerrar(){
    $("#video1").get(0).pause();
    $("#video2").get(0).pause();
  }
  $("#ex2 input").change(function(){
    $("#error").hide();
    $("#error").html('');
  }); 
  function send_form(){
    $("#btn-reservar").prop('disabled',true);
    //validacion
    var solo_letras=/^[A-Za-z\_\-\.\s\xF1\xD1]+$/;
    var solo_email= /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if($("#nombre").val()=='' || !solo_letras.test($("#nombre").val())){
      $("#error").html("<br>Verifique su nombre");
      $("#error").show();
      $("#nombre").focus();
      $("#btn-reservar").prop('disabled',false);
      return false;
    }
    if($("#email").val()=='' || !solo_email.test($("#email").val())){
      $("#error").html("<br>Verifique su correo");
      $("#error").show();
      $("#email").focus();
      $("#btn-reservar").prop('disabled',false);
      return false;
    }
    if(($("#dni").val()).length!=8){
      $("#error").html("<br>Verifique su DNI");
      $("#error").show();
      $("#dni").focus();
      $("#btn-reservar").prop('disabled',false);
      return false;
    }
    if(($("#telefono").val()).length<7){
      $("#error").html("<br>Verifique su teléfono");
      $("#error").show();
      $("#telefono").focus();
      $("#btn-reservar").prop('disabled',false);
      return false;
    }
    $("#error").hide();
    $("#error").html('');
    $.ajax({
        type: 'post',
        url: "{{url('reservar_mate')}}",
        data: {
            '_token': $('meta[name="csrf-token"]').attr('content'),
            'nombre': $('#nombre').val(),
            'dni': $('#dni').val(),
            'email': $('#email').val(),
            'telefono': $('#telefono').val()
        },
        success: function(response)
        {
            if(response==1){
              $("#reserva_exitosa").show();
              setTimeout(function(){ location.reload(); }, 2500);              
            }
            if(response==2){
              $("#dni_registrado").show();
              setTimeout(function(){ location.reload(); }, 2500);              
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("Ha ocurrido un error. Inténtelo más tarde.");
          location.reload();
        }
    });
  }
</script>  
<script>

  // COLLAPSE PUBLIC CLASS DEFINITION
  // ================================

  var Collapse = function (element, options) {
    this.$element      = $(element)
    this.options       = $.extend({}, Collapse.DEFAULTS, options)
    this.$trigger      = $('[data-toggle="collapse"][href="#' + element.id + '"],' +
                           '[data-toggle="collapse"][data-target="#' + element.id + '"]')
    this.transitioning = null

    if (this.options.parent) {
      this.$parent = this.getParent()
    } else {
      this.addAriaAndCollapsedClass(this.$element, this.$trigger)
    }

    if (this.options.toggle) this.toggle()
  }

  Collapse.VERSION  = '3.3.4'

  Collapse.TRANSITION_DURATION = 350

  Collapse.DEFAULTS = {
    toggle: true
  }

  Collapse.prototype.dimension = function () {
    var hasWidth = this.$element.hasClass('width')
    return hasWidth ? 'width' : 'height'
  }

  Collapse.prototype.show = function () {
    if (this.transitioning || this.$element.hasClass('in')) return

    var activesData
    var actives = this.$parent && this.$parent.children('.panel').children('.in, .collapsing')

    if (actives && actives.length) {
      activesData = actives.data('bs.collapse')
      if (activesData && activesData.transitioning) return
    }

    var startEvent = $.Event('show.bs.collapse')
    this.$element.trigger(startEvent)
    if (startEvent.isDefaultPrevented()) return

    if (actives && actives.length) {
      Plugin.call(actives, 'hide')
      activesData || actives.data('bs.collapse', null)
    }

    var dimension = this.dimension()

    this.$element
      .removeClass('collapse')
      .addClass('collapsing')[dimension](0)
      .attr('aria-expanded', true)

    this.$trigger
      .removeClass('collapsed')
      .attr('aria-expanded', true)

    this.transitioning = 1

    var complete = function () {
      this.$element
        .removeClass('collapsing')
        .addClass('collapse in')[dimension]('')
      this.transitioning = 0
      this.$element
        .trigger('shown.bs.collapse')
    }

    if (!$.support.transition) return complete.call(this)

    var scrollSize = $.camelCase(['scroll', dimension].join('-'))

    this.$element
      .one('bsTransitionEnd', $.proxy(complete, this))
      .emulateTransitionEnd(Collapse.TRANSITION_DURATION)[dimension](this.$element[0][scrollSize])
  }

  Collapse.prototype.hide = function () {
    if (this.transitioning || !this.$element.hasClass('in')) return

    var startEvent = $.Event('hide.bs.collapse')
    this.$element.trigger(startEvent)
    if (startEvent.isDefaultPrevented()) return

    var dimension = this.dimension()

    this.$element[dimension](this.$element[dimension]())[0].offsetHeight

    this.$element
      .addClass('collapsing')
      .removeClass('collapse in')
      .attr('aria-expanded', false)

    this.$trigger
      .addClass('collapsed')
      .attr('aria-expanded', false)

    this.transitioning = 1

    var complete = function () {
      this.transitioning = 0
      this.$element
        .removeClass('collapsing')
        .addClass('collapse')
        .trigger('hidden.bs.collapse')
    }

    if (!$.support.transition) return complete.call(this)

    this.$element
      [dimension](0)
      .one('bsTransitionEnd', $.proxy(complete, this))
      .emulateTransitionEnd(Collapse.TRANSITION_DURATION)
  }

  Collapse.prototype.toggle = function () {
    this[this.$element.hasClass('in') ? 'hide' : 'show']()
  }

  Collapse.prototype.getParent = function () {
    return $(this.options.parent)
      .find('[data-toggle="collapse"][data-parent="' + this.options.parent + '"]')
      .each($.proxy(function (i, element) {
        var $element = $(element)
        this.addAriaAndCollapsedClass(getTargetFromTrigger($element), $element)
      }, this))
      .end()
  }

  Collapse.prototype.addAriaAndCollapsedClass = function ($element, $trigger) {
    var isOpen = $element.hasClass('in')

    $element.attr('aria-expanded', isOpen)
    $trigger
      .toggleClass('collapsed', !isOpen)
      .attr('aria-expanded', isOpen)
  }

  function getTargetFromTrigger($trigger) {
    var href
    var target = $trigger.attr('data-target')
      || (href = $trigger.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '') // strip for ie7

    return $(target)
  }


  // COLLAPSE PLUGIN DEFINITION
  // ==========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.collapse')
      var options = $.extend({}, Collapse.DEFAULTS, $this.data(), typeof option == 'object' && option)

      if (!data && options.toggle && /show|hide/.test(option)) options.toggle = false
      if (!data) $this.data('bs.collapse', (data = new Collapse(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.collapse

  $.fn.collapse             = Plugin
  $.fn.collapse.Constructor = Collapse


  // COLLAPSE NO CONFLICT
  // ====================

  $.fn.collapse.noConflict = function () {
    $.fn.collapse = old
    return this
  }


  // COLLAPSE DATA-API
  // =================

  $(document).on('click.bs.collapse.data-api', '[data-toggle="collapse"]', function (e) {
    var $this   = $(this)

    if (!$this.attr('data-target')) e.preventDefault()

    var $target = getTargetFromTrigger($this)
    var data    = $target.data('bs.collapse')
    var option  = data ? 'toggle' : $this.data()

    Plugin.call($target, option)
  })

  window.onscroll = function() {    

    $(window).scroll(function () {
        if($("#venta").val()=="si"){
          if(window.scrollY==0){
            $("#pie_nav").fadeOut();
          }
          else if ($(window).scrollTop() + $(window).height() > $('#bio-animoji').offset().top) {
            $("#pie_nav").fadeOut();
          } else {
            $("#pie_nav").fadeIn();
          }
        }
    });
  };

</script>
<!--foot-end-->
@endsection