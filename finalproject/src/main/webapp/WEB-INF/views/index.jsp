<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://webflow.com  -->
<!--  Last Published: Wed Jul 03 2024 07:46:48 GMT+0000 (Coordinated Universal Time)  -->
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
	
    <style>
        .about-title {
            font-size: 28px;
            /* 제목 크기 */
            font-weight: bold;
            /* 제목 두께 */
            color: limegreen;
            /* 제목 색상 */
            text-align: center;
            /* 중앙 정렬 */
            margin: 20px 0;
            /* 상하 여백 */
            position: relative;
            /* 위치 설정 */
			 
        }
		
		

        .scale-button {
            padding: 7px;
            color: black;
            background: linear-gradient(90deg, #4e54c8, #8f94fb);
            border-radius: 5px;
            color: white;


        }

        .exercise-options label {
            font-size: 24px;
            margin-bottom: 20px;
        }


        #exercise-min {

            color: black;
            padding: 5px;
            font-size: 16px;
            font-weight: bold;
            border: 1px solid #2980b9;
            background-color: #ffffff;
        }

        .main-welcome {
            font-size: 20px;
            font-size: medium;
            color: rgba(216, 216, 216, .5);
            

        }

        .exercise-options {
            margin: 20px 0;
            margin-top: 20%;
            font-weight: bold;
        }

        .exercise-select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #2980b9;
            border-radius: 5px;
            background-color: #ffffff;
            color: #333;
            appearance: none;
            /* 기본 스타일 제거 */
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10"><polygon points="0,0 10,0 5,10" fill="%232980b9"/></svg>');
            /* 드롭다운 화살표 */
            background-repeat: no-repeat;
            background-position: right 10px center;
            background-size: 10px;
        }

        .exercise-select:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
        }

        .exercise-select option {
            padding: 10px;
        }

        .summary {
            margin-top: 30px;
        }
		
		
		.modal {
			display: none; 
            position: fixed;
            z-index: 1002;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
		}

		.modal-content {
			background: linear-gradient(90deg, #4e54c8, #8f94fb);
            margin: 5% auto;
            padding: 2%;
            border: 1px solid #333;
            width: 30%;
			height:100%;
		}

		.close {
		    color: black;
		    float: right;
		    font-size: 28px;
		    font-weight: bold;
		}

		.close:hover,
		.close:focus {
		    color: black;
		    text-decoration: none;
		    cursor: pointer;
		}
		
		
		
		.help-joystick {
			display: flex;
		    justify-content: center;
		    align-items: center;
		    position: absolute; /* 절대 위치 지정 */
		    top: 50%; /* 모달 중앙에 위치 */
		    left: 50%; /* 모달 중앙에 위치 */
		    transform: translate(-50%, -50%); /* 중앙 정렬 조정 */
			gap:100%;
		}

		.help-joystick button {
		    margin: 0 90px;
		    padding: 30px 15px;
		    text-decoration: none;
		    color: white;
		    border-radius: 5px;
			 background-color: rgba(255, 255, 255, 0);
			font-size:200px;
			cursor:pointer;
		}

		.help-joystick button:hover {
			color:#8f94fb;
		}

		.help-joystick .prev, .help-joystick .next {
		    font-weight: bold;
		}
		
		.help-joystick{
			margin-top:7%;
		}
		
		
		.checkbox-container {
			display: flex;
		   align-items: center;
		   cursor: pointer;
		   font-size: 15px;
		   position: absolute; /* 절대 위치 지정 */
		   bottom: -45px; /* 모달의 하단에서 20px 위에 위치 */
		   
		}

		.checkbox-container input {
		    display: none; /* 기본 체크박스 숨기기 */
		}

		.checkmark {
		    width: 20px;
		    height: 20px;
		    border: 2px solid #333;
		    border-radius: 4px;
		    margin-right: 10px; /* 체크박스와 텍스트 간격 */
		    position: relative;
		}

		.checkbox-container input:checked + .checkmark {
		    background-color: #4e54c8; /* 체크박스가 선택되었을 때 배경색 */
		}

		.checkbox-container input:checked + .checkmark::after {
		    content: '';
		    position: absolute;
		    left: 5px;
		    width: 5px;
		    height: 10px;
		    border: solid white;
		    border-width: 0 2px 2px 0;
		    transform: rotate(45deg);
		}

		.help-shutdown {
			padding: 7px 17px;
		   width: 4%;
		   font-size: 12px;
		   position: absolute; /* 절대 위치 지정 */
		   bottom: -45px; /* 모달의 하단에서 20px 위에 위치 */
		   right: 37%; /* 오른쪽에서 5% 위치 */
		   background-color: white;
		   font-weight: bold;
		   border: solid black;
		   color: black;
		}
		
		button:disabled {
		    opacity: 0.1; /* 비활성화된 버튼의 투명도 */
		    cursor: not-allowed; /* 마우스 커서 변경 */
		}
		
		#modalImage {
		    width: 100%; /* 모달의 너비에 맞게 조정 */
		    height: auto; /* 비율을 유지하면서 높이를 자동으로 조정 */
		    max-height: 50%; /* 최대 높이 제한 */		
		    object-fit: contain;  /* 이미지 비율에 맞게 잘림 */
			
		}
		
		/* 모달 반응형 미디어쿼리 시작*/
		@media (max-width: 1500px){
				.modal-content {
				background: linear-gradient(90deg, #4e54c8, #8f94fb);
	            margin: 5% auto;
	            padding: 2%;
	            border: 1px solid #333;
	            width: 70%;
				height:100%;
				}
				
				.help-shutdown {
					padding: 7px 17px;
			        width: 6%;
			        font-size: 12px;
			        position: absolute;
			        bottom: -45px;
			        right: 18%;
			        
			        font-weight: bold;
			        border: solid black;
			        
				}
				
				.help-joystick {
					display: flex;
				    justify-content: center;
				    align-items: center;
				    position: absolute; /* 절대 위치 지정 */
				    top: 50%; /* 모달 중앙에 위치 */
				    left: 50%; /* 모달 중앙에 위치 */
				    transform: translate(-50%, -50%); /* 중앙 정렬 조정 */
					gap:160%;
						}

					}
					
					@media (max-width: 1294px){
						
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:130%;	
						}
					}
					
					@media (max-width: 1154px){
						
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:120%;	
						}
					}
					
					@media (max-width: 1066px){
						.help-shutdown {
							padding: 7px 17px;
					        width: 8%;
					        font-size: 12px;
					        position: absolute;
					        bottom: -45px;
					        right: 18%;
					       
					        font-weight: bold;
					        border: solid black;
					        
						}
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%); /* 중앙 정렬 조정 */
							gap:110%;
						}
					}
					@media (max-width: 912px){
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:90%;
						}
					}
					
					@media (max-width: 894px){
						.help-shutdown{
							bottom: -30px;
						}
						
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:400px;
						}
						
						
					}
					
					@media (max-width: 799px){
						.help-shutdown {
							padding: 7px 17px;
					        width: 9%;
					        font-size: 12px;
					        position: absolute;
					        bottom: -20px;
					        right: 18%;
					        background-color: white;
					        font-weight: bold;
					        border: solid black;
					        color: black;
							
						}
						
						.checkbox-container {
						    display: flex;
						    align-items: center;
						    cursor: pointer;
						    font-size: 15px;
						    position: absolute;
						    bottom: -20px;
						}
						
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:300px;
						}
					}
					
					@media (max-width: 632px){
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:250px;
						}
						.help-shutdown{
							width:15%;
						}					
					}
					
					@media (max-width: 480px){
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:100px;
						}
					}
					@media (max-width: 376px){
						.help-joystick {
							display: flex;
						    justify-content: center;
						    align-items: center;
						    position: absolute; /* 절대 위치 지정 */
						    top: 50%; /* 모달 중앙에 위치 */
						    left: 50%; /* 모달 중앙에 위치 */
						    transform: translate(-50%, -50%);
							gap:20px;
						}
						.checkbox-container{
							font-size:10px;
						}
						.help-shutdown{
							width: 20%;
						}
						
						#modalImage {
						    width: 100%;
						    height: auto;
						    max-height: 100%;
						    object-fit: contain;
						}
					}
				
					.tooltip {
					    position: absolute;
					    background-color: white; /* 배경색 */
					    color: black; /* 텍스트 색상 */
					    padding: 5px 10px; /* 패딩 */
					    border-radius: 5px; /* 모서리 둥글게 */
					    display: none; /* 기본적으로 숨김 */
					    z-index: 10; /* 다른 요소보다 위에 표시 */
						margin-left:28%;
						transform: translateY(-130%);
						font-weight:bold;
					}			
		

    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body class="body">
	
	<button id="openModal">모달 열기</button>

		<div id="myModal" class="modal">
		    <div class="modal-content">
		        <span class="close">&times;</span>
		        <h3></h3>
		        <img id="modalImage" src="images/logo.png">
	
				
				<div class="help-joystick">
				    <button class="prev"> &lt; </button>				   
				    <button class="next"> &gt; </button>
				</div>
				
								   
					<label class="checkbox-container">
						    <input type="checkbox">
					    <span class="checkmark"></span>
					    7일간 보이지 않게 합니다.	
					</label>
				
					<button class="help-shutdown">닫기</button>
		    </div>
		</div>	
	

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

                    <a href='mypage'><img src="/userphotos/${sessionScope.profile}" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%; class="profile-img w-nav-link"></a>
                    <div class="dropdown2">
						
						<span class="dropdown-real-mypage"><a href="mypage">Mypage</a></span>
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
                        <a data-w-id="700b8ace-6395-ae52-faf8-a5babb050432" class="about-block w-inline-block">
                            <div class="about-infos">
                                <h2 class="about-title">${user.username} <span class="main-welcome">님 환영합니다</span> </h2>



                                <div class="exercise-options">
                                    <label for="exercise-type">Type:</label>
                                    <select id="exercise-type" class="exercise-select">
                                        <option value="" disabled selected>Choose the type of exercise</option>
                                        <c:forEach items="${workcates}" var="workcate">
											<option value="${workcate.workcatename}">${workcate.workcatename}</option>
										</c:forEach>
										<!--<option value="cardio">유산소 운동</option>
                                        <option value="strength">근력 운동</option>
                                        <option value="flexibility">유연성 운동</option>
                                        <option value="balance">균형 운동</option>-->
                                    </select>

                                </div>

                                <div class='exercise-input'>
                                    <input type="number" id="exercise-min" placeholder="minute">
                                    <button class="scale-button" onclick="updateScale()">입력</button>
                                </div>


                                <div class="summary">
                                    <h3>Summary</h3>
                                    <p id="totalDuration">총 운동 시간: ${workcal.worktime} &nbsp;분</p>
									<p>운동</p>
                                    <p id="totalDistance">총 소모칼로리: ${workcal.workcal} &nbsp;kcal</p>
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
                                            <img src="${news.get(0).nimgurl}" />
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

									        	<div id="playerLayer"></div>
                                    </div>
                                    <!--<h3 class="main-title">영상카테고리</h3>-->
                                </a>
                            </div>
                            <div id="w-node-_0dbb6643-982f-e318-23db-636b44288cf9-7931478a" class="w-layout-cell contact-cell">
                                <a data-w-id="e377f905-8e18-481e-ec90-7ba9c83f1b54" hre=f="diary" class="contact-block w-inline-block">
                                    <div class="text-with-dot"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="blue-dot">
                                        <div class="dot-text">CHART</div>
                                    </div>
                                    <div class="content-container">
                                        <div class="chart-container12">
                                            <canvas id="chart2"></canvas>
											<div class="tooltip" id="tooltip">건강식재료 현황</div>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
        $(function() {
            $('.mainnews').hover(function() {
                $('.mnews img').attr('src', $(this).attr('newsimg'));
                $('.mnews span').text($(this).text());
            });
            $('.mainnews').click(function() {
                window.open($(this).attr('nurl'));
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
        for (recipechart of recipecharts) {
            ingre.push(recipechart.ingredient);
            cnt.push(recipechart.count);
        }
        var myChart2 = new Chart(ctx2, {
            type: 'pie', // 파이 차트
            data: {
                labels: ingre, //['Red', 'Blue', 'Yellow', 'Green', 'Purple'],
                datasets: [{
                    label: 'Votes',
                    data: cnt, //[12, 19, 3, 5, 2, 10, 12, 4, 7, 11],
                    backgroundColor: [
                        pastelRed,
                        pastelBlue,
                        pastelYellow,
                        pastelGreen,
                        pastelPurple,
                        a, b, c, d, e
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

        // 드롭다운 메뉴에서 마우스가 벗어났을 때 드롭다운 숨기기
        dropdown.addEventListener('mouseout', () => {
            dropdown.style.display = 'none';
        });


/*		      const gifMap = {
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
		*/
		
		
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
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">    
		var player;    // 유튜브 플레이어를 생성한다.   
		var videoid = '${work}';
		 function onYouTubePlayerAPIReady() {        
			try {  
				player = new YT.Player('playerLayer', {
		             	height: '300',                
						width: '100%',  
						videoId: videoid,               
						playerVars: {                    
							'autoplay': 1,  // 자동실행여부 
			                 'controls': 1,   // 재생컨트롤 노출여부
			                 'autohide': 0,  // 재생컨트롤이 자동으로 사라질지의 여부 
			                 'rel': 0,          // 동영상 재생완료 후 유사동영상 노출여부
			                 'wmode': 'transparent'                
						}, events: {  
							'onReady': onPlayerReady,
							'onStateChange': onPlayerStateChange,
							'onError': onPlayerError
		               }           
				});       
		 	} catch (e) {        
				}    
		}    // 유튜브 플레이어가 다 만들어지면 호출됨    
		function onPlayerReady(event) {        
			event.target.playVideo();     
		}    
		
		function onPlayerError(event) {
			console.log('Error occurred: ', event.data);
			if (event.data == 100 || event.data == 101  
					|| event.data == 150 || event.data == 2) {
						console.log("영상에러코드", event.data);
				// 100: 동영상이 존재하지 않음
				// 101: 동영상이 재생이 불가능한 상태
				// 150: 동영상이 재생이 불가능한 상태
				//alert('동영상을 로드할 수 없습니다. 대체 동영상을 로드합니다.');
				$.ajax({
					url : 'getNewVideoId',
					data : {"videoid" : videoid, "errcode" : event.data},
					success : function(result){
						//console.log('123',result);
						player.loadVideoById(result);
					},
					error : function(stat, err, c){
						alert('실패');
					}
				});
			}
		}
		
		// 동영상의 재생이 완료되었을 때 호출됨    
		function onPlayerStateChange(event) {       
			if (event.data === YT.PlayerState.ENDED) {
				$.ajax({
					type : 'get',
					url : 'getVideoId',
					success : function(result){
						videoid = result;
						player.loadVideoById(result);
					},
					error : function(stat, err, c){
						console.log(stat, err, c);
					}
				});
           }
		}
		//videoid = '${work}';
		onYouTubePlayerAPIReady();
		console.log('${work}');
		
		// 운동입력
		const updateScale = function(){
			if($('#exercise-type').val()!=null&&$('#exercise-min').val()!=""){
				let workcatename = $('#exercise-type').val();
				let worktime = $('#exercise-min').val();
				$.ajax({
					url : "workinput",
					data : {"workcatename": workcatename, "worktime": worktime},
					
					success : function(result){
						if(result.message=='세션만료')location="regist/login"
						$('.summary').empty();
						let a = '<div class="summary">'
		                       + '<h3>Summary</h3>'
		                       + '<p id="totalDuration">총 운동 시간: '+ result.worktime + '&nbsp;분</p>'
		                       + '<p id="totalDistance">총 소모칼로리: '+ result.workcal.toFixed(1) + '&nbsp;kcal</p> </div>';
						$('.summary').append(a);
						$('#exercise-min').val("");
						$('#exercise-type').val("");
					},
					error : function(stat, err, c){
						console.log(stat, err, c);
						alert('실패');
					}
				});
			}
		};
		
		
		var modal = document.getElementById("myModal");
		var btn = document.getElementById("openModal");
		var span = document.getElementsByClassName("close")[0];

		// 버튼 클릭 시 모달 열기
		btn.onclick = function() {
			if($.cookie('${sessionScope.user}') != "pass")
		    	modal.style.display = "block";
		}

		// 닫기 버튼 클릭 시 모달 닫기
		span.onclick = function() {
		    modal.style.display = "none";
		}

		// 모달 외부 클릭 시 모달 닫기
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}
		
		// 모달 이미지 페이징
		const images = [
		    'images/ani.jpg',
		    'images/sss.jpg',
		    'images/logo.png',
		    // 추가 이미지 경로
		];

		let currentIndex = 0; // 현재 이미지 인덱스 초기화

		// 이미지 업데이트 함수
		function updateImage() {
		    const modalImage = document.getElementById('modalImage');
		    modalImage.src = images[currentIndex];
		    updateButtonState(); // 버튼 상태 업데이트 호출
		}

		// 버튼 상태 업데이트 함수
		function updateButtonState() {
		    const prevButton = document.querySelector('.prev');
		    const nextButton = document.querySelector('.next');

		    // 이전 버튼 비활성화
		    if (currentIndex === 0) {
		        prevButton.disabled = true;
		    } else {
		        prevButton.disabled = false;
		    }

		    // 다음 버튼 비활성화
		    if (currentIndex === images.length - 1) {
		        nextButton.disabled = true;
		    } else {
		        nextButton.disabled = false;
		    }
		}

		// 초기 이미지와 버튼 상태 업데이트
		updateImage();

		// 이전 버튼 클릭 이벤트
		document.querySelector('.prev').addEventListener('click', function(e) {
		    e.preventDefault(); // 기본 링크 클릭 방지
		    currentIndex = (currentIndex > 0) ? currentIndex - 1 : images.length - 1; // 이전 이미지로 이동
		    updateImage();
		});

		// 다음 버튼 클릭 이벤트
		document.querySelector('.next').addEventListener('click', function(e) {
		    e.preventDefault(); // 기본 링크 클릭 방지
		    currentIndex = (currentIndex < images.length - 1) ? currentIndex + 1 : 0; // 다음 이미지로 이동
		    updateImage();
		});	
		
		$('.help-shutdown').click(function(){
			$('#myModal').css('display', 'none');
			if($('.checkbox-container input:checked').length == 1){
				$.cookie('${sessionScope.user}', 'pass', { expires: 7 });
			};
		});
		
		
		// 툴팁박스
		const chartContainer = document.querySelector('.chart-container12');
		const tooltip = document.getElementById('tooltip');

		chartContainer.addEventListener('mouseenter', (event) => {
		    tooltip.style.display = 'block'; // 툴팁 표시
		});

		chartContainer.addEventListener('mousemove', (event) => {
		    tooltip.style.left = `${event.pageX + 10}px`; // 마우스 위치에 따라 툴팁 위치 조정
		    tooltip.style.top = `${event.pageY + 10}px`;
		});

		chartContainer.addEventListener('mouseleave', () => {
		    tooltip.style.display = 'none'; // 툴팁 숨김
		});

	</script>
</body>

</html>