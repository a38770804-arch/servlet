<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>배탈의 민족</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>메뉴 검색</h2>

        <div>
            <form method="get" action="/jsp/test/test07.jsp">
                <input type="text" name="menu" class="form-control col-2">
                <input type="checkbox" name="filter"><label>4점 이하 제외</label> <br>
                <button type="submit" class="btn btn-success">검색</button>
            </form>
        </div>
    </div>



</body>
</html>
