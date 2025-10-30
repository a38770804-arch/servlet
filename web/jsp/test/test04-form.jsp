<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사칙연산</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h2>사칙 연산</h2>

        <form method="post" action="/jsp/test/test04.jsp">
            <div class="d-flex">
                <input type="text" name="number1" class="form-control col-2 ml-2">
                <select name="what" class="form-control col-1 ml-2">
                    <option>+</option>
                    <option>-</option>
                    <option>x</option>
                    <option>÷</option>
                </select>
                <input type="text" name="number2" class="form-control col-2 ml-2">
                <button type="submit" class="btn btn-success">계산</button>
            </div>
        </form>
    </div>





</body>
</html>
