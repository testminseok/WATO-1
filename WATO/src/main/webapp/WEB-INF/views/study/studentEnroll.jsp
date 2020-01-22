<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

<style media="screen">
 #top{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
        background-color: #e0e0e0;
    }
    #studyusnav{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #search{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #new{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #content{
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #footer {
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 53.8%;
    }
    #navigation > ul > li > ul {
        width: 100.3%;
    }
    #hot{
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .cate_list{
        padding-bottom: 10px;
    }
    .cate_list a {
        float: left;
        display: block;
        width: 33%;
        text-align: center;
        padding: 5px 0;
        color: #27323c;
    }
    .cate_list a > * {
        display: inline-block;
        font-size: 13px;
    }
    .cate_list > a > span > img {
        max-width: 100%;
        vertical-align: middle;
        border: 0;
    }
    #icon{
        position: static;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    #all{
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .carousel-item {
        height: 50vh;
        min-height: 350px;
        background: no-repeat center center scroll;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    #blog-homepage{
        position: static; 
        margin-left: auto; 
        margin-right: auto;
        width: 53.8%;
    }
    .imgrank img{
	    position:absolute;
	    background:none;
	 	width:100%;
	 	height: auto;
	 	max-width: 40px; 
	 	z-index: 10;
	 }
	 .container-login100 { 
	  width: 100%;  
	  min-height: 80vh; 
	  display: -webkit-box; 
	  display: -webkit-flex; 
	  display: -moz-box; 
	  display: -ms-flexbox; 
	  display: flex;  
	  flex-wrap: wrap;  
	  justify-content: center;   
	  align-items: center; 
	  padding: 15px;
	  background: none; 
	}
	.limiter {
	  width: 100%;
	  margin: 0 auto;
	}
	.close-button {
    transition: all 0.5s ease;
    position: absolute;
    background-color: #4FBFA8;
    padding: 1.5px 7px; 
    right: 0;
    margin-left: -10px;
    margin-top: -9px;
    border-radius: 50%;
    border: 2px solid #fff;
    color: white;
    -webkit-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    -moz-box-shadow: -4px -2px 6px 0px rgba(0,0,0,0.1);
    box-shadow: -3px 1px 6px 0px rgba(0,0,0,0.1);
	} 
	
	.close-button:hover {
	    background-color: tomato;
	    color: #fff;
	} 
	body{
	 background-color: #e0e0e0;
	 }
.btn-circle.btn-xl {
  width: 60px;
  height: 60px;
  padding: 5px 5px 5px 5px;
  border-radius: 35px;
  font-size: 24px;
  line-height: 1.33;
}

.btn-circle {
  width: 30px;
  height: 30px;
  padding: 0px 0px;
  border-radius: 15px;
  text-align: center;
  font-size: 12px;
  line-height: 1.42857;
}
#input_img{
  width:200px;;
  height: 200px;

}
#img_btn_0:hover{

}
#text{
 display: none;
}

</style>
</head>
<body>
<!-- navbar-->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top w-100">
        <div class="container w-100"> 
            <div class="row ">
                <div class="w-100 col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">회원가입 하러 가기</a><a href="#" class="ml-1 text-black-50 font-weight-bold">지금 회원가입하면 500원</a></div>
                <div class="w-100 col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0 w-100">
                    <c:choose>
                    <c:when test="${user != null}"> 
                        <li class="list-inline-item">${user.m_user_id } 님 환영합니다.</li>
                        <li class="list-inline-item"><a href="login/logout"class="text-black-50 font-weight-bold">로그아웃</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="list-inline-item"><a href="login/login" data-toggle="modal" data-target="#modal" class="text-black-50 font-weight-bold">로그인</a></li>
                    </c:otherwise>
                    </c:choose>
                        <li class="list-inline-item"><a href="login/join" class="text-black-50 font-weight-bold">회원가입</a></li>
                        <li class="list-inline-item"><a href="contact.jsp" class="text-black-50 font-weight-bold">문의하기</a></li>
                        <li class="list-inline-item"><a href="#" class="text-black-50 font-weight-bold">내정보수정</a></li>
                    </ul>
                </div>
            </div>
        </div> 
        <div class="row "> 
			<div class="modal fade" id="modal" tabindex="-1"> 
				<div class="modal-dialog modal-lg">  
					<div class="modal-content" style="background: none; border: 0px">   
						<div class="modal-body"> 
							<div class="limiter">
								<button class="close-button" data-dismiss="modal">&times;</button> 
								<div class="container-login100">   
										<%@ include  file="../include/loginform.jsp"%>
								</div>
							</div>  
						</div> 
					</div>
				</div>
			</div>  
		</div>
        <!-- *** TOP BAR END ***-->

 
    </div> 
    <nav id="studyusnav" class="navbar navbar-expand-lg w-100">  
        <div class="container"><a href="/" class="navbar-brand home"><img src="../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="./resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.jsp" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
            </div>  
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">스터디<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row"> 
                                    <div class="col-md-6 col-lg-3">
                                        <h5>친목도모</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="/study/studentEnroll" class="nav-link">일반스터디등록</a></li>
                                            <li class="nav-item"><a href="/study/teacherEnroll" class="nav-link">강의등록</a></li>
                                            <li class="nav-item"><a href="/study/studyBoard" class="nav-link">스터디탐방</a></li>
                                            <li class="nav-item"><a href="/study/classBoard" class="nav-link">강의탐방</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>동영상 강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">비주얼베이직</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자바</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">기타</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>IT공부</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">프로그래밍 언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">서버, 시스템</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">네트워크</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">데이터베이스</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">화이트 해커 / 해킹</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자격증</a></li>
                                        </ul>
                                    </div>
                                    
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">그룹장<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row">

                                    <div class="col-md-6 col-lg-3">
                                        <h5>친목도모</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">스터디</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">과외</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">Q&A</a></li>
                                        </ul>
                                    </div> 
                                    <div class="col-md-6 col-lg-3">
                                        <h5>동영상 강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C언어</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">비주얼베이직</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">자바</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">기타</a></li>
                                        </ul>
                                    </div>
                                    
            <div class="col-md-6 col-lg-3">
                <div class="banner"><a href="#"><img src="./resource/images/banner.jpg" alt="" class="img img-fluid"></a></div>
                <div class="banner"><a href="#"><img src="./resource/images/banner2.jpg" alt="" class="img img-fluid"></a></div>
            </div>
        </div>
                            </li>
                        </ul>  
                    </li> 
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">더보기<b class="caret"></b></a>
                        <ul class="dropdown-menu megamenu">
                            <li>
                                <div class="row">
                                    <div class="col-md-6 col-lg-3">
                                        <h5>공지사항</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="index.jsp" class="nav-link">학생</a></li> 
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">그룹장</a></li>
                                            <li class="nav-item"><a href="category-right.jsp" class="nav-link">업체</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>회원</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="register.jsp" class="nav-link">로그인 / 가입하기</a></li>
                                            <li class="nav-item"><a href="customer-orders.jsp" class="nav-link">주문 내역</a></li>
                                            <li class="nav-item"><a href="customer-order.jsp" class="nav-link">주문 내역 더보기</a></li>
                                            <li class="nav-item"><a href="customer-wishlist.jsp" class="nav-link">장바구니</a></li>
                                            <li class="nav-item"><a href="customer-account.jsp" class="nav-link">회원정보 수정</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <h5>등록</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="basket.jsp" class="nav-link">그룹장 등록</a></li>
                                            <li class="nav-item"><a href="checkout1.jsp" class="nav-link">업체 등록</a></li>
                                            <li class="nav-item"><a href="checkout2.jsp" class="nav-link">광고 문의</a></li>
                                        </ul>
                                    </div>
                                       
                                </div>  
                            </li>
                        </ul>   
                    </li>
                    <li class="nav-item menu-large"><a href="/board/studylist"  class="nav-link" >스터디찾기<b class="caret"></b></a> 
                </ul>    
                <form role="search" class="ml-auto" method="post" action="/board/searchResult">
                    <div class="input-group">     
                        <input type="text" placeholder="Search" class="form-control" name="searchKey" id="searchKey"> 
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</header>
<form name="studyForm"class="form-horizontal" role="form" method="post" action="/study/studentEnroll">
<div class="container  mx-auto">
<!-- <1> image Enroll -->
  <div class="row mt-3 justify-content-md-center">
    <div class="col-sm-5 d-inline-block"> <!-- 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->
        <div class="form-group container-fluid">
          <div class="card">
            <label for="name" class="pb-1 row m-0 text-justify card-header cols-sm-2 control-label d-flex justify-content-center"><h4>사진등록</h4></label>
            <div id="img-border"class="cols-sm-1 d-inline-block d-flex justify-content-center">
              <div class="card-body">
                <div class="input-group d-flex justify-content-center">
<!-- s_photo -->     <img id="input_img" src="../resources/imgs/studyUs.png" alt="이미지">
                </div>
              </div>
            </div>

<!-- button Enroll -->
            <!-- <div class="cols-sm-5">
            <div class="form-group"> -->
            <div class="cols-sm-5 pb-5 pr-2 pl-2">
              <div class="input-group d-flex justify-content-center ">
                <img id="img_btn_0" src="../resources/imgs/studyUs.png"  class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="studyUs">&nbsp;&nbsp;
                <img id="img_btn_1" src="../resources/imgs/java1.jpeg" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_2" src="../resources/imgs/js1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_3" src="../resources/imgs/cplus.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_4" src="../resources/imgs/php1.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
                <img id="img_btn_5" src="../resources/imgs/android.png" class="img-circle btn btn-outline-secondary btn-circle btn-xl w-1" alt="Cinque Terre">&nbsp;&nbsp;
              </div>
            </div>
            <!-- </div>
          </div> -->
          </div>
        </div>
<!-- // button Enroll -->
<!-- 스터디 기간 설정  -->


<div class="form-group container-fluid d-inline-block">
    <div class="card">
    <label for="name" class="pb-1 row m-0 card-header cols-sm-3 control-label d-flex justify-content-center"><h4>스터디 기간</h4></label>
    <div class="card-body">
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	          <label for="start" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">시작</label>&nbsp;&nbsp;
<!-- s_startDate  -->	<input type="date" name="s_startDate"  class="form-control col-sm-8" id="start"  value=""/>
	    </div>
	    <div class="input-group d-flex justify-content-center">
	       <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
	          <label for="end" class="cols-sm-2 d-flex p-2 control-label font-weight-bold">&nbsp;&nbsp;&nbsp;끝&nbsp;</label>&nbsp;&nbsp;
<!-- s_endtDate  -->	<input type="date" name="s_endDate" class="form-control col-sm-8 " id="end" value=""/>
	    </div>
    	<div class="form-group">
           <div class="cols-sm-10">
              <div class="input-group d-flex justify-content-center ">
                 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                	<!-- 월요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                      <input type="checkbox" class="form-check-input" id="mon" value="월">
                      <label class="form-check-label" for="mon">월</label>
                    </div>

                    <!-- 화요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="tue" value="화" >
                        <label class="form-check-label" for="tue">화</label>
                    </div>

                    <!-- 수요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="wed" value="수">
                        <label class="form-check-label" for="wed">수</label>
                    </div>

                    <!-- 목요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="thu" value="목">
                        <label class="form-check-label" for="thu">목</label>
                    </div>

                    <!-- 금요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="fri" value="금">
                        <label class="form-check-label" for="fri">금</label>
                    </div>

                    <!--  토요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sat" value="토">
                        <label class="form-check-label" for="sat">토</label>
                    </div>

                    <!-- 일요일 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="sun" value="일">
                        <label class="form-check-label" for="sun">일</label>
                    </div>

                    <!-- 추후결정 -->
                    <div class="form-check form-check-inline cols-sm-2">
                        <input type="checkbox" class="form-check-input" id="other" value="추후결정">
                        <label class="form-check-label" for="other">추후결정</label>
                    </div>
                  </div>
<!-- 요일체크 -->    <div id="nullText" class=" d-flex pt-2 d-flex justify-content-center"></div>
              </div>
           </div>
        </div>
      </div>
    </div>
  </div>
<!-- // 스터디 기간 설정  -->
<!-- // 왼쪽 영역 div ( 이미지, 날짜 선택 ) -->




<!-- <2> Study Info Enroll -->
    <div class="col-md-7 d-inline-block">
      <div class="card">
        <div class="pb-1 row m-0 card-header font-weight-bold d-flex justify-content-center"><h4>스터디 모집 등록</h4></div>
          <div class="card-body">
            <div class="form-group">
                <div class="form-group d-inline-block m-0 p-0 d-flex justify-content-between ">
                    <label for="level" class="pt-1 mt-1 control-label font-weight-bold w-25">난이도</label>
	                      <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
<!-- s_level -->	      <select name="s_level" class="selectpicker form-control w-50" >
    										  <option value="입문"selected="selected">입문</option>
    										  <option value="초급">초급</option>
    										  <option value="중급">중급</option>
    										  <option value="고급">고급</option>
    										</select>

                     <label for="people" class="pt-1 mt-1 pl-4 control-label font-weight-bold w-25">인원수</label>
	                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
<!-- s_people --> 	      		<input type="text" class="form-control" name="s_people" id="s_people" placeholder="인원을 정해주세요!" />
	               	
                </div>
            </div>

                      <div class="form-group">
                          <label for="s_category" class="cols-sm-2 control-label font-weight-bold">카테고리</label>
                          <label id="s_category" class="cols-sm-2 control-label font-weight-bold"></label>
                          <div class="cols-sm-10">
                            <div class="input-group">
	                           <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
<!-- s_category -->	             <input type="text" name="s_category" class="form-control"  id="category" placeholder="과목 카테고리를 알려주세요!" />
                           </div>
                         </div>
                      </div>
                      <div class="form-group">
                          <label for="s_title" class="cols-sm-2 control-label font-weight-bold">강의 주제</label>
                          <label id="s_title" class="cols-sm-2 control-label font-weight-bold"></label>
                             <div class="cols-sm-10">
                                <div class="input-group">
                                   <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
  <!-- s_title -->                    <input type="text"  name="s_title" class="form-control" id="stitle" placeholder="그룹의 스터디 주제를 알려주세요!" />
                                </div>
                             </div>
                      </div>


                   <!-- 우편번호 찾기 API -->
                   <div class="form-group">
                       <label for="username" class="cols-sm-2 control-label font-weight-bold">스터디 장소
                       		&nbsp;&nbsp;&nbsp;&nbsp;<small><kbd>그룹원과 함께할 장소를 알려주세요!</kbd></small>
                       </label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                       <div class="d-inline row mx-md-n6">
                                <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                               <!--  <input type="text" class="form-control" name="schedule" id="schedule" placeholder="함께 모일 장소를 알려주세요!" /> -->
                                <input type="button" class="btn btn-primary box " id="execDaumPostcode" value="우편번호 찾기">
                         </div>

                          <div class="cols-sm-10">
                            <div class="input-group mt-1 mb-1">
                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
  <!-- s_postnum -->            <input type="text"  name="s_postnum" class="form-control" id="postcode"  placeholder="우편번호" required>
                            </div>
                          </div>
                          <div class="cols-sm-10 mb-1 ">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <input type="text"  class="form-control" id="roadAddress" placeholder="도로명주소" required>
                            </div>
                          </div>
                          <div class="cols-sm-10 mb-1">
                            <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" id="jibunAddress" placeholder="지번주소" required>
                           </div>
                          </div>
                    </div>
                    <!-- // 우편번호 찾기 API -->
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">그룹장의 소개를 해주세요!!!&nbsp;&nbsp;&nbsp;<span id="cnttxt1"></span></label>
                           <div class="cols-sm-10">
                             <div class="md-form">
 <!-- s_intro -->              <textarea id="s_intro" name="s_intro"  class="md-textarea form-control" rows="6" placeholder="나를 어필해보세요!!!!"></textarea>
                             </div>
                           </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label font-weight-bold">스터디 상세내용&nbsp;&nbsp;&nbsp;<span id="cnttxt2"></span></label>
                           <div class="cols-sm-10">
                             <div class="md-form">
 <!-- s_content -->              <textarea id="s_content" name="s_content" class="md-textarea form-control" rows="6" placeholder="그룹을 상세히 설명해주시면 더욱 확실한 그룹원을 모집할 수 있어요!"></textarea>
                             </div>
                           </div>
                    </div>
                     <div class="form-group ">
  <!-- s_userId -->         <input type="hidden"name="s_userId" class="form-control"  id="userId"  value="${user.m_user_id }"/>
  <!-- s_photo -->          <input type="hidden" name="s_photo" id="photoval" value="">
  <!-- s_place -->          <input type="hidden" name="s_place" id="Place" value="" >
  <!-- s_day -->			<input type="hidden" name="s_day"  class="form-control" id="schedule" />
                          <button type="button" id="enroll_btn" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                      </div>

          </div>
        </div>
      </div>
    </div> <!-- 2-->
</div><!--  1 -->
 </form>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"> 

$(document).ready(function($){

// 조건_____________

$("#s_intro").keyup(function (event) {
	var content1 = $(this).val();
	$('#cnttxt1').html("("+content1.length+" / 최대 3000 자)");
	
	if (content1.length > 3000) {
		alert("최대 3000자까지 입력 가능합니다.");
		
		$(this).val(content1.substring(0, 3000));
		$('#cnttxt1').html("(3000 / 최대  3000 자)");
	}
});

$("#s_content").keyup(function (event) {
	var content2 = $(this).val();
	$('#cnttxt2').html("("+content2.length+" / 최대 3000 자)");
	
	if (content2.length > 3000) {
		alert("최대 3000자까지 입력 가능합니다.");
		
		$(this).val(content2.substring(0, 3000));
		$('#cnttxt2').html("(3000 / 최대  3000 자)");
	}
});



$('#enroll_btn').click(function(){


   var road =  document.getElementById('roadAddress').value;
   var jibun =  document.getElementById('jibunAddress').value;

   var s_place = road+"/"+jibun;
   document.getElementById('Place').value = s_place;


/* null 확인  */
  var s_category = document.getElementById('category');
  var s_title = document.getElementById('stitle');
  var s_day = document.getElementById('schedule');


  if ((s_category.value == null || s_category.value == "")) {

		 $('#s_category').css('color','red');
		 $('#s_category').text("카테고리를 작성하십시오.");
	  

 }
  if ( s_title.value == null || s_title.value =="") {
     $('#s_title').css('color','red');
     $('#s_title').text("스터디주제를 작성하십시오.");

    }

  if (s_day.value == null || s_day.value == "") {
    $('#nullText').css('color','red');
   $('#nullText').text("구체적인 날짜를 정해주십시오.");

 }

 if ($('#start').val() > $('#end').val()) {
		alert('날짜를 다시 입력해주세요'); 
	}
  if (s_day.value != null &&s_day.value != "" && s_day.value !="구체적인 날짜를 정해주십시오."&& s_category.value != null && s_category.value != "카테고리를 작성하십시오." && s_category.value != "" && s_title.value != "스터디주제를 작성하십시오."&& s_title.value != null && s_title.value !="" && !($('#start').val() > $('#end').val())) {
   document.studyForm.submit();
 }

});



// 우편번호 검색 ___________________________________________________________

	  $("#execDaumPostcode").click(function sample4_execDaumPostcode() {
	      new daum.Postcode(
	              {
	                  oncomplete : function(data) {

	                	  // 도로명 주소 변수
	                      var fullRoadAddr = data.roadAddress;
	                      // 도로명 조합형 주소 변수
	                      var extraRoadAddr = '';

	                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                      if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
	                          extraRoadAddr += data.bname;
	                      }
	                      // 건물명이 있고, 공동주택일 경우 추가한다.
	                      if (data.buildingName !== ''
	                              && data.apartment === 'Y') {
	                          extraRoadAddr += (extraRoadAddr !== '' ? ', '
	                                  + data.buildingName : data.buildingName);
	                      }
	                      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                      if (extraRoadAddr !== '') {
	                          extraRoadAddr = ' (' + extraRoadAddr + ')';
	                      }
	                      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                      if (fullRoadAddr !== '') {
	                          fullRoadAddr += extraRoadAddr;
	                      }

	                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                      document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
	                      document.getElementById('roadAddress').value = fullRoadAddr;
	                      document.getElementById('jibunAddress').value = data.jibunAddress;

	                      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                      if (data.autoRoadAddress) {
	                          //예상되는 도로명 주소에 조합형 주소를 추가한다.
	                          var expRoadAddr = data.autoRoadAddress
	                                  + extraRoadAddr;
	                          document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
	                                  + expRoadAddr + ')';

	                      } else if (data.autoJibunAddress) {
	                          var expJibunAddr = data.autoJibunAddress;
	                          document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
	                                  + expJibunAddr + ')';

	                      } else {
	                          document.getElementById('guide').innerHTML = '';
	                      }
	                  }
	              }).open();
	  });

// 요일 선택___________________________________________________________

	$(".form-check-input").click(function(){
		var str = "";
		$(".form-check-input").each(function(){
			if($(this).is(":checked"))
				str += $(this).next().text() + " ";
		});
				document.getElementById("schedule").value= str;
        $('#nullText').css("color","green");
        $("#nullText").text(str);
	});


// 이미지 버튼___________________________________________________________

	/*   var photo = document.getElementById("input_img");
	  var photoSrc = photo.getAttribute('src');
	  document.getElementById('photoval').value = photoSrc; */


	  var img0 = $('#img_btn_0').attr('src');
	  var img1 = $('#img_btn_1').attr('src');
	  var img2 = $('#img_btn_2').attr('src');
	  var img3 = $('#img_btn_3').attr('src');
	  var img4 = $('#img_btn_4').attr('src');
	  var img5 = $('#img_btn_5').attr('src');

	  $('#img_btn_0').on({'click': function(){
	        $('#input_img').attr('src',img0);
	        document.getElementById("category").value = "직접입력";
	     }
	 });
	  $('#img_btn_1').on({'click': function(){
	        $('#input_img').attr('src',img1);
	        document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
	        document.getElementById("category").value = "자바";
	     }
	 });

	 $('#img_btn_2').on({'click': function(){
	        $('#input_img').attr('src',img2);
	        document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
	        document.getElementById("category").value = "자바스크립트";
	    } 
	});

	$('#img_btn_3').on({'click': function(){
	       $('#input_img').attr('src',img3);
	       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
	       document.getElementById("category").value = "C언어";
	   }
	});

	$('#img_btn_4').on({'click': function(){
	       $('#input_img').attr('src',img4);
	       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
	       document.getElementById("category").value = "파이썬";
	   }
	 });

	$('#img_btn_5').on({'click': function(){
	       $('#input_img').attr('src',img5);
	       document.getElementById('photoval').value = document.getElementById('input_img').getAttribute('src');
	       document.getElementById("category").value = "안드로이드";
	   }
	});

});
</script>
</body>
</html>





