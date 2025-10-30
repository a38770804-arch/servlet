<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Post form</title>
</head>
<body>

    <form method="post" action="/jsp/ex/ex03.jsp">
        <label>닉네임</label><input type="text" name="nickname"> <br>

        <h4>좋아하는 동물을 고르세요</h4>
        <!-- 고양이, 강아지, 호랑이 : radio -->
        <label><input type="radio" name="animal" value="cat">고양이</label>
        <label><input type="radio" name="animal" value="dog">강아지</label>
        <label><input type="radio" name="animal" value="tiger">호랑이</label>
        <br>

        <h4>좋아하는 과일을 고르세요</h4>
        <!-- 바나나, 딸기, 복숭아 -->
        <select name="fruit">
            <option value="banana">바나나</option>
            <option value="strawberry">딸기</option>
            <option>복숭아</option>
        </select>
        <br>

        <h4>좋아하는 음식을 모두 고르세요</h4>
        <!--민트초코, 하와이안피자, 번데기 -->
        <label>민트초코<input type="checkbox" name="food" value="mint"></label>
        <label>하와이안피자<input type="checkbox" name="food" value="pizza"></label>
        <label>번데기<input type="checkbox" name="food" value="pupa"></label>

        <button type="submit">입력</button>
    </form>

</body>
</html>
