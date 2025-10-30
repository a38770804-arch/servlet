<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>날짜 시간 출력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        // 어떤 정보를 보여줄지, "date", "time"
        String what = request.getParameter("what");

        Date now = new Date();

        String result = null;
        if(what.equals("date")) {
            SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
            result = formatter.format(now);
        } else if (what.equals("time")) {
            SimpleDateFormat formatter = new SimpleDateFormat("현재 시간 hh시 mm분 ss초");
            result = formatter.format(now);
        }
    %>

    <div class="container">
        <div class="display-2"><%= result %></div>
    </div>

</body>
</html>
