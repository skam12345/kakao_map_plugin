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
      margin-top: 45px;
      background-image: url('https://i.imgur.com/y0MwemA.png');
      background-size: 100% 100%;
    }
    .destination {
      width: 30px;
      height: 44px;
      margin-left: -5px;
      margin-top: 10px;
      background-image: url('https://i.imgur.com/wfguwFl.png');
      background-size: 100% 100%;
    }
    .violate-marker01 {
      width: 30px;
      height: 44px;
      margin-left: -15px;
      background-image: url('https://i.imgur.com/AKvXPSt.png');
      background-size: 100% 100%;
    }
    .violate-marker {
      width: 25px;
      height: 37px;
      margin-left: -10px;
      background-image: url('https://i.imgur.com/MsYWVdO.png');
      background-size: 100% 100%;
    }
    .numbering01 {
      font-size: 15pt;
      font-weight: bolder;
      margin-top: 5px;
      color: white;
    }
    .numbering {
      font-size: 10pt;
      font-weight: bolder;
      margin-top: 2px;
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
