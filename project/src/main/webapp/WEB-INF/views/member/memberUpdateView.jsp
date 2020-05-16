<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
	<style>

input[type=text], input[type=password] {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
</style>
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
            <li><a href="#section-home">Regist</a></li>
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
                  <h2 class="heading mb-5">LOGIN</h2>
	
		<section id="container">
			<form action="/memberUpdate" method="post">
				<div>
					<label for="userId">아이디</label>
					<input  type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
				</div>
				<div >
					<label for="userPass">패스워드</label>
					<input  type="password" id="userPass" name="userPass" />
				</div>
				<div >
					<label  for="userName">성명</label>
					<input type="text" id="userName" name="userName" value="${member.userName}"/>
				</div>
				<div >
					<button type="submit" id="submit">회원정보수정</button>
					<button  class="cencle" type="button">취소</button>
				</div>
			</form>
		</section>
		
	
	

                 
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
	<body>
		<section id="container">
			<form action="/memberUpdate" method="post">
				<div>
					<label for="userId">아이디</label>
					<input  type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
				</div>
				<div >
					<label for="userPass">패스워드</label>
					<input  type="password" id="userPass" name="userPass" />
				</div>
				<div >
					<label  for="userName">성명</label>
					<input type="text" id="userName" name="userName" value="${member.userName}"/>
				</div>
				<div >
					<button type="submit" id="submit">회원정보수정</button>
					<button  class="cencle" type="button">취소</button>
				</div>
			</form>
		</section>
		
	</body>
	
</html>