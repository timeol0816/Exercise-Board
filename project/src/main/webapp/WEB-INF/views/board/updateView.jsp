<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$(".cancel_btn").on("click",function(){
			event.preventDefault();
			location.href = "/main";
		})
		
		$(".update_btn").on("click", function(){
			if(fn_valiChk()){
				return false;
			}
			formObj.attr("action", "/update");
			formObj.attr("method", "post");
			formObj.submit();
		})
	})
		
	function fn_valiChk(){
		var updateForm = $("form[name='updateForm'] .chk").length;
		for(var i = 0; i<updateForm; i++){
			if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
				alert($(".chk").eq(i).attr("title"));
				return true;
			}
		}
	}

</script>
	
	
<body>
<header><h1>게시판</h1></header>
	
	<div class="container">	
	<form name="updateForm" method="post" action="/update">
		<input type="hidden" id="bno" name="bno" value="${update.bno }" readonly="readonly">	
			<label for="title">제목</label><input type="text" id="title" name="title" value="${update.title }" class="chk" title="제목을 입력하세요.">
			<label for="content">내용</label><textarea id="content" name="content" style="height:200px"class="chk" title="내용을 입력하세요."><c:out value="${update.content }" /></textarea>
			<label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly" /> 
			<label for="regdate">작성날짜</label><fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd"/>					
			
		<div>
			<button type="submit" class="update_btn">저장</button>
			<button class="cancel_btn">취소</button>
		</div>
	</form>
	</div>
</body>
</html>