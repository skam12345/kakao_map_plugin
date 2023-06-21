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
      background-image: url('https://image-upload1013.s3.ap-northeast-2.amazonaws.com/my_marker.png');
      background-size: 100% 100%;
    }
    .destination {
      width: 40px;
      height: 58px;
      margin-left: -20px;
      background-image: url('https://image-upload1013.s3.ap-northeast-2.amazonaws.com/destination.png');
      background-size: 100% 100%;
    }
    .violate-marker01 {
      width: 60px;
      height: 87px;
      margin-left: -30px;
      background-image: url('https://image-upload1013.s3.ap-northeast-2.amazonaws.com/one_marker.png');
      background-size: 100% 100%;
    }
    .violate-marker {
      width: 30px;
      height: 44px;
      margin-left: -15px;
      background-image: url('https://image-upload1013.s3.ap-northeast-2.amazonaws.com/other_marker.png');
      background-size: 100% 100%;
    }
    .numbering01 {
      font-size: 18pt;
      font-weight: bolder;
      color: white;
    }
    .numbering {
      font-size: 13pt;
      font-weight: bolder;
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
