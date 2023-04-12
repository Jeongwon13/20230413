<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 등록</title>
 
    <script src="https://kit.fontawesome.com/a2e8ca0ae3.js" crossorigin="anonymous"></script>

</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
 	
 	<form action="insertBoard" enctype="multipart/form-data" method="POST" onsubmit="return writeValidate()">
 		<h1>
 			<input type="text" name="boardTitle" placeholder="제목을 입력해주세요." value="${detail.boardTitle}">
 		</h1>
 		<c:choose>
 			<c:when test="${boardImage.imageLevel==0}">
 				
 			</c:when>
 			
 		</c:choose>
 		
 	</form>
 	
 	
	</main>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    

    <script src="${contextPath}/resources/js/board/board.js"></script>
    <script src="${contextPath}/resources/js/board/boardWriteForm.js"></script>


</body>
</html>