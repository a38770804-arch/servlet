<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        int numberCm = Integer.parseInt(request.getParameter("numberCm"));
        String[] whatArray = request.getParameterValues("what");

        // String result = "";
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < whatArray.length; i++) {
            if (whatArray[i].equals("inch")) {
                double inch = numberCm / 2.54;
                sb.append(inch + "in <br> ");
            } else if (whatArray[i].equals("yard")) {
                double yard = numberCm / 91.44;
                sb.append(yard + "yd <br> ");
            } else if (whatArray[i].equals("feet")) {
                double feet = numberCm / 30.48;
                sb.append(feet + "ft <br> ");
            } else if (whatArray[i].equals("meter")) {
                double meter = (double) numberCm / 100;
                sb.append(meter + "m <br> ");
            }
        }

    %>

    <div>
        <h1>변환 결과</h1>
        <h3> <%= numberCm %>cm </h3> <hr>
        <h3>
            <%= sb %>
        </h3>
    </div>




</body>
</html>
