<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
body {
  background-color: #bbdefb;
  padding: 35px;
}

#about {
  width: 80%;
  margin: auto;
  padding: 0;
  margin-bottom: 128px;
}

#about .card-title {
  margin-top: 85px;
  text-align: center;
}

#about .description {
  color: #212121;
  padding-bottom: 10px;
  text-align: center;
}

#about .card-header img.background {
  width: 100%;
}

#about .card-header img.user {
  width: 130px;
  display: block;
  margin: auto;
  border-radius: 100px;
  position: relative;
  bottom: 75px;
  margin-bottom: -150px;
}

.social {
  padding: 5px;
  text-align: center;
  font-size: 1.5em;
}

.story {
  padding: 5px;
  text-align: center;
  font-size: 1.2em;
}

.wrap {
  position: absolute;
  overflow: hidden;
  top: 0%;
  right: 0%;
  bottom: 80px;
  left: 0%;
  padding: 20px 50px;
  display: block;
  border-radius: 4px;
  transform: translateY(20px);
  transition: all 0.5s;
  visibility: hidden;
}

.wrap .content {
  opacity: 0;
}

.wrap:before {
  position: absolute;
  width: 1px;
  height: 1px;
  background: white;
  content: "";
  bottom: 10px;
  left: 50%;
  top: 95%;
  color: #fff;
  border-radius: 50%;
  -webkit-transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
  transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
}

.wrap.active {
  display: block;
  visibility: visible;
  box-shadow: 2px 3px 16px silver;
  transition: all 600ms;
  transform: translateY(0px);
  transition: all 0.5s;
}

.wrap.active:before {
  height: 2000px;
  width: 2000px;
  border-radius: 50%;
  top: 50%;
  left: 50%;
  margin-left: -1000px;
  margin-top: -1000px;
  display: block;
  -webkit-transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
  transition: all 600ms cubic-bezier(0.215, 0.61, 0.355, 1);
}

.wrap.active .content {
  position: relative;
  z-index: 1;
  opacity: 1;
  transition: all 600ms cubic-bezier(0.55, 0.055, 0.675, 0.19);
}
.content p {
  text-align: center;
}
.content h4 {
  text-align: center;
}
.more {
-webkit-transition-duration: .5s;
    -moz-transition-duration: .5s;
    -o-transition-duration: .5s;
    transition-duration: .5s;
    -webkit-transition-property: -webkit-transform;
    -moz-transition-property: -moz-transform;
    -o-transition-property: -o-transform;
    transition-property: transform;
}
</style>
</head>  
<body>  
  <div class="valign-wrapper">
  <div class="row">
    <div class="col s12 m4">
      <div class="card" id="about">
        <div class="card-header">
          <img class="background" src="https://images.unsplash.com/uploads/14128434147336bfb286b/e76494ac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=0d14ef0b6c5eeee1561a0e340d48ae41">
          <img class="user" src="http://i66.tinypic.com/ng7ue1.jpg">
        </div>
        <h5 class="card-title">
                John Doe
                </h5>
        <h6 class="description">
                CEO
              </h6>
        <div class="story">
          <p>Hi, my name is John.</p>
        </div>
      </div>
    </div>
    <div class="col s12 m4">
      <div class="card" id="about">
        <div class="card-header">
          <img class="background" src="https://images.unsplash.com/uploads/14128434147336bfb286b/e76494ac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=0d14ef0b6c5eeee1561a0e340d48ae41">
          <img class="user" src="http://i66.tinypic.com/ng7ue1.jpg">
        </div>
        <h5 class="card-title">
                John Doe
                </h5>
        <h6 class="description">
                CEO
              </h6>
        <div class="social">
          <a class="btn-floating btn-large waves-effect waves-light teal more z-depth-2"><i class="material-icons">add</i></a>
        </div>
        <div class='wrap'>
          <div class='content'>
            <h4>Follow me:</h4>
            <p><a class="btn-floating btn-large waves-effect waves-light teal z-depth-2 social-links" href="https://github.com/rommetv" target="_blank"><i class="fa fa-github"></i></a></p>
            <p><a class="btn-floating btn-large waves-effect waves-light teal z-depth-2 social-links" href="https://codepen.io/Rommetv/" target="_blank"><i class="fa fa-codepen"></i></a></p>
            <p><a class="btn-floating btn-large waves-effect waves-light teal z-depth-2 social-links" href="https://rommetevelde.nl" target="_blank"><i class="fa fa-globe"></i></a></p>
          </div>
        </div>
      </div>
    </div>
    <div class="col s12 m4">
      <h2>Material Design About Card</h2>
    </div>   
  </div>
</div>

<script type="text/javascript">
$('.more').on('click', function() {
	  $('.wrap, .more').toggleClass('active');
	  
	  return false;
	});
	$( ".more" ).click(function() {
	    //alert($( this ).css( "transform" )); 
	    if (  $( this ).css( "transform" ) == 'none' ){
	        $(this).css("transform","rotate(45deg)");
	    } else {
	        $(this).css("transform","" );
	    }
	});
</script>




</body>

</html>