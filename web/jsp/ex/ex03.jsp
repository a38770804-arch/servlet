<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Post Method</title>
</head>
<body>

    <%
        // 닉네임 전달 받기
        String nickname = request.getParameter("nickname");

        // 좋아하는 동물을 하나 전달 받기
        // 고양이 강아지 호랑이
        String animal = request.getParameter("animal");

        // 좋아하는 과일 하나를 전달 받기
        // 바나나 딸기 복숭아
        String fruit = request.getParameter("fruit");

        // 좋아하는 음식을 모두 전달 받기
        // 민트초코, 하와이안피자, 번데기
        String[] foodArray = request.getParameterValues("food");

        String foodString = "";
        for(int i = 0; i < foodArray.length; i++) {
            foodString = foodString + foodArray[i] + " ";
        }
    %>

    <h2><%= nickname %></h2>
    <h2><%= animal %></h2>
    <h2><%= fruit %></h2>
    <h2><%= foodString %></h2>

</body>
</html>
