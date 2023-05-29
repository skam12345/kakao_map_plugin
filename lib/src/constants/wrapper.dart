part of kakao_map_plugin;

String _htmlWrapper(String script) {
  return '''
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
  <script type="text/javascript"
          src='https://dapi.kakao.com/v2/maps/sdk.js?autoload=true&appkey=${AuthRepository.instance.appKey}&libraries=services,clusterer,drawing'></script>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
    * {
        font-family: 'Nanum Gothic Coding', monospace;
    }
    .custom-overlay {
        position: absolute; 
        left: 0; 
        bottom: 60px; 
        width: 200px;
        height: 90px; 
        margin-left: -100px; 
        border-radius: 14px; 
        overflow: hidden; 
        background-color: white; 
    }
    
    .custom-overlay:after {
      position: absolute;
      border-top: 20px solid white;
      border-left: 20px solid transparent;
      border-right: 20px solid transparent;
      border-bottom: 0px solid transparent;
      content: "" ;
      top: 90px;
      left: 0;
      margin-left: -5px;
    }
  </style>
</head>

<body style="margin: 0;">
<div id="map" style="width: 100vw; height: 100vh;"></div>

$script

</body>

</html>''';
}
