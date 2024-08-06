<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://webflow.com  --><!--  Last Published: Wed Jul 03 2024 07:46:48 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="668501d6493a753e7931478a" data-wf-site="668501d6493a753e79314722">
<head>
  <meta charset="utf-8">
  <title>Gridos - Webflow HTML website template</title>
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow.css" rel="stylesheet" type="text/css">
  <link href="css/jades-ultra-awesome-site-d9185c.webflow.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Oswald:200,300,400,500,600,700","Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic","Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Syne:regular,500,600,700,800","Syne:regular,500,600,700,800"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
  <style>
	
	.exercise-options {
	    display: flex;
	    gap:15px;
	    margin-bottom: 20px;
		
	}

	.exercise-button {
	    background-color: #4CAF50;
	    color: white;
	    border: none;
	    padding: 10px 20px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 16px;
	    margin: 4px 2px;
	    cursor: pointer;
	    border-radius: 5px;
	    transition: background-color 0.3s;
	}

	.exercise-button:hover {
	    background-color: #45a049;
	}

	.tracker {
	    margin: 20px 0;
	}

	.exercise-gif img {
	    width: 100px;
	    height: auto;
	    margin-top: 10px;
	}

	.summary {
	    margin-top: 30px;
	}


	
	
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="body">
	
	
   
	<a href="/regist/start">regist_start</a>
  <div data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="navbar-wrapper w-nav">
    <div class="main-container w-container">
      <div class="nav-wrapper">
      <a href="index" class="brand-logo w-nav-brand"><img src="images/CClogo.png" loading="lazy" width="146" sizes="(max-width: 479px) 100vw, 146px" alt="" srcset="images/CClogo.png 500w, images/CClogo.png 740w" class="logo"></a>
      <nav role="navigation" class="main-nav w-nav-menu">
          <a href="index" aria-current="page" class="menu-item w-nav-link w--current">Home</a>
          <a href="recipe" class="menu-item w-nav-link">recipe</a>
          <a href="news" class="menu-item w-nav-link">news</a>
		  <a href="diary" class="menu-item w-nav-link">diary</a> 
          <a href="exercise" class="menu-item w-nav-link">exercise</a>

          <!-- 충돌부분 -->

        <a href='mypage'><img src="/userphotos/${sessionScope.profile}" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%;  class="profile-img w-nav-link" ></a>
	        <div class="dropdown2">
            <span class="dropdown-item"><a href="diary/report">report</a></span>
            <span class="dropdown-mypage"><a href="regist/start">Logout</a></span>
				  </div>

        </nav>
        <div class="menu-button w-nav-button">
          <div class="icon w-icon-nav-menu"></div>
        </div>
      </div>
    </div>
  </div>
  <section>
    <div class="home-wrapper">
      <div class="w-layout-blockcontainer main-container w-container">
        <div id="w-node-_9f90a540-f866-6cd5-898a-462c713a5490-7931478a" class="w-layout-layout home-stack wf-layout-layout">
          <div id="w-node-d6d3953d-a5d0-8a89-62c1-6c31b64c5a30-7931478a" class="w-layout-cell about-row">
            <a data-w-id="700b8ace-6395-ae52-faf8-a5babb050432"  class="about-block w-inline-block">
              <div class="about-infos">
                <h2 class="about-title">문차뉘</h2>
				
                
				
						<div class="exercise-options">
						    <button class="exercise-button" onclick="startExercise('running')">달리기</button>
						    <button class="exercise-button" onclick="startExercise('cycling')">자전거</button>
						    <button class="exercise-button" onclick="startExercise('aerobic')">유산소</button>
							<span class='nextt'>></span>
						</div>
		
						<div class="exercise-tracker" id="exerciseTracker" style="display: none;">
						    <h3>내 운동량 측정</h3>
						    <div class="tracker">
						        <input type="number" id="duration" placeholder="운동 시간 (분)" min="1">
						        <button id="recordButton">운동량 기록</button>
						    </div>
						    <div id="exerciseLog" class="log"></div>
						    <div class="exercise-gif">
						        <img id="exerciseGif" src="" alt="운동 GIF">
						    </div>
						</div>
		
						<div class="summary">
						    <h3>운동 요약</h3>
						    <p id="totalDuration">총 운동 시간: 0분</p>
						    <p id="totalDistance">총 소모칼로리: 0kcal</p>
						</div>
						
				
              </div>
              <div class="about-bg-image"></div>
            </a>
          </div>
          <div id="w-node-_0fc2bf67-cea5-3920-ed20-e98dc64d8481-7931478a" class="w-layout-cell top-row">
            <div id="w-node-e420a70b-3335-8a3c-6fd6-1dd47edee2da-7931478a" class="w-layout-layout top-row-stack wf-layout-layout">
              <div id="w-node-_36d74deb-6b8a-0da6-6039-9b94f28851c1-7931478a" class="w-layout-cell blog-cell">
                <a data-w-id="e4e16621-820e-469b-a4af-8e8d1666fda4" href="recipe" class="blog-block w-inline-block">
                  <div class="text-with-dot"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="blue-dot">
                    <div class="dot-text">RECIPE</div>
                  </div>
				  <div class='recipeChange'>
				  	<img src="${recipes[0].imgurl}" style="cache-control: max-age=31536000" loading="lazy" sizes="(max-width: 479px) 100vw, (max-width: 767px) 94vw, (max-width: 984px) 95vw, 935px" srcset="${recipes[0].imgurl} 500w, ${recipes[0].imgurl} 800w, ${recipes[0].imgurl} 935w" alt="" class="blog-img">
                 	 <h3 class="main-title">${recipes[0].menuname}</h3>
				  </div>

                </a>
              </div>
              <div id="w-node-_9aed2215-b44e-81c1-9e6e-a5a496988f8e-7931478a" class="w-layout-cell service-cell">
                <a data-w-id="d8a7e28c-2b92-cd67-add9-9f030af83191" class="service-block w-inline-block">
                  <div class="text-with-dot"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="blue-dot">
                    <div class="dot-text">NEWS</div>
                  </div>
                  <div class="service-circles">
               <div class="mnews">
                  <img src="${news.get(0).nimgurl}"/>
                  <span href='${news.get(0).newsurl}'>${news.get(0).title}</span>
               </div>
               <ul>
               <c:forEach items="${news}" var="items" end="5">
                  <li class="mainnews" newsimg="${items.nimgurl}" nurl="${items.newsurl}">${items.title}</li>
               </c:forEach>
               </ul>
                    <!--<div class="service-box"><img src="images/service1.png" loading="lazy" alt="" data-w-id="0f6d6d5b-bb14-ed12-0ca5-beb566a325d8" class="service-icon"></div>
                    <div class="service-box"><img src="images/service2.png" loading="lazy" data-w-id="cb1fc4c3-7471-c733-0db4-33bc8bd171b2" alt="" class="service-icon"></div>
                    <div class="service-box"><img src="images/service3.png" loading="lazy" data-w-id="107684f8-9bce-14b3-a655-691d66a0a747" alt="" class="service-icon"></div>-->
                  </div>              
                </a>
              </div>
            </div>
          </div>
          <div id="w-node-d139f96c-d394-01f6-92f4-d1bfb9aa3473-7931478a" class="w-layout-cell bottom-row">
            <div id="w-node-_0dbb6643-982f-e318-23db-636b44288cf7-7931478a" class="w-layout-layout bottom-row-stack wf-layout-layout">
              <div id="w-node-_0dbb6643-982f-e318-23db-636b44288cf8-7931478a" class="w-layout-cell work-cell">
                <a data-w-id="b569344e-3ec5-14ba-63fe-3cb5296ed5ce" href="exercise" class="work-block w-inline-block">
                  <div class="text-with-dot"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="blue-dot">
                    <div class="dot-text">EXERCISE</div>
                  </div>
                  <div class="circle-ball">
					<!--<img src="images/work.jpg" loading="lazy" alt="" class="ball-image">-->
					<iframe width="300" height="315" src="https://www.youtube.com/embed/${work[0].workvideoid}?autoplay=1&mute=1" 
								title="${work[0].workname}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share; mute;"
								 referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				
				</div>
                  <h3 class="main-title">영상카테고리</h3>
                </a>
              </div>
              <div id="w-node-_0dbb6643-982f-e318-23db-636b44288cf9-7931478a" class="w-layout-cell contact-cell">
                <a data-w-id="e377f905-8e18-481e-ec90-7ba9c83f1b54" hre=f="diary" class="contact-block w-inline-block">
                  <div class="text-with-dot"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="blue-dot">
                    <div class="dot-text">CHART</div>
                  </div>
                  <div class="content-container">
                      <div class="chart-container">
                          <canvas id="chart2"></canvas>
                      </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="socials">
        <a href="#" class="social-item w-inline-block"><img src="images/fcb_1fcb.png" loading="lazy" alt="" class="facebook-icon"></a>
        <a href="#" class="social-item w-inline-block"><img src="images/twitter_1twitter.png" loading="lazy" alt="" class="twitter-icon"></a>
        <a href="#" class="social-item w-inline-block"><img src="images/instagram_1instagram.png" loading="lazy" alt="" class="insta-icon"></a>
      </div>
    </div>
  </section>
  <div class="footer">
    <div class="copyright-text">Grido  -  Innovatively Yours: © 2023  🌟  Powered by <a href="#" class="copyright-text">Webflow</a>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=668501d6493a753e79314722" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
  <script>
   $(function(){
      $('.mainnews').hover(function(){
         $('.mnews img').attr('src',$(this).attr('newsimg'));
		 $('.mnews span').text($(this).text());
      });
	  $('.mainnews').click(function(){
		location = $(this).attr('nurl');
	  });
   });
   
   var ctx2 = document.getElementById('chart2').getContext('2d');

   // 파스텔톤 색상
   const pastelRed = 'rgba(255, 153, 153, 0.8)';
   const pastelBlue = 'rgba(153, 204, 255, 0.8)';
   const pastelYellow = 'rgba(255, 255, 153, 0.8)';
   const pastelGreen = 'rgba(153, 255, 204, 0.8)';
   const pastelPurple = 'rgba(204, 153, 255, 0.8)';
   const a = 'rgba(255, 204, 182, 0.8)';
   const b = 'rgba(254,225,232, 0.8)';
   const c = 'rgba(85,203,205,0.8)';
   const d = 'rgba(147,112,219,0.8)';
   const e = 'rgba(175,238,238,0.8)';

   const recipecharts = JSON.parse('${recipechart}');
   
   const ingre = [];
   const cnt = [];
   for( recipechart of recipecharts){
		ingre.push(recipechart.ingredient);
		cnt.push(recipechart.count);
   }
   var myChart2 = new Chart(ctx2, {
       type: 'pie', // 파이 차트
       data: {
           labels: ingre,//['Red', 'Blue', 'Yellow', 'Green', 'Purple'],
           datasets: [{
               label: 'Votes',
               data: cnt,//[12, 19, 3, 5, 2, 10, 12, 4, 7, 11],
               backgroundColor: [
                   pastelRed,
                   pastelBlue,
                   pastelYellow,
                   pastelGreen,
                   pastelPurple,
				   a,b,c,d,e
               ],
               borderColor: [
                   'rgba(255, 255, 255, 1)', // 흰색 테두리
                   'rgba(255, 255, 255, 1)',
                   'rgba(255, 255, 255, 1)',
                   'rgba(255, 255, 255, 1)',
                   'rgba(255, 255, 255, 1)'
               ],
               borderWidth: 2
           }]
       },
       options: {
           responsive: true,
           plugins: {
               legend: {
                   position: 'top',
                   labels: {
                       font: {
                           size: 14,
                           weight: 'bold'
                       }
                   }
               },
               title: {
                   display: true,
                   text: 'Vote Distribution',
                   font: {
                       size: 18,
                       weight: 'bold'
                   }
               },
               tooltip: {
                   backgroundColor: 'rgba(0, 0, 0, 0.7)', // 툴팁 배경 색상
                   titleColor: 'white', // 툴팁 제목 색상
                   bodyColor: 'white' // 툴팁 본문 색상
               }
           }
       }
   });
   </script>
   <script>
	// JavaScript로 호버 이벤트 처리
	      const profileImg = document.querySelector('.profile-img');
	      const dropdown = document.querySelector('.dropdown2');

	      // 이미지에 마우스가 올라갔을 때 드롭다운 표시
	      profileImg.addEventListener('mouseover', () => {
	          dropdown.style.display = 'block';
	      });

	      // 이미지에서 마우스가 벗어났을 때 드롭다운 숨기기
	      //profileImg.addEventListener('mouseout', () => {
	          //dropdown.style.display = 'none';
	      //});

	      // 드롭다운 메뉴에 마우스가 올라갔을 때 드롭다운 유지
	      dropdown.addEventListener('mouseover', () => {
	          dropdown.style.display = 'block';
	      });

	      // 드롭다운 메뉴에서 마우스가 벗어났을 때 드롭다운 숨기기
	      dropdown.addEventListener('mouseout', () => {
	          dropdown.style.display = 'none';
	      });
		  
		  
		  function startExercise(exerciseType) {
		      document.getElementById('exerciseTracker').style.display = 'block';

		      const gifMap = {
		          running: 'images/run-12055.gif',
		          cycling: 'images/bycle.gif',
		          aerobic: 'images/yog1.gif'
		      };
		      
		      document.getElementById('exerciseGif').src = gifMap[exerciseType];
		  }
		$('.nextt').click(function(){
			alert('1');
			let a = `<button class="exercise-button" onclick="startExercise('running')">헬스</button>
				    <button class="exercise-button" onclick="startExercise('cycling')">운동</button>
			    	<button class="exercise-button" onclick="startExercise('aerobic')">빡센운동</button>`;
			$('.exercise-options').empty();
			$('.exercise-options').append(a);
		});
		
		const recipeChange = () => {
			$.ajax({
				type : "get",
				url : 'recipeChange',
				success : function(result){
					$('.recipeChange').empty();
					var a = '<img src="'+result.imgurl+'" class="blog-img">'
					        +'<h3 class="main-title">'+result.menuname+'</h3>';
					$('.recipeChange').append(a);
				},
				error : function(stat, err, c){
					console.log(stat, err, c);
				}
			});
			
		}
		setInterval(recipeChange,3000);
	</script>
</body>
</html>