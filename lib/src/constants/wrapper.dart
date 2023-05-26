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
        width: 300px;
        height: 200px;
        border-radius: 14px;
        display: flex;
        flex-direction: column;
        background-color: #EFEFEF;
    }
    
    .custom-overlay::after {
      border-top: 20px solid #EFEFEF;
      border-left: 20px solid transparent;
      border-right: 20px solid transparent;
      border-bottom: 0px solid transparent;
      content: "";
      position: absolute;
      top: 200px;
      left: 135px;
    }
  </style>
</head>

<body style="margin: 0;">
<div id="map" style="width: 100vw; height: 100vh;"></div>

$script

</body>

</html>''';
}
