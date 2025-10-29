<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI 수치</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
    </style>
</head>
<body>

    <div class="container">
        <h1>체격 조건 입력</h1>

        <form method="get" action="/jsp/test/test02.jsp">
            <div class="d-flex align-items-end">
                <input type="text" class="form-control col-2 ml-2" name="height"><div class="ml-2">cm</div>
                <input type="text" class="form-control col-2 ml-2" name="weight"><div class="ml-2">kg</div>
                <button type="submit" class="btn btn-info ml-2">계산</button>
            </div>
        </form>

    </div>


</body>
</html>
