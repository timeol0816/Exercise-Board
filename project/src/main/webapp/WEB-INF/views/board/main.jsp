<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

</style>


<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<title>Exercise Home</title>
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

    <div class="site-wrap">
      
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
                  <h2 class="heading mb-5">Exercise</h2>
                  <p><a href="#section-communication" class="smoothscroll btn btn-outline-white px-5 py-3">Communication</a></p>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- .cover_1 -->

        <div class="section"  data-aos="fade-up">
          <div class="container">
            <div class="row section-heading justify-content-center mb-5">
              <div class="col-md-8 text-center">
                <h2 class="heading mb-3">Making a Healthy Body</h2>
                <p class="sub-heading mb-5">Focus on three things.</p>  
              </div>
            </div>
            <div class="row">

              <div class="ftco-46">
                <div class="ftco-46-row d-flex flex-column flex-lg-row">
                  <div class="ftco-46-image" style="background-image:url(/resources/images/top_1.jpg);"></div>
                  <div class="ftco-46-text ftco-46-arrow-left">
                    <h4 class="ftco-46-subheading">Nutrition</h4>
                    <h3 class="ftco-46-heading">sufficient nutrition</h3>
                    <p class="mb-5">Exercise, rest, and proper nutrition management are the most important things to improve your stamina through weight training, and especially to gain strong muscle strength through exercise, it is desirable to eat a diet that increases protein intake.</p>
                    <p><a href="#" class="btn-link">Learn More <span class="ion-android-arrow-forward"></span></a></p>
                  </div>
                  <div class="ftco-46-image" style="background-image:url(/resources/images/top_2.jpg);"></div> 
                </div>

                <div class="ftco-46-row d-flex flex-column flex-lg-row">
                  <div class="ftco-46-text ftco-46-arrow-right">
                    <h4 class="ftco-46-subheading">Training</h4>
                    <h3 class="ftco-46-heading">proper training</h3>
                    <p class="mb-5">The first element of training weight training is that you can exercise about 10 to 15 times with a weight equal to 233 of your maximum ability to increase muscle strength with proper training.</p>
                    <p><a href="#" class="btn-link">Learn More <span class="ion-android-arrow-forward"></span></a></p>
                  </div>
                  <div class="ftco-46-image" style="background-image:url(/resources/images/top_3.jpg);"></div>
                  <div class="ftco-46-text ftco-46-arrow-up">
                    <h4 class="ftco-46-subheading">Rest</h4>
                    <h3 class="ftco-46-heading">sufficient rest</h3>
                    <p class="mb-5">Most people think that the effect of training only occurs during the exercise, but the effect of training occurs during the rest period, so it is necessary to take a proper rest when the event changes during the exercise and the set, especially when the fatigue builds up rapidly during the exercise, and it is important to maintain a good condition with a small number of recovers.</p>
                    <p><a href="#" class="btn-link">Learn More <span class="ion-android-arrow-forward"></span></a></p>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div> <!-- .section -->

        <div class="section pb-3 bg-white" id="section-about" data-aos="fade-up">
          <div class="container">
            <div class="row align-items-center justify-content-center">
              <div class="col-md-12 col-lg-8 section-heading">
                <h2 class="heading mb-5">About This Homepage</h2>
                <p>This homepage exists to provide information to people who start exercising for the first time.</p>
                <p>If you have any questions, please leave them on QnA and we will update them.</p>
              </div>
            </div>
          </div>
        </div> <!-- .section -->
        

        <div class="section bg-white pt-2 pb-2 text-center" data-aos="fade">
          <p><img src="/resources/images/bg_middle.jpg" alt="Image" class="img-fluid"></p>
        </div> <!-- .section -->

        <div class="section bg-white" data-aos="fade-up">
          <div class="container">
            <div class="row mb-5">
              <div class="col-md-12 section-heading text-center">
                <h2>Homepage Operator</h2>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 pr-md-5 text-center mb-5">
                <div class="ftco-38">
                  <div class="ftco-38-img">
                    <div class="ftco-38-header">
                      <img src="/resources/images/muscle_1.jpg;" alt="Image">
                      <h3 class="ftco-38-heading">Daniel Graham</h3>
                      <p class="ftco-38-subheading">Trainer</p>
                    </div>
                    <div class="ftco-38-body">
                      <p>I look forward to your kind cooperation..</p>
                      
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 pl-md-5 text-center mb-5">
                <div class="ftco-38">
                  <div class="ftco-38-img">
                    <div class="ftco-38-header">
                      <img src="/resources/images/muscle_2.jpg" alt="Image">
                      <h3 class="ftco-38-heading">Nick Browning</h3>
                      <p class="ftco-38-subheading">Trainer</p>
                    </div>
                    <div class="ftco-38-body">
                      <p>I look forward to your kind cooperation.</p>
                   
                    </div>
                  </div>
                </div>
              </div>
              <!-- <div class="col-md-4"></div> -->
            </div>
          </div>
        </div> <!-- .section -->

        <div class="section bg-light" id="section-menu" data-aos="fade-up">
          <div class="container">
            <div class="row section-heading justify-content-center mb-5">
              <div class="col-md-8 text-center">
                <h2 class="heading mb-3">Notice</h2>
                <p class="sub-heading mb-5">Please check the announcement.</p>  
              </div>
            </div>
            <div class="row justify-content-center">
              <div class="col-md-8">
                <ul class="nav site-tab-nav" id="pills-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="sports-tab" data-toggle="pill" href="#sports" role="tab" aria-controls="sports" aria-selected="true">Sports</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="supplemental-tab" data-toggle="pill" href="#supplemental" role="tab" aria-controls="supplemental" aria-selected="false">Supplemental</a>
                  </li>
               
                </ul>
                
                
                <div class="tab-content" id="pills-tabContent">
                  <div class="tab-pane fade show active" id="sports" role="tabpanel" aria-labelledby="sports-tab">
                    <div class="d-block d-md-flex menu-food-item">

                      <div class="text order-1 mb-3">
                        <img src="/resources/images/sports1.jpg" alt="Image">
                       <h3><a href="#">Bench press</a></h3>
                        <p>The best bench press is cheap.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$10.49</strong>
                      </div>
                    </div> <!-- .menu-food-item -->

                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-3">
                        <img src="/resources/images/sports2.jpg" alt="Image">
                       <h3><a href="#">Dumbbell</a></h3>
                        <p>Biceps, triceps, chest and shoulder exercises are all possible.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$11.99</strong>
                      </div>
                    </div> <!-- .menu-food-item -->

                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-3">
                        <img src="/resources/images/sports3.jpg" alt="Image">
                       <h3><a href="#">Squawtrack</a></h3>
                        <p>It is strong enough to withstand heavy weight.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$11.99</strong>
                      </div>
                    </div> <!-- .menu-food-item -->




                  </div>
                  <div class="tab-pane fade" id="supplemental" role="tabpanel" aria-labelledby="supplemental-tab">
                    
                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-3">
                        <img src="/resources/images/supplemental1.jpg" alt="Image">
                        <h3><a href="#">Optimum Gold Standard Way</a></h3>
                        <p>Optimum Gold Standard Way is high in protein.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$12.49</strong>
                      </div>
                    </div> <!-- .menu-food-item -->

                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-3">
                        <img src="/resources/images/supplemental2.jpg" alt="Image">
                        <h3><a href="#">Syntha-6</a></h3>
                        <p>synta is very high in protein.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$15.99</strong>
                      </div>
                    </div> <!-- .menu-food-item -->

                    <div class="d-block d-md-flex menu-food-item">
                      <div class="text order-1 mb-3">
                        <img src="/resources/images/supplemental3.jpg" alt="Image">
                        <h3><a href="#">Protain Monster</a></h3>
                        <p>Protein monster has a monstrous protein.</p>
                      </div>
                      <div class="price order-2">
                        <strong>$10.99</strong>
                      </div>
                    </div> <!-- .menu-food-item -->

                    

                  </div>
                  
                </div>
              </div>
              
            </div>
          </div>
        </div> <!-- .section -->













        <div class="section bg-white services-section" data-aos="fade-up">
          <div class="container">
            <div class="row section-heading justify-content-center mb-5">
              <div class="col-md-8 text-center">
                <h2 class="heading mb-3">Our Services</h2>
                <p class="sub-heading mb-5">Free Website Template For Restaurants Made by Colorlib</p>  
              </div>
            </div>
            <div class="row">
              <div class="col-m mb-5d-6 col-lg-4" data-aos="fade-up">
                <div class="media feature-icon d-block text-center">
                  <div>
                  	<img src="/resources/images/icon1.png" style="width:180px; height:150px;"/>
                  	
                  </div>
                  <div class="media-body">
                    <h3>SALE</h3>
                    <p>We sell sports-related items.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">
                <div class="media feature-icon d-block text-center">
                   <div>
                  	<img src="/resources/images/icon2.png" style="width:150px; height:150px;"/>
                  	
                  </div>
                  <div class="media-body">
                    <h3>information</h3>
                    <p>information provision</p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
                <div class="media feature-icon d-block text-center">
                  <div>
                  	<img src="/resources/images/icon3.png" style="width:180px; height:150px;"/>
                  	
                  </div>
                  <div class="media-body">
                    <h3>Communication</h3>
                    <p>communication among members</p>
                  </div>
                </div>
              </div>
              

            </div>
          </div>
        </div> <!-- .section -->
        
        
         <div class="section bg-light" data-aos="fade-up" id="section-communication">
	          <div class="container">
	            <div class="row section-heading justify-content-center mb-5">
	              <div class="col-md-8 text-center">
	                <h2 class="heading mb-3">Comunication</h2>
	                <p class="sub-heading mb-5">You can communicate among the members.</p>  
	              </div>
	            </div>
	           
	           
				<form role="form" method="get">
	<table>
		<tr>
			<th style="width:10%;">번호</th>
			<th style="width:45%;">제목</th>
			<th style="width:15%;">작성자</th>
			<th style="width:20%;">작성일</th>
			<th style="width:10%;">조회수</th>
		</tr>
		<c:forEach items="${list}" var="list">
			<tr>
				<td><c:out value="${list.bno}"/></td>
				<td><a href="/readView?bno=${list.bno }"><c:out value="${list.title }"/></a></td>
				<td><c:out value="${list.writer }"/></td>
				<td><fmt:formatDate value="${list.regdate }" pattern="yyyy-MM-dd"/></td>
				<td><c:out value="${list.hit }"/></td>
			</tr>
		</c:forEach>
	
		
	</table>
	<div class="search">
    <select name="searchType">
      <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
      <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
    </select>

    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
	
    <button id="searchBtn" type="button">검색</button>
    <BR>
    <button type="button" id="writeBtn"  onClick="javascript:location.href = '/writeView';">글쓰기</button>
    <script>
      $(function(){
        $('#searchBtn').click(function() {
          self.location = "main" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
        
      });   
    </script>
  </div>

    

    
   
      
	<div >
  <ul >
    <c:if test="${pageMaker.prev}">
    	<li style="display: inline;"><a href="main${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
    </c:if> 

    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<li style="display: inline;" ><a href="main${pageMaker.makeSearch(idx)}">${idx}</a></li>
    </c:forEach>

    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    	<li style="display: inline;" ><a href="main${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
    </c:if> 
  </ul>
</div>
</form>

         

        <div class="section" data-aos="fade-up" id="section-contact">
          <div class="container">
            <div class="row section-heading justify-content-center mb-5">
              <div class="col-md-8 text-center">
                <h2 class="heading mb-3">Exercise</h2>
              </div>
            </div>
            
            
            
            <!-- 원하는 게시판 하나 더 넣으셈 -->
          </div>
        </div> <!-- .section -->

	      </div>

        <div class="map-wrap" id="map"  data-aos="fade"></div>


        <footer class="ftco-footer">
          <div class="container">
            
            <div class="row">
            <div class="col-md-4 mb-5">
              <div class="footer-widget">
                <h3 class="mb-4">About Homepage</h3>
                <p>This is a project created to create a personal project. </p>
              </div>
            </div>
            <div class="col-md-4 mb-5">
              <div class="footer-widget">
                <h3 class="mb-4">Management time</h3>
                <p>Managing from 12:00pm &mdash; 1:30pm</p>
              </div>
            </div>

            <div class="col-md-4">
             
              <div class="footer-widget">
                <h3 class="mb-4">Thank you for watching my project.</h3>
           
              </div>
            </div>

            </div>

            
          </div>
        </footer>
      
    </div>

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff7a5c"/></svg></div>

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
  </body>
</html>