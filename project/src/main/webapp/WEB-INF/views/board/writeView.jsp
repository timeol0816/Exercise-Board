<%@page import="org.spring.project.member.service.impl.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%
    
    	MemberVO member = (MemberVO)request.getSession().getAttribute("member");
    
    
    %>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
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

input[type=submit],input[type=button] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover,input[type=button]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	 <title>게시판글쓰기</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:300,400,700,800|Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">

    <link rel="stylesheet" href="/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/css/aos.css">

    <link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    <link rel="stylesheet" href="/resources/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/resources/fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="/resources/fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body class="bg-light">

    <body data-spy="scroll" data-target="#ftco-navbar-spy" data-offset="0">

      
      <nav class="site-menu" id="ftco-navbar-spy">
        <div class="site-menu-inner" id="ftco-navbar">
          <ul class="list-unstyled">
            <li><a href="/loginView">Login</a></li>
            <li><a href="/register">Regist</a></li>
            <li><a href="#section-home">Home</a></li>
            <li><a href="#section-about">About Homepage</a></li>
            <li><a href="#section-menu">Our Menu</a></li>
            <li><a href="#section-communication">Communication</a></li>
            <li><a href="#section-contact">Exercise</a></li>
          </ul>
        </div>
      </nav>

      <header class="site-header">
        <div class="row align-items-center">
          <div class="col-5 col-md-3">
             
          </div>
          <div class="col-2 col-md-6 text-center site-logo-wrap">
            <a href="/" class="site-logo">HOME</a>
          </div>
          <div class="col-5 col-md-3 text-right menu-burger-wrap">
            <a href="#" class="site-nav-toggle js-site-nav-toggle"><i></i></a>

          </div>
        </div>
       
      </header> <!-- site-header -->
      
      
        <div class="cover_1 overlay bg-light">
          <div class="img_bg" style="background-image: url(/resources/images/slider-1.jpg);" data-stellar-background-ratio="0.5">
            <div class="container">
              <div class="row align-items-center justify-content-center text-center">
                <div class="col-md-10" data-aos="fade-up">
                  <h2 class="heading mb-5"></h2>
	<div class="container">
			<form name="writeForm" method="post" action="/write">
			<c:if test="${member.userId != null}">
				<label for="title">제목</label><input type="text" id="title" name="title" placeholder="글 제목을 입력하세요" class="chk" title="제목을 입력하세요."/>
				<label for="content">내용</label><textarea id="content" name="content" placeholder="content" style="height:200px" class="chk" title="내용을 입력하세요."></textarea>
				<label for="writer">작성자</label> <input type="text" id="writer" name="writer"  class="작성자를 입력하세요." readonly="readonly" value="<%=member.getUserId()%>">
				<button class="write_btn" type="submit">작성하기</button>
			</c:if>
			<c:if test="${member.userId == null}">
				<p>로그인 후에 작성하실 수 있습니다.</p>
			</c:if>		
			</form>
						
		</div>
                 
                </div>
              </div>
            </div>
          </div>
        </div> <!-- .cover_1 -->
         <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/jquery.waypoints.min.js"></script>

    <script src="/resources/js/bootstrap-datepicker.js"></script>
    <script src="/resources/js/jquery.timepicker.min.js"></script>
    <script src="/resources/js/jquery.stellar.min.js"></script>

    <script src="/resources/js/jquery.easing.1.3.js"></script>    

    <script src="/resources/js/aos.js"></script>


    <script src="/resources/js/main.js"></script>
</html>