<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 작성</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/makeBoard.css">
</head>
<body>

    <div>
        <br>
        <form action="${contextPath}" method="POST" name="board1" value="board1" onsubmit="return boardValidate()">
            날짜 <input type="date" name="date1" id="date1" class="input1"> 
             &nbsp 작성자 <input type="text" id="writer1" name="writer1"><br><br>
           
            이미지  <input type="file" name="image1" id="file1" class="input1"><br><br>
            제목 <input type="text" name="title1" id="text1" class="input1"><br><br>
            <textarea name="textarea1" id="textarea1" cols="100" rows="50" class="input1"></textarea>
           <br><br> <button id="btn1">등록하기</button><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </form>

    </div>
	

</body>
</html>