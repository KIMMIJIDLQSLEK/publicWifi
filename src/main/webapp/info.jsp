
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection" %>
<%
    // 인증키 (개인이 받아와야함)
    String key = "664c4562436d656537347774614972";

    // 파싱한 데이터를 저장할 변수
    String result = "";

    try {

        URL url = new URL("http://openapi.seoul.go.kr:8088/"
                + key + "/json/TbPublicWifiInfo/1/1000");

        HttpURLConnection urlConnection=(HttpURLConnection) url.openConnection();
        urlConnection.setRequestMethod("GET");
        BufferedReader bf;
        bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
        http://data.seoul.go.kr/dataList/OA-20883/S/1/datasetView.do
        result = bf.readLine();

        System.out.printf(result);

    }catch ( Exception e ){
        e.printStackTrace();
    }


%>

<html>

<head>
    <title>와이파이 정보 구하기</title>
    <style>
        body{
            text-align: center;
        }
    </style>

</head>
<body>
<span id="info-num"></span>
<span> 개의 WIFI 정보를 정상적으로 저장하였습니다.</span>
<br/>
<br/>
<div>
    <a href="index.jsp">홈 으로 가기</a>
</div>
</body>
</html>
