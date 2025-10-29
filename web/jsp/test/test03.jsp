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
        String today = request.getParameter("today");

        Date now = new Date();
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy년 MM월 dd일");
        String date = dateFormatter.format(now);

        SimpleDateFormat timeFormatter = new SimpleDateFormat("hh시 mm분 ss초");
        String time = timeFormatter.format(now);

        String print = null;
        if(today.equals("date")) {
            print = "오늘 날짜" + date;
        } else if (today.equals("time")) {
            print = time;
        }
    %>

    <div class="container">
        <div class="display-2"><%= print %></div>
    </div>

</body>
</html>
