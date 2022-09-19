console.clear();
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커를 생성합니다
var marker = new kakao.maps.Marker({  
    map: map, 
    position: locPosition
});            

let city;
let city_loc;
    


// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도

        // 주소 가져오기
        getAddr(lat,lon);
                        
        var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

        // 지도 중심좌표를 접속위치로 변경합니다
        map.setCenter(locPosition);

        // 마커 표시
        marker.setPosition(locPosition);
            
    });

    // 지도에 클릭 이벤트를 등록합니다
    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
        
        // 클릭한 위도, 경도 정보를 가져옵니다 
        var latlng = mouseEvent.latLng; 

        lat = latlng.getLat();
        lon =latlng.getLng();
        
        locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

        // 지도 중심좌표를 클릭한 위치로 변경합니다
        map.setCenter(locPosition);

        // 마커 위치를 클릭한 위치로 옮깁니다
        marker.setPosition(locPosition);

        getAddr(lat,lon);
        
    });
                
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    alert("ERROR : 위치를 불러올수 없습니다.");

    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);  
        
    marker.setPosition(locPosition);
}


// 주소 반환
function getAddr(lat,lon){
    let geocoder = new kakao.maps.services.Geocoder();

    let coord = new kakao.maps.LatLng(lat, lon);
    let callback = function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            console.log(result[0].region_1depth_name, result[0].region_2depth_name);
            // currLocation = result[0].region_1depth_name, result[0].region_2depth_name;
           
             city = result[0].region_1depth_name;
             city_loc = result[0].region_2depth_name;

            $('#currLocation').text(city + " " +city_loc);
        }
       
    }
    geocoder.coord2RegionCode(lon, lat, callback);

    
}

