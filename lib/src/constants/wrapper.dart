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
    .custom-overlay {
        position: absolute; 
        bottom: 60px; 
        width: 250px;
        height: 120px; 
        margin-left: -125px; 
        border-radius: 14px; 
        overflow: hidden; 
        display: flex;
        flex-direction: row;
        align-items: center;
    }

    .title-box {
        width: 50px;
        height: 120px;
        font-size: 15pt;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: white;
        text-align: center;
        font-weight: bold;
    }
    
    ol {
        list-style: none;
        margin-left: -20px;
    }    

    li {
        margin-bottom: 8px;
    }
   
    b {
        margin-right: 10px;
    }
    
    
  </style>
</head>

<body style="margin: 0;">
<div id="map" style="width: 100vw; height: 100vh;"></div>

$script

</body>

</html>''';
}
