<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html data-wf-page="668501d6493a753e79314790" data-wf-site="668501d6493a753e79314722">

<head>
    <meta charset="utf-8">
    <title>Blog</title>
    <meta content="Blog" property="og:title">
    <meta content="Blog" property="twitter:title">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
	<link href="../css/login.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
    <script type="text/javascript">
        WebFont.load({
            google: {
                families: ["Oswald:200,300,400,500,600,700", "Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic", "Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic", "Syne:regular,500,600,700,800", "Syne:regular,500,600,700,800"]
            }
        });
    </script>
    <script type="text/javascript">
        ! function(o, c) {
            var n = c.documentElement,
                t = " w-mod-";
            n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
        }(window, document);
    </script>
    <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="images/webclip.png" rel="apple-touch-icon">
</head>

<body>
	<div style="" class="pages-wrapper">
	    <section class="section authentication">
	        <div class="container">
	            <div class="authentication-content">
	                <div class="log-in">
	                    <div class="sign-in-form-wrap w-form">
	                        <form id="wf-form-Register-Email-Form" name="wf-form-Register-Email-Form" data-name="Register Email Form" method="post" action="enroll" class="sign-in-form" data-wf-page-id="6634a93befaafa41dc30c188" data-wf-element-id="d7edf9eb-6d83-af9a-64b5-f9fc971d2db7">
	                            <div class="end-logo">
	                                <img src="../images/loginlogo.png">
	                            </div>
	                            <!-- 차트 추가 -->
	                            <div class="chart-container">
	                                <div class="chart">
	                                    <svg viewBox="0 0 36 36" class="circular-chart">
	                                        <path class="circle-bg" d="M18 2.0845
			  		                         a 15.9155 15.9155 0 0 1 0 31.831
			  		                         a 15.9155 15.9155 0 0 1 0 -31.831" />
	                                        <path class="circle" stroke-dasharray="100, 100" d="M18 2.0845
			  		                         a 15.9155 15.9155 0 0 1 0 31.831
			  		                         a 15.9155 15.9155 0 0 1 0 -31.831" />
	                                        <text x="18" y="20.35" class="percentage">2500kcal</text>
	                                    </svg>
	                                </div>
	                                <div class="chart-text">당신의 목표를 위한 기초대사량 입니다</div>
	                            </div>
	                            <!-- 차트 추가 끝 -->

	                            <!--<div class="sign-in-single-fields">-->
	                            <div class="sign-in-buttons">
	                                <input type="submit" data-wait="Please wait..." class="sign-in-submit-button w-button" value="회원가입">
	                            </div>
	                        </form>
	                        <div class="w-form-done">
	                            <div>Thank you! Your submission has been received!</div>
	                        </div>
	                        <div class="w-form-fail">
	                            <div>Oops! Something went wrong while submitting the form.</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	</div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=6634a93aefaafa41dc30c070" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="../js/webflow2.js" type="text/javascript"></script>
  <script>
	$(function(){
		
		let bmr;
	    let tdee;
	    let goal;
		
		let userdata = JSON.parse(sessionStorage.getItem('formData'));
		if(userdata.gender == "남자") {
			//기초대사량(BMR)
			bmr = 88.362+(13.397*Number(userdata.weight))+(4.799*Number(userdata.height))-(5.677*Number(userdata.age));
		}
		else {
			bmr = 88.362+(13.397*userdata.weight)+(4.799*userdata.height)-(5.677*Number(userdata.age));		
		}
		
		//목표에 따른 계산
		const goalvalue = {
	       '체중감량': 0.75,
	       '근육증량': 1.1,
	       '체중유지': 1
	   }[userdata.goal] || 1;
				   
	   //일일에너지소비(TDEE)
		const actvalue = {
		        '1': 1.2,
		        '2': 1.375,
		        '3': 1.55,
		        '4': 1.725
		}[userdata.act]|| 1.2;
		tdee = bmr * actvalue;
		goal = tdee * goalvalue;
		$('.percentage').text(Math.floor(goal)+"kcal");
	});
	
  </script>
</body>

</html>