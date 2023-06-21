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
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&family=Noto+Sans+KR:wght@100;400&display=swap');
    * {
        font-family: 'Noto Sans KR', sans-serif;
    }
    .my-direction {
      width: 15px;
      height: 15px;
      margin-left: -7.5px;
      background-image: url('https://i.imgur.com/y0MwemA.png');
      background-size: 100% 100%;
    }
    .destination {
      width: 40px;
      height: 58px;
      margin-left: -20px;
      background-image: url('https://i.imgur.com/qDiwhz6.png');
      background-size: 100% 100%;
    }
    .violate-marker01 {
      width: 40px;
      height: 58px;
      margin-left: -20px;
      background-image: url('https://i.imgur.com/AKvXPSt.png');
      background-size: 100% 100%;
    }
    .violate-marker {
      width: 20px;
      height: 29px;
      margin-left: -10px;
      background-image: url('https://i.imgur.com/T08Xnah.png');
      background-size: 100% 100%;
    }
    .numbering01 {
      font-size: 18pt;
      font-weight: bolder;
      margin-left: 15px;
      margin-top: 5px;
      
      color: white;
    }
    .numbering {
      font-size: 13pt;
      font-weight: bolder;
      margin-left: 8px;
      margin-top: 3px;
      color: white;
    }
  </style>
</head>

<body style="margin: 0;">
<div id="map" style="width: 100vw; height: 100vh;"></div>

$script

</body>

</html>''';
}
