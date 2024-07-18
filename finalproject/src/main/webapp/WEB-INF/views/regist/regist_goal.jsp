<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://webflow.com  -->
<!--  Last Published: Wed Jul 03 2024 07:46:48 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="668501d6493a753e79314790" data-wf-site="668501d6493a753e79314722">

<head>
    <meta charset="utf-8">
    <title>Blog</title>
    <meta content="Blog" property="og:title">
    <meta content="Blog" property="twitter:title">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <!--<link href="css/normalize.css" rel="stylesheet" type="text/css">
    <link href="css/webflow.css" rel="stylesheet" type="text/css">
    <link href="css/jades-ultra-awesome-site-d9185c.webflow.css" rel="stylesheet" type="text/css">-->
	<link href="../css/login.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
	<style rel="stylesheet" type="text/css">
		.active.goals-button{
			background-color : orange;
		}
		
	</style>
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
  <!-- <div class="preloader-wrapper">
    <div class="preloader-content-wrapper">
      <div class="preloader-lottie" data-w-id="0e60aa46-827b-a19c-1ffa-1e25f89fcaa9" data-animation-type="lottie" data-src="https://uploads-ssl.webflow.com/65cc87ce23ae1b8cf737a29d/65e06170e48f67f758b25b29_Zastock.json" data-loop="0" data-direction="1" data-autoplay="1" data-is-ix2-target="0" data-renderer="svg" data-default-duration="1.65" data-duration="0"></div>
    </div>
  </div> -->
  <div style="" class="pages-wrapper">
    <section class="section authentication">
      <div class="container">
        <div class="authentication-content">
          <div class="log-in">
            <div class="sign-in-form-wrap w-form">
				<form id="profile-goal-form" name="profile-goal-form" data-name="Profile Goal Form" method="post" action="activity" class="profile-goal-form" data-wf-page-id="6634a93befaafa41dc30c188" data-wf-element-id="d7edf9eb-6d83-af9a-64b5-f9fc971d2db7">
				                
				                <!-- Progress Bar and Title -->
								
				                <div class="progress-bar" >
									<progress 
								      class="progress-bar"
								      value="10"		      
								      max="50">
								  	</progress>
				                </div>
				                
				                <!-- Form Elements -->
								<div class="centered">
				                <label for="goal-selection">당신의 목표는 무엇인가요?</label>
								<input type="button" class="goals-button" value="체중감량">				 
								<input type="button" class="goals-button" value="근육증량">
				                <input type="button" class="goals-button" value="체중유지">
								</div>
				                
				                <!-- Navigation Buttons -->
				                <div class="nav-buttons">

                 <!-- 수정부분
				                    <button type="button" class="nav-btn prev" onclick="goBack()">&lt; prev</button>
				                    <button type="submit" class="nav-btn next">next &gt;</button>

				                    <button type="button" class="nav-btn prev">&lt; prev</button>
				                    <button type="button" class="nav-btn next">next &gt;</button>

                 -->
				                </div>
								<div class="progress">
				                <p>목표에 따라 3대 영양소 권장 섭취 비율이 다르게 표시 됩니다.</p>
								</div>
				              </form>
				
				
              
				
				
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
  <% if (request.getAttribute("loginError") != null) { %>
    <script>
        alert('로그인에 실패하였습니다.');
    </script>
  <% } %>
  <script>
	$(function(){
		data = {};
		
		//
		$('.centered').on('click','.goals-button', function(){
			$('.goals-button.active').removeClass('active');
			$(this	).addClass('active');
		});
		list = []
		p = 0
		v = 10
		list[0] = $(`<label for="goal-selection">당신의 목표는 무엇인가요?</label>
				<input type="button" class="goals-button" value="체중감량">				 
				<input type="button" class="goals-button" value="근육증량">
                <input type="button" class="goals-button" value="체중유지">`);
		list[1] = $(`<label for="goal-selection">당신의 평소 활동량은 어떤가요?</label>
				<input type="button"  class="goals-button" value="매우 활동적(주 6~7회 강한 운동)">				 
				<input type="button"  class="goals-button" value="활동적(주 3~5회 운동)">
				<input type="button"  class="goals-button" value="저활동적(주 1~3회 가벼운 운동)">
				<input type="button"  class="goals-button" value="비활동적(운동을 거의 하지않음)">`);
		list[2] = $(`<label for="goal-selection">당신의 성별은?</label>
					<input type="button"  class="goals-button" value="남자">				 
					<input type="button"  class="goals-button" value="여자">`);
		list[3] = $(`<div class="input-group">	
		                <label for="goal-selection">키를 입력해주세요&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<input type="text" class="height-text" placeholder="200.5"/><span>cm</span>
							</div>		
							<div class="input-group">					
						<label for="goal-selection">몸무게를 입력해주세요</label>
						<input type="text" class="weight-text" placeholder="120"/><span>kg</span>		 
					</div>`);
		list[4] = $(`<div class="birth-group">	
		                <label for="birth-selection">당신의 생일은 언제인가요?</label>
						<input type="date" class="yourbirth"/>
					</div>		`);
					
		$('div.progress-bar').empty();
		$('div.progress-bar').append($("<progress  class='progress-bar' value='"+v+"' max='50'/>"));
		$('.centered').empty();
		$('.centered').append(list[p]);
		
		$('.nav-btn.next').click(function(){
			if( p>2 || $('.active').length!=0){		
				switch(p){
					case 0: data.goal=$('.active').val(); break;
					case 1: data.act=$('.active').val(); break;
					case 2: data.gender=$('.active').val(); break;
					case 3: if($('.height-text').val()=='') return;
							data.heigth = $('.height-text').val(); 
							data.weight = $('.weight-text').val(); break;
					case 4: if($('.yourbirth').val()=='') return;
							alert($('.yourbirth').val());
							location = 'end';
						
				}
				alert(JSON.stringify(data));
				p = p+1
				v = v+10
				$('div.progress-bar').empty();
				$('div.progress-bar').append($("<progress  class='progress-bar' value='"+v+"' max='50'/>"));
				$('.centered').empty();
				$('.centered').append(list[p]);	
			}
		});
		$('.nav-btn.prev').click(function(){
			if(p!=0){
				p = p-1
				v = v-10
				$('div.progress-bar').empty();
				$('div.progress-bar').append($("<progress  class='progress-bar' value='"+v+"' max='50'/>"));
				$('.centered').empty();
				$('.centered').append(list[p]);
			}else location = 'start';
		});
	});
    
  function goBack() {
      // 이전 페이지로 이동합니다.
      window.history.back();
  }
    
	</script>
</body>

</html>