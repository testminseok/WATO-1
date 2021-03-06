<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
</head>
<body class="m-0 p-0">


<form  name="classForm"class="form-horizontal" role="form" method="post" action="/study/teacherEnroll.do">
	<table class="table table-striped">
  <thead>
  <tr>
  	<td>
  	<c:choose>
	  	<c:when test="${teach == null && std == null }">
	  		로그인을 하십시오.
	  	</c:when>
	  	<c:when test="${teach != null}">
	  		현재 사용자 : ${teach.user_Id}
	  	</c:when>
	  	<c:when test="${std != null }">
	  		현재 사용자 : ${std.user_Id} 
	  	</c:when>
	  	
	 </c:choose>
  	</td>
  </tr>
    <tr>
      <th scope="col">No</th>
      <th scope="col">카테고리</th>
      <th scope="col">난이도</th>
      <th scope="col">인원수</th>
      <th scope="col">주제</th>
      <th scope="col">참여진행</th>
      <th scope="col">생성된 날짜</th>
      <th scope="col">수정된 날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${classlist}" var="classlist">
    <tr>
      <th scope="row">${classlist.t_no}</th>
      <td><a class="detailNop" onclick="userNop()" href="header_DetailRead?t_no=${classlist.t_no}">${classlist.t_category}</a></td>
      <td>${classlist.t_level}</td>
      <td>${classlist.t_people}</td>
      <td>${classlist.t_title}</td>
      <td>${classlist.t_parti} / ${classlist.t_people }</td>
      <td><fmt:formatDate value="${classlist.t_creadate}" pattern="yyyy-MM-dd"/></td>
      <td><fmt:formatDate value="${classlist.t_updatedate}" pattern="yyyy-MM-dd"/></td>
      <td>${classlist.t_viewcnt}</td>
    </tr>
  </c:forEach>  
  </tbody>
</table>
</form>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script type="text/javascript">
	
	$('.detailNop').on('click', function () {
		
		if ('${user}' == null){
			alert('로그인을 하십시오');
			location.href="/";
		}
	});
	

</script>
</body>
</html>