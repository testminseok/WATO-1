<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>스터디어스 - 세상을 뒤흔들어라</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../resource/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../resource/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.carousel.css"> 
    <link rel="stylesheet" href="../resource/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../resource/css/style.default.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes--> 
    <link rel="stylesheet" href="../resource/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]--> 
    <link rel="icon" type="image/png" href="../resource/images/icons/favicon.ico"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
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
        text-align: center;
        background-color: #fff;
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
        
       /* input {
            background-color: #eee;
            border: none; // 그림자 제거 
            padding: 12px 15px;
            margin: 8px 0; // 위아래 간격 
        }

        #header ul li a:hover{
            background-color: #6c80b2; // 마우스 올리면 배경색 바뀜 
            color:#dddddd;
        }

        th#student {

        }

        div#join {
            padding-top: 30px;
            padding-bottom: 20px;
        }

        button#joinb:hover {
            color: #3c97bf;
            cursor: pointer; // mouse shape turn finger
            background-color: #eeeeee;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            color: #3c97bf;
        } */

        th {
            border: 1px solid #bbbbbb;
            color: #888888;
        }

        td {
            padding-left: 10px;
            border: 1px solid #bbbbbb;
        }

</style>
<body>
<!-- navbar-->
<header class="header mb-0">
    <!--
    *** TOPBAR ***
    _________________________________________________________
    -->
    <div id="top">
        <div class="container"> 
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">모두를 위한 스터디카페</a></div>
                <div class="col-lg-6 text-center text-lg-right"> 
                    <ul class="menu list-inline mb-0">
                    	<c:if test="${std == null && teach == null}">
                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#myModal" class="text-black-50 font-weight-bold">로그인</a></li>
                        </c:if>
                        <c:if test="${std != null}">
                        	<p class="list-inline-item">${std.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="../student/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm" method="get" action="/student/std_info">
				                <input type="hidden" value="${std.std_Profile}" readonly="readonly">
				                <input type="hidden" value="${std.std_Gender}" readonly="readonly">
				                <input type="hidden" value="${std.user_Email}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone1}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone2}" readonly="readonly">
								<input type="hidden" value="${std.std_Phone3}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr1}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr2}" readonly="readonly">
								<input type="hidden" value="${std.std_Addr3}" readonly="readonly">
                        	<a href="javascript:document.myForm.submit();" class="text-black-50 font-weight-bold">내정보수정</a>
                        	</form>
                        	</li>
                        </c:if>
                        <c:if test="${teach != null}">
                        	<p class="list-inline-item">${teach.user_Id}님 환영합니다!</p>
                        	<li class="list-inline-item"><a href="../teach/logout" class="text-black-50 font-weight-bold">로그아웃</a></li>
                        	<li class="list-inline-item">
                        	<form name="myForm2" method="get" action="/teach/teach_info">
				                <input type="hidden" value="${teach.teach_Profile}" readonly="readonly">
				                <input type="hidden" value="${teach.teach_Gender}" readonly="readonly">
				                <input type="hidden" value="${teach.user_Email}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Phone3}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr1}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr2}" readonly="readonly">
								<input type="hidden" value="${teach.teach_Addr3}" readonly="readonly">
                        	<a href="javascript:document.myForm2.submit();" class="text-black-50 font-weight-bold">내정보수정</a>
                        	</form>
                        	</li>
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="register.jsp" class="text-black-50 font-weight-bold">회원가입</a></li> -->
                        <c:if test="${!std.user_Id.equals('admin')}">
                        <li class="list-inline-item"><a href="contact.jsp" class="text-black-50 font-weight-bold">문의하기</a></li>
                        </c:if>
                        <c:if test="${!std.user_Id.equals('admin')}">
                        <li class="list-inline-item"><a href="/admin/adminmanage" class="text-black-50 font-weight-bold">MANAGEMENT</a></li>                        
                        </c:if>
                        <!-- <li class="list-inline-item"><a href="/admin/terms2" class="text-black-50 font-weight-bold">이용약관</a></li> -->                       
                    </ul>
                </div>
            </div>
        </div> 
        <div class="row">
	        <div id="myModal" class="modal fade" tabindex="-1">
	        	<div class="modal-dialog modal-lg">
	            	<div class="modal-content" style="background: none; border: 0px">
	            		<div class="modal-body"> 
							<div class="limiter">
								<!-- <button class="close-button" data-dismiss="myModal">&times;</button>  -->
								<div class="container-login100">   
									<%@ include  file="../admin/loginform.jsp"%> 
								</div>
							</div>  
						</div> 	                		
	            	</div>
	        	</div>
	    	</div>
    	</div>

 
    </div> 
    <nav id="studyusnav" class="navbar navbar-expand-lg">  
        <div class="container"><a href="/" class="navbar-brand home"><img src="../resource/images/studyus.png" alt="Obaju logo" class="d-none d-md-inline-block"><img src="../resource/images/logo-small.png" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.jsp" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
            </div>  
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link" style=" pointer-events: none; ">학생<b class="caret"></b></a>
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
                                    <div class="col-md-6 col-lg-3">
                                        <h5>IT정보</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">IT뉴스</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">IT취업</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">각종후기</a></li>
                                        </ul>
                                        <h5>개인강의</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">A의 강의</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">B의 강의</a></li>
                                            <li class="nav-item"><a href="category.jsp" class="nav-link">C의 강의</a></li>
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
            <div class="col-md-6 col-lg-3">
                <div class="banner"><a href="#"><img src="../resource/images/banner.jpg" alt="" class="img img-fluid"></a></div>
                <div class="banner"><a href="#"><img src="../resource/images/banner2.jpg" alt="" class="img img-fluid"></a></div>
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
                                    <div class="col-md-6 col-lg-3">
                                        <h5>관련 사이트</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="blog.jsp" class="nav-link">블로그 리스트</a></li>
                                            <li class="nav-item"><a href="post.jsp" class="nav-link">블로그 포스트</a></li>
                                            <li class="nav-item"><a href="faq.jsp" class="nav-link">FAQ</a></li>
                                            <li class="nav-item"><a href="text.html" class="nav-link">글페이지</a></li>
                                            <li class="nav-item"><a href="text-right.jsp" class="nav-link">글 오른쪽</a></li>
                                            <li class="nav-item"><a href="404.jsp" class="nav-link">404페이지</a></li>
                                            <li class="nav-item"><a href="contact.jsp" class="nav-link">연락하기</a></li>
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
<div id="all">
    <div id="content">
<!-- 최지혜 추가 -->  
		<div class="table-responsive">
        	<div><img src="../resource/images/facebook_cover_photo_1.png" width="500px;" style="margin-top: 30px;"></div>
                <div class="std_info1" style="margin-bottom: 30px; padding: 10px; background-color: #ffee76;">강사 회원가입</div>
                <div class="std_exp1" style="background-color: #dadeeb; border-top: 1px solid #999999; border-bottom: 1px solid #999999; margin-bottom: 30px;">
                    <p style="float: left; margin: 0px;"><img src="../resource/images/book_main_icon.png" width="70px;"></p>
                    <div>신청하셨을 때 입력하셨던 이메일을 정확하게 입력해주세요.
                        <p style="float: right; margin: 0px;"><img src="../resource/images/book_main_icon.png" width="70px;"></p>
                        <br>이메일이 틀릴 경우, 가입이 불가능합니다.
                    </div>
                </div>
                <c:if test="${teach == null}">
            <form name="infoForm" onsubmit="return infoCheck()" role="form" method="post" autocomplete="off">
                <div>
                    <table class="table" style="margin: auto; width: 70%;" cellspacing="0">
                        <tr>
	                        <th>아이디<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
<!-- 	                        <td><input type="text" id="User_Id" name="User_Id" size="37" maxlength="40" required oninvalid="this.setCustomValidity('필수입력사항 입니다.')" > -->
	                        <td><input type="text" id="User_Id" name="User_Id" size="37" maxlength="40">
	                        <br><div style="display: inline-block;" id="id_check"></div>
							</td>
	                        <td><button type="button" class="idCheck" onclick="fn_idChk();" style="border-radius: 10px; 
																									background-color: #77bbc2; 
																									border: 0; 
																									outline: 0; 
																									color: #fff; 
																									width: 130px; 
																									height: 40px;">아이디 중복확인</button></td>
                    	</tr>
                        <tr>
	                        <th>비밀번호<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="password" id="userPw" id="User_Pwd" name="User_Pwd" size="55" maxlength="12" placeholder="비밀번호" >
	                        <br><div style="display: inline-block;" id="pwdcheck1"></div>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>비밀번호 확인<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="password" id="userPwChk" size="55" maxlength="12" placeholder="비밀번호 확인">
	                        <br><div style="display: inline-block;" id="pwdcheck2"></div>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>이메일<img src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"></th>
	                        <td colspan="2"><input type="email" id="User_Email" name="User_Email" size="55" maxlength="50"><br><div style="display: inline-block;" id="pwdcheck"></div></td>
	                    </tr>
                    </table>
                </div>
            	
                <input type="submit" value="회원가입" style="border-radius: 10px; 
													       background-color: #77bbc2; 
													       border: 0; 
													       outline: 0; 
													       color: #fff; 
													       width: 130px; 
													       height: 40px;
													       margin-right: 30px;
													       margin-top: 30px;
													       margin-bottom: 60px;">
                <button type="reset" style="border-radius: 10px; 
											background-color: #77bbc2; 
											border: 0; 
											outline: 0; 
											color: #fff; 
											width: 130px; 
											height: 40px;
											margin-top: 30px;
											margin-bottom: 60px;">취소</button>
            </form>
            </c:if>
		</div>
	</div>
</div>
<!-- 최지혜 추가 -->   		
        <!-- 아이콘 -->

        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->

<!--
   *** BLOG HOMEPAGE ***
   _________________________________________________________
   -->
<!-- <div id="new" class="box text-center mb-0">
    <div class="container">
        <div class="col-md-12">
            <h3 class="text-uppercase">From our blog</h3>
            <p class="lead mb-0">What's new in the world of fashion? <a href="blog.jsp">Check our blog!</a></p>
        </div>
    </div>
</div> -->
<div id="blog-homepage" class="box row mb-0">
    <div class="container">
        <div class="post">
            <h4><a href="post.jsp">"취업에 도움될까" 대학생 10명 중 7명은 '아웃캠퍼스족' (예시)</a></h4>
            <p class="author-category"><a href="">파이낸셜뉴스 / 2017.06.02 / 네이버뉴스</a></p>
            <hr>
            <p class="intro">
                많은 대학생들이 학기 중에도 학교 밖에서의 활동을 하는 것으로 나타난 가운데 아웃캠퍼스 활동자의 69.1%가 이로 인해 ‘학교 생활에 지장을 겪었다’고 답해 눈길을 끌었다.
                대학생들이 느낀 지장을 살펴보면 ‘너무 많은 시간을 빼앗기거나 강의시간, 조모임이 겹치는 등의 시간 부족’을 꼽는 응답이 70.7%로 1위를 차지했다.
                2위는 ‘체력소모에 따른 피로 누적(61.7%)’이, 3위는 ‘학업에만 온전히 집중할 수 없는 점(52.2%)’이 각각 차지했다.
            </p>
            <p class="read-more"><a href="post.jsp" class="btn btn-primary">Continue reading</a></p>
        </div>
    </div>
    <!-- /#blog-homepage-->
</div>
<!-- /.container-->
<!-- *** BLOG HOMEPAGE END ***-->
<!--
*** FOOTER ***
_________________________________________________________
-->
<!--
*** FOOTER ***
_________________________________________________________
-->
<div class="box text-center mb-3" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">페이지 정보</h4>
                <ul class="list-unstyled">
                    <li><a href="text.html">회사소개</a></li>
                    <li><a href="text.html">이용약관</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a href="contact.jsp">문의하기</a></li>
                </ul>
                <hr>
                <h4 class="mb-3">회원</h4>
                <ul class="list-unstyled">
                    <li><a href="#" data-toggle="modal" data-target="#modal">로그인</a></li>
                    <li><a href="register.jsp">회원가입</a></li>
                </ul>
            </div>
            <!-- /.col-lg-3-->
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">상위 카테고리</h4>
                <h5>학생</h5>
                <ul class="list-unstyled">
                    <li><a href="category.jsp">스터디</a></li>
                    <li><a href="category.jsp">과외</a></li>
                    <li><a href="category.jsp">C언어</a></li>
                </ul>
                <h5>그룹장</h5>
                <ul class="list-unstyled">
                    <li><a href="category.jsp">스터디</a></li>
                    <li><a href="category.jsp">그룹장 등록</a></li>
                    <li><a href="category.jsp">광고 문의</a></li>
                </ul>
            </div>
            <!-- /.col-lg-3-->
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">찾아오는길</h4>
                <p><strong>강동센터</strong><br><a class="text-muted">서울특별시</a><br><a class="text-muted">강동구</a><br><a class="text-muted">천호대로 1095</a>
                    <br><a class="text-muted">2층</a><br><strong>미래능력개발교육원</strong></p><a href="contact.jsp">Go to contact page</a>
                <hr class="d-block d-md-none">
            </div>
            <!-- /.col-lg-3-->
            <div class="col-lg-3 col-md-6">
                <h4 class="mb-3">새로운 소식</h4>
                <p class="text-muted">대학생들의 핫플레이스 '미래 스터디카페 강동역점'오픈 !</p>
                <form>
                    <div class="input-group">
                        <input type="text" class="form-control"><span class="input-group-append">
                  <button type="button" class="btn btn-outline-secondary">구독하기</button></span>
                    </div>
                    <!-- /input-group--> 
                </form>
                <hr>
                <h4 class="mb-3">더보기 사이트</h4>
                <p class="social"><a href="#" class="facebook external"><i class="fa fa-facebook"></i></a><a href="#" class="twitter external"><i class="fa fa-twitter"></i></a><a href="#" class="instagram external"><i class="fa fa-instagram"></i></a><a href="#" class="gplus external"><i class="fa fa-google-plus"></i></a><a href="#" class="email external"><i class="fa fa-envelope"></i></a></p>
            </div>
            <!-- /.col-lg-3-->
        </div> 
        <!-- /.row-->  
    </div>
    <!-- /.container-->  
</div>
<!-- /#footer-->
<!-- *** FOOTER END ***-->
<script type="text/javascript" src="../resource/js/std_join.js"></script>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> <!-- if script tag don't have src="jquery", password text can't see. -->
<script type="text/javascript"> 

//회원가입시 null 파악_____________________________________
var check = true;

$("#submitjoin").click(function() {
	if (check) { 
		check = !check;
		infoForm.submit();
	}
})

function infoCheck() {
	if(!document.infoForm.User_Id.value) {
		alert("아이디를 입력해주세요.");
		document.infoForm.User_Id.focus();
		return false;
	}
	if(!document.infoForm.User_Pwd.value) {
		alert("비밀번호를 입력해주세요.");
		document.infoForm.User_Pwd.focus();
		return false;
	}
	
	if(!document.infoForm.User_Pwd_ok.value) {
		alert("비밀번호 확인을 입력해주세요.");
		document.infoForm.User_Pwd_ok.focus();
		return false;
	}
	
	if(!document.infoForm.User_Email.value) {
		alert("이메일을 입력해주세요.");
		document.infoForm.User_Email.focus();
		return false;
	}
	
	alert("최종회원가입이 완료되었습니다.")
}

 // 정규표현식 유효성 검사 소스_________________________________________________________
   
   //아이디 정규식
   var idJ = /^[A-Za-z0-9]{4,12}$/;
   // 비밀번호 정규식
   var pwJ = /^[A-Za-z0-9]{4,12}$/;
   
   $( function(){
		$( '#User_Id' ).on("blur keyup", function() {
			$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\s|!|@|#|$|%|^|&|*]/g, '' ) );
		});
	})
         
      $( function(){
   		$( '#userPw' ).on("blur keyup", function() {
   			$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\s|!|@|#|$|%|^|&|*]/g, '' ) );
   		});
   	})
      
      $( function(){
   		$( '#userPwChk' ).on("blur keyup", function() {
   			$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|\s|!|@|#|$|%|^|&|*]/g, '' ) );
   		});
   	})
   	
      
   $('#User_Id').blur(function() {
      if (idJ.test($('#User_Id').val())) {
         console.log('true');
         $('#id_check').text('알맞은 형식입니다.');
         $('#id_check').css('color', 'green');
      } else {
         console.log('false');
         $('#id_check').text('소문자와 대문자로만 4~12자리를 입력해주십시오.');
         $('#id_check').css('color', 'red');
      }
   });
   

   $('#userPw').blur(function() {
      
      if (pwJ.test($('#userPw').val())) {
         console.log('true');
         $('#pwdcheck1').text('사용하실 수 있는 비밀번호 입니다.');
         $('#pwdcheck1').css('color', 'green');
         } else if ($('#userPw').val() == $(this).val()){
         console.log('false');
         $('#pwdcheck1').text('숫자 또는 문자로만 4~12자리를 입력해주십시오.');
         $('#pwdcheck1').css('color', 'red');
      } else if($('#userPw').val() != "" && $('#userPwChk').val() == ""){
         $('#pwdcheck2').text('비밀번호 확인를 입력해주세요.');
         $('#pwdcheck2').css('color', 'blue');
      }
   });
   
   
   // 패스워드 일치 확인
   $('#userPwChk').blur(function() {
            
      if ($('#userPw').val() != $(this).val()) {
         $('#pwdcheck2').text('비밀번호가 일치하지 않습니다.');
         $('#pwdcheck2').css('color', 'red');
      } else if($('#userPw').val() != "" && $('#userPwChk').val() == ""){
         $('#pwdcheck2').text('비밀번호 확인를 입력해주세요.');
         $('#pwdcheck2').css('color', 'blue');
         } else if ($('#userPw').val() == $(this).val()) {
         $('#pwdcheck2').text('비밀번호가 일치합니다');
         $('#pwdcheck2').css('color', 'green');
      }
   });

// 정규표현식 유효성 검사 끝 ________________________________________________________________________
   
  function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();

       reader.onload = function (e) {
       $('#image_section').attr('src', e.target.result);
    }

       reader.readAsDataURL(input.files[0]);
       }
    }

      $("#imgInput").change(function(){
        readURL(this);
  });
      

   // 아이디 중복 체크___________________________________________________________
      function fn_idChk(){
      	$.ajax({
      		url : "/teach/idChk",
      		type : "post",
      		dataType : "json",
      		data : {"User_Id" : $("#User_Id").val()},
      		success : function(data){
      			if(data == 1){
      				alert("중복된 아이디입니다.");
      			}else if(data == 0){
      				$("#idChk").attr("value", "Y");
      				alert("사용가능한 아이디입니다.");
      			}
      		}
      	})
      }
</script>
<!-- JavaScript files--> 
<script src="../resource/vendor/jquery/jquery.min.js"></script>
<script src="../resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resource/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../resource/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../resource/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="../resource/js/front.js"></script> 
</body>
</html>