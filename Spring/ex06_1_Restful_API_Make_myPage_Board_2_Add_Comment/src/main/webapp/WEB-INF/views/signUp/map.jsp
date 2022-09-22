<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>

    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>

    <!-- 카카오API -->  
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7f09a700fac340f9a676a6cbfa90fbb&libraries=services"></script>
    <!-- services 라이브러리 불러오기 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7f09a700fac340f9a676a6cbfa90fbb&libraries=services"></script>



    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- CSS : font 설정 -->
    <link rel="stylesheet" href="/resources/common/css/font.css">
    <link rel="stylesheet" href="/resources/signUp/css/map.css">

</head>


<body>
    <div class="find_location">
        <div class="wrap_find_location_title">
            <span class="font-28-700">위치인증</span>
        </div>

        <div id="map" style="width:300px;height:300px;"></div>

        <div id="currLocation"></div>
        

        <div class="wrap_find_location_btn">
            <button tpye="button" class="find_location_btn font-16-500">확인</button>
        </div>
    </div>

    <!-- 팝업 : 닉네임찾기 자바스크립트 -->
    <script src="/resources/signUp/js/map.js"></script>
    <!-- 팝업 내용 전달 -->
    <script src="/resources/signUp/js/popupLoc.js"></script>
    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>