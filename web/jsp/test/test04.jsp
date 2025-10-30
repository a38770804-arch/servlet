<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사칙연산</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));
        String what = request.getParameter("what");

        double result = 0;
        if(what.equals("+")) {
            result = number1 + number2;
        } else if(what.equals("-")) {
            result = number1 - number2;
        } else if (what.equals("x")) {
            result = number1 * number2;
        } else if (what.equals("÷")) {
            result = number1 / number2;
        }
    %>

    <div class="container">
        <h3>계산 결과</h3>
        <div class="display-3">
            <%= number1 + " " + what + " " + number2 + " = "%>
            <span class="text-primary"><%= result %></span>
        </div>
    </div>


</body>
</html>
