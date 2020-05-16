<%@page import="org.spring.project.member.service.impl.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%

	MemberVO member = (MemberVO)request.getSession().getAttribute("member");
	String msg = (String)request.getAttribute("msg");
	
%>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
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
</head>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
	 		$(".update_btn").on("click", function(){
	 		
				formObj.attr("action", "/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			});
			
			
			
		/* 	
			$(".update_btn").attr({
				action:"/updateView",
				method:"POST"
			});
			$(".update_btn").submit();
			 */
			
			// 삭제
			$(".delete_btn").on("click", function(){
				
				var deleteYN = confirm("삭제하시겠습니까?");
				if(deleteYN == true){
					
				formObj.attr("action", "/delete");
				formObj.attr("method", "post");
				formObj.submit();
					
				}
			})
			
			// 취소
			$(".boardlist_btn").on("click", function(){
				
				location.href = "/main";
			})
			$(".replyWriteBtn").on("click", function(){
				
				var formObj = $("form[name='replyForm']");
				  formObj.attr("action", "/replyWrite");
				  formObj.submit();
				});
		})
</script>
<body>
	<header><h1> 게시판</h1></header>
		
		
	<div class="container">	
	<form name="readForm" method=post>
		<input type="hidden" value="${read.bno }" id="bno" name="bno"/>
	</form>
		<label for="title">제목</label><input type="text" value="${read.title }" id="title" name="title" readonly="readonly"/>
		<label for="content">내용</label><textarea id="content" name="content" readonly="readonly" style="height:200px"><c:out value="${read.content }"/></textarea>
		<label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${read.writer}" readonly="readonly"/>
		<label for="regdate">작성날짜</label><fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd"/>					
	<div>
	
	<%if(member !=null){ 
		if("Y".equals(msg)){
	%>
		
	 
		<button  class="update_btn">수정</button>
		<button  class="delete_btn">삭제</button>
	
	<%	} 
	}%>
		<button  class="boardlist_btn">목록</button>
	</div>
	<div id="reply">
  <ol class="replyList">
    <c:forEach items="${replyList}" var="replyList">
      <li>
        <p>
		 작성자 : ${replyList.writer}<br />
		작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd" />
        </p>

        <p>${replyList.content}</p>
        
        <div>
        <%if(member !=  null){ 
        	if("Y".equals(msg)){
        	%>
        	
 	 		<button type="button" class="replyUpdateBtn" data-rno="${replyList.rno}">수정</button>
  			<button type="button" class="replyDeleteBtn" data-rno="${replyList.rno}">삭제</button>
  		<%	} 
        }
  		%>
		</div>
      </li>
    </c:forEach>   
  </ol>
</div>
<form name="replyForm" method="post">
  <input type="hidden" id="bno" name="bno" value="${read.bno}" />
 

  <div>
  	<%if(member !=null){ %>
    	<input type="hidden" id="writer" name="writer"  value="<%=member.getUserId()%>"/>
    <br/>
    <label for="content">댓글 내용</label><input type="text" id="content" name="content" />
  </div>
  <div>
 	 <button type="button" class="replyWriteBtn">작성</button>
  </div>
    <%}%>
</form>
	</div>
	
</body>
</html>