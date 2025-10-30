<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <div>
        <h2>길이 변환</h2>

        <div>
            <form method="post" action="/jsp/test/test05.jsp">
                <div class="d-flex align-items-end">
                    <input type="text" class="form-control col-2 mr-1" name="numberCm"><label>cm</label>
                </div>

                <div>
                    <label>인치<input type="checkbox" name="what" value="inch" class="m1-1"></label>
                    <label>야드<input type="checkbox" name="what" value="yard" class="m1-1"></label>
                    <label>피트<input type="checkbox" name="what" value="feet" class="m1-1"></label>
                    <label>미터<input type="checkbox" name="what" value="meter" class="m1-1"></label>
                </div>
                <button type="submit" class="btn btn-success">반환</button>
            </form>
        </div>
    </div>


</body>
</html>
