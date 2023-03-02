<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@ page import="jdk.nashorn.internal.parser.JSONParser" %>
<%@ page import="java.net.HttpURLConnection" %>
<%
    String key = "664c4562436d656537347774614972";

    // 파싱한 데이터를 저장할 변수
    String result = "";

    try {

        URL url = new URL("http://openapi.seoul.go.kr:8088/"
                + key + "/json/TbPublicWifiInfo/1/5");

        HttpURLConnection urlConnection=(HttpURLConnection) url.openConnection();
        urlConnection.setRequestMethod("GET");
        BufferedReader bf;
        bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

        result = bf.readLine();
        System.out.printf(result);

    }catch ( Exception e ){
        e.printStackTrace();
    }


%>
<!DOCTYPE html>
<html>
<head>
    <title>와이파이 정보 구하기</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        function clickLocation(){
            navigator.geolocation.getCurrentPosition(
                function(position) {
                    var lat= position.coords.latitude;
                    var lng= position.coords.longitude;

                    console.log(lat);
                    console.log(lng);
                    $('#latID').val(lat);
                    $('#lngID').val(lng);

                }
            )};
        function clickWifi(){

        }


    </script>
</head>
<body>
<h1> 와이파이 정보 구하기</h1>
<br/>

<div>
    <a href="index.jsp">홈</a>
    <span> | </span>
    <a href="hello-servlet">위치 히스토리 목록</a>
    <span> | </span>
    <a href="info.jsp">Open API 와이파이 정보 가져오기</a>
</div>
<br/>
<div>
    <span> LAT:</span>
    <input type="text" id="latID" name="LAT" value="0.0">
    <span> , LNT:</span>
    <input type="text" id="lngID" name="LNT" value="0.0">
    <button type="button" onclick="clickLocation()">내 위치 가져오기</button>
    <button type="button" onclick="clickWifi()">근처 WIFI 정보 가져오기</button>
</div>
<br/>
<table bgcolor="green">
    <th>거리(Km)</th>
    <th>관리번호</th>
    <th>자치구</th>
    <th>와이파이명</th>
    <th>도로명주소</th>
    <th>상세주소</th>
    <th>설치위치(층)</th>
    <th>설치기관</th>
    <th>서비스구분</th>
    <th>망종류</th>
    <th>설치년도</th>
    <th>실내외구분</th>
    <th>WIFI접속환경</th>
    <th>X좌표</th>
    <th>Y좌표</th>
    <th>작업일자</th>




</table>
</body>

</html>