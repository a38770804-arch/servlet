<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: B4-27
  Date: 2025-10-29
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 스크립트 요소</title>
</head>
<body>

    <%--1. 점수들의 평균 구하기--%>
    <%
        int[] scores = {80, 90, 100, 95, 80};

        int sum = 0;
        for(int score : scores) {
            sum += score;
        }
        double average = (double)sum / scores.length;
    %>

    <%-- 2. 채점 결과 --%>
    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

        int score = 0;
        for(String s : scoreList) {
            if("O".equals(s)) {
                score += 10;
            }
        }
    %>

    <%-- 3. 1부터 N까지의 합계를 구하는 함수 --%>
    <%!
        public int sum(int number) {
            int sum = 0;
            for(int i = 1; i <= number; i++) {
                sum += i;
            } return sum;
        }
    %>

    <%-- 4. 나이 구하기 --%>
    <%
        String birthDay = "20010820";
        int year = Integer.parseInt(birthDay.substring(0,4));
        int age = 2025 - year + 1;
    %>

    <h4>점수 평균은 <%= average %> 입니다.</h4>
    <h4>채점 결과는 <%= score %></h4>
    <h4>1에서 50까지의 합은 <%= sum(50) %></h4>
    <h4>20010820의 나이는 <%= age %> 살 입니다.</h4>

</body>
</html>
