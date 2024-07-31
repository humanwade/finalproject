<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html data-wf-page="668501d6493a753e79314797" data-wf-site="668501d6493a753e79314722">

<head>
    <meta charset="utf-8">
    <title> diary</title>
    <meta content="Services" property="og:title">
    <meta content="Services" property="twitter:title">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Webflow" name="generator">
    <link href="css/normalize.css" rel="stylesheet" type="text/css">
    <link href="css/webflow.css" rel="stylesheet" type="text/css">
    <link href="css/jades-ultra-awesome-site-d9185c.webflow.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
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

<body class="body">

    <div data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="navbar-wrapper w-nav">
        <div class="main-container w-container">
            <div class="nav-wrapper">
                <a href="index" class="brand-logo w-nav-brand"><img src="images/CClogo.png" loading="lazy" width="146" sizes="(max-width: 479px) 100vw, 146px" alt="" srcset="images/CClogo.png 500w, images/CClogo.png 740w" class="logo"></a>
                <nav role="navigation" class="main-nav w-nav-menu">
                    <a href="index" class="menu-item w-nav-link">Home</a>
                    <a href="recipe" class="menu-item w-nav-link">recipe</a>
                    <a href="news" class="menu-item w-nav-link">news</a>
                    <a href="diary" aria-current="page" class="menu-item w-nav-link w--current">diary</a>
                    <a href="exercise" class="menu-item w-nav-link">exercise</a>


					<!--   충돌부분    -->

                    <a href='../mypage'><img src="userphotos/${sessionScope.profile}" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%; class="profile-img w-nav-link"></a>
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
        <div class="inner-pages-wrap">
            <div class="w-layout-blockcontainer main-container w-container">
                <div class="site-map">
                    <div class="sitemap-page"><img src="images/sitemap_img2_1sitemap_img2.png" loading="lazy" alt="" class="sitemap-image">
                        <h4 class="sitemap-title">DIARY</h4>
                    </div>
                    <div class="sitemap-info"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="sitemap-dot">
                        <div class="sitemap-text">elite solutions</div>
                    </div>
                </div>
                <div class="blog-wrapper">
                    <div class="blog-list-wrapper w-dyn-list">
                        <div role="list" class="blog-list w-dyn-items w-row">
                            <div data-w-id="896831f0-9c76-54de-eebe-d8914b48a114" role="listitem" class="blog-item w-dyn-item w-col w-col-6">
                                <div class="blog-item-div">
                                    <div class="daily-intake">
                                        <p>일일권장량</p>
                                        <h2 class="recomandcal">3,000</h2>
                                        <p>섭취량</p>
                                        <h2 class="calsum">350</h2>
                                    </div>
                                    <!-- 차트 추가 -->
                                    <div class="chart-container">
                                        <canvas id="calorieChart"></canvas>
                                    </div>
                                    <div class="daily-intake1">
                                        <h2>잔여</h2>
                                        <h1 class="remainingcal">2,150 kcal</h1>
                                    </div>
									<c:set var="carbsum" value="0"/>
									<c:set var="proteinsum" value="0"/>
									<c:set var="fatsum" value="0"/>
									<c:forEach items="${result}" var="meals">
										<c:forEach items="${meals}" var="meal">
											<c:set var="carbsum" value="${carbsum+meal.CARBOHYDRATES}"/>
											<c:set var="proteinsum" value="${proteinsum+meal.PROTEINS}"/>
											<c:set var="fatsum" value="${fatsum+meal.FATS}"/>
										</c:forEach>
									</c:forEach>
                                    <div class="nutrients">
                                        <div class="nutrient">
                                            <p>탄수화물</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 100%;"></div>
                                            </div>
                                            <p class="nutri1">${Math.floor(carbsum)}/294g</p>
                                        </div>
                                        <div class="nutrient">
                                            <p>단백질</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 50%;"></div>
                                            </div>
                                            <p class="nutri2">${Math.floor(proteinsum)}/106g</p>
                                        </div>
                                        <div class="nutrient">
                                            <p>지방</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 100%;"></div>
                                            </div>
                                            <p class="nutri3">${Math.floor(fatsum)}/59g</p>
											<div id="myModal2" class="modal2">
										        <div class="modal-content2">
										            <span class="close2">&times;</span>
													<div class="photos-detail">
											  <div class="photo-box-detail">
											    <img src="../images/ani.jpg" alt="음식사진 1">
											    <div class="photo-name"> <span id="food-name">불고기</span> 입니다.
												 <div class="photo-cal"><span id="photo-cal-no">1111</span>  kcal</div></div>
											  </div> 
											  <div class="photo-name-update">
											    <span id="selected-value">불고기</span> 사진의 정보가 틀리다면 <span id="edit-text">수정</span> 해주세요
											  </div>
											  <div id="dropdown-container" style="display:none;">
											    <label for="options" id="dropdown-label">옵션을 선택하세요:</label>
											    <select id="options">
												  <c:forEach items="${foodinfo}" var="food">
												  	<option value="${food.foodname}" cal=${food.calories}>${food.foodname}</option>
												  </c:forEach>
											      <!--<option value="불고기">불고기</option>
											      <option value="비빔밥">치킨</option>
											      <option value="도넛">도넛</option>
												  <option value="생선튀김">생선튀김</option>
												  <option value="김밥">김밥</option>
												  <option value="라면">라면</option>
												  <option value="만두">만두</option>
												  <option value="피자">피자</option>
												  <option value="쌀밥">쌀밥</option>
												  <option value="스테이크">스테이크</option>
												  <option value="스키야키">스키야키</option>
												  <option value="떡볶이">떡볶이</option>-->
												  
											    </select>
											  </div>
											</div>
												
												<div class="detail_photo_btn">
													<button class="photo_submit_btn">확인</button>
											    </div> 
										        </div>
										    </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-w-id="896831f0-9c76-54de-eebe-d8914b48a114" role="listitem" class="blog-item w-dyn-item w-col w-col-6">
                                <div class="blog-item-div">
                                    <div class="meal-records">
                                        <h2>식사기록</h2>
                                    </div>
                                    <div class="meal">
                                        <p>아침</p>
										<c:set var="calsum1" value="0"/>
										<c:forEach items="${result[0]}" var="breakfast">
											<c:set var="calsum1" value="${calsum1+breakfast.CALORIES}"/>
										</c:forEach>
                                        <p class="rmcal1"></p>
                                        <input type="file" id="profilePicInput1" accept="image/*" style="display: none;">
                                        <button class="plus1" onclick="openFileUploader('profilePicInput1')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>점심</p>
										<c:set var="calsum2" value="0"/>
										<c:forEach items="${result[1]}" var="lunch">
											<c:set var="calsum2" value="${calsum2+lunch.CALORIES}"/>
										</c:forEach>
                                        <p class='rmcal2'></p>
                                        <input type="file" id="profilePicInput2" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput2')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>저녁</p>
										<c:set var="calsum3" value="0"/>
										<c:forEach items="${result[2]}" var="dinner">
											<c:set var="calsum3" value="${calsum3+dinner.CALORIES}"/>
										</c:forEach>
                                        <p class='rmcal3'></p>
                                        <input type="file" id="profilePicInput3" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput3')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>간식</p>
										<c:set var="calsum4" value="0"/>
										<c:forEach items="${result[3]}" var="snack">
											<c:set var="calsum4" value="${calsum4+snack.CALORIES}"/>
										</c:forEach>
                                        <p class="rmcal4"></p>
                                        <input type="file" id="profilePicInput4" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput4')">+</button>
                                    </div>
									
									<!-- 이미지업로드 모달 -->
								    <!--<div id="myModal2" class="modal">
								        <div class="modal-content">
								            <span class="close">&times;</span>
								            <h2>2024년 07월 2355일</h2>
								            <label for="weightInput">몸무게5555:</label>
											<div class="weightupdown">
								            <input type="number" id="weightInput" name="weightInput"><br><br>											
											</div>
								            <button id="submitWeight" class="input-button">제출</button>
								        </div>
								    </div>-->
									
                                    <br /><br />
                                    <div class="photos">
                                        <div class="photo-box" id="photoBox1">
											<c:forEach items="${result[0]}" var="photo" varStatus="stat">
												<a href="/files/${photo.UPLOADNAME}" data-fancybox="gallery1">
													<c:if test="${stat.index==0}">
														<img src="/files/${photo.UPLOADNAME}" id="profilePicPreview1" alt="식사기록 사진" class="responsive-img" style="display: block;">
													</c:if>
												</a>
											</c:forEach>
                                        </div>
                                        <div class="photo-box" id="photoBox2">
											<c:forEach items="${result[1]}" var="photo" varStatus="stat">
												<a href="/files/${photo.UPLOADNAME}" data-fancybox="gallery2">
													<c:if test="${stat.index==0}">
														<img src="/files/${photo.UPLOADNAME}" id="profilePicPreview1" alt="식사기록 사진" class="responsive-img" style="display: block;">
													</c:if>
												</a>
											</c:forEach>
                                        </div>
                                        <div class="photo-box" id="photoBox3">
											<c:forEach items="${result[2]}" var="photo" varStatus="stat">
												<a href="/files/${photo.UPLOADNAME}" data-fancybox="gallery3">
													<c:if test="${stat.index==0}">
														<img src="/files/${photo.UPLOADNAME}" id="profilePicPreview1" alt="식사기록 사진" class="responsive-img" style="display: block;">
													</c:if>
												</a>
											</c:forEach>
                                        </div>
                                        <div class="photo-box" id="photoBox4">
											<c:forEach items="${result[3]}" var="photo" varStatus="stat">
												<a href="/files/${photo.UPLOADNAME}" data-fancybox="gallery4">
													<c:if test="${stat.index==0}">
														<img src="/files/${photo.UPLOADNAME}" id="profilePicPreview1" alt="식사기록 사진" class="responsive-img" style="display: block;">
													</c:if>
												</a>
											</c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-w-id="896831f0-9c76-54de-eebe-d8914b48a114" role="listitem" class="blog-item w-dyn-item w-col w-col-6">
                                <div class="blog-item-div">

									<button id="myBtn" class="input-button1"><i class="fas fa-weight"></i> ‍몸무게입력 </button>

									    <!-- 모달 -->
									    <div id="myModal" class="modal">
									        <div class="modal-content">
									            <span class="close">&times;</span>
									            <h2>2024년 07월 23일</h2>
									            <label for="weightInput">몸무게:</label>
												<div class="weightupdown">
									            <input type="number" id="weightInput" name="weightInput"><br><br>											
												</div>
									            <button id="submitWeight" class="input-button">제출</button>
									        </div>
									    </div>
										
									<div class="blog-item-div">
	                                    <div class="content-container">										
	                                        <div class="date-text-report">
	                                            <p style="font-size:200%;">일별 000</p>
	                                        </div>
	                                        <div class="chart-container">
	                                            <canvas id="chart1"></canvas>
	                                        </div>
	                                    </div>
	                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>		
    </section>
	${userinfo}
	${weights}
	<c:set var="listweights" value="${weights}"/>
	${listweights}
	<input id="weightdata" type="hidden" value="${weights}"/>
    <div class="footer">
        <div class="copyright-text">Grido - Innovatively Yours: © 2023 🌟 Powered by <a href="#" class="copyright-text">Webflow</a>
        </div>
    </div>
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=668501d6493a753e79314722" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

      
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="js/webflow.js" type="text/javascript"></script>
    <script>
		function openFileUploader(inputId) {
		        document.getElementById(inputId).click();
		    }
			var formData = new FormData();
		    // 파일 선택 시 처리
		    async function handleFileSelect(event, previewId, photoBoxId, mealType) {
		        var file = event.target.files[0]; // 선택된 파일 객체
				console.log(event.target.files[0]);
		        if (file) {
		            var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
		            reader.onload = function(e) {
		                var img = document.getElementById(previewId);
		                img.setAttribute('src', e.target.result); // 이미지 미리보기 설정
		                img.style.display = 'block'; // 이미지 미리보기 표시

		                var photoBox = document.getElementById(photoBoxId);
		                photoBox.style.border = "2px solid #f9f9f9"; // 배경색을 흰색으로 변경
		            };
		            reader.readAsDataURL(file); // 파일을 읽어 data URL 형식으로 변환
					
					formData.delete('file');
		            formData.append('file', file);
					//아, 점, 저 ,간 지정
					formData.delete('history');
					formData.append('history', mealType);
					console.log(formData.get('file'));
					// 선택한 이미지 파이썬flask로 전송
		            await $.ajax({
		                type: 'POST',
		                url: 'http://192.168.0.225:5000/upload',
		                data: formData,
		                processData: false,
		                contentType: false,
		                success: function(result) {
							if(result.foodname=="Error") {
								alert('사진이 올바르지 않습니다');
								
							}else{
			                    alert('이미지분석완료');
								$('#food-name').text(result.foodname);
								$('#selected-value').text(result.foodname);
								$('#options').val(result.foodname);
								$('#photo-cal-no').text($('#options option:selected').attr('cal'));
								//formData.append("foodname", data.foodname);
								
								//음식사진 이름확인 모달 열기
								modal2.style.display = "block";
							}
		                },
		                error: function(request, status, error) {
		                    alert('인터넷상태가 올바르지 않습니다. 나중에 다시 시도해주세요.');
		                    console.error("Request status: ", status);
		                    console.error("Error: ", error);
		                    console.error("Request: ", request);
		                }
		            });
					
					/*$.ajax({
		                type: 'POST',
		                url: 'diary/savePhoto',
		                data: formData,
		                processData: false,
		                contentType: false,
		                success: function(data) {
							alert("사진저장완료")
		                },
		                error: function(request, status, error) {
		                    alert('Upload failed22');
		                    console.error("Request status: ", status);
		                    console.error("Error: ", error);
		                    console.error("Request: ", request);
		                }
		            });*/
					
					
		        }
		    }
			
			// 이미지분석 모달 확인버튼 클릭시 DB 사진저장 및 다이어리 저장
			$('.photo_submit_btn').click(function(){
				formData.append("foodname", $('#food-name').text());
				$.ajax({
	                type: 'POST',
	                url: 'diary/savePhotoDiary',
	                data: formData,
	                processData: false,
	                contentType: false,
	                success: function(data) {
						alert("사진저장완료");
						modal2.style.display="none";
						location = "/diary";
	                },
	                error: function(request, status, error) {
	                    alert('Upload failed22');
	                    console.error("Request status: ", status);
	                    console.error("Error: ", error);
	                    console.error("Request: ", request);
	                }
	            });
			});

		    document.getElementById('profilePicInput1').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview1', 'photoBox1', "아침");
		    });

		    document.getElementById('profilePicInput2').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview2', 'photoBox2', "점심");
		    });

		    document.getElementById('profilePicInput3').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview3', 'photoBox3', "저녁");
		    });

		    document.getElementById('profilePicInput4').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview4', 'photoBox4', "간식");
		    });

		    $(document).ready(function() {
		        // Fancybox 초기화
		        $('[data-fancybox="gallery1"]').fancybox({
		            openEffect: 'none',
		            closeEffect: 'none',
		        });
		    });
			
			
			
			// 일일권장량 수정
			if("${userinfo.GENDER}" == "남자") {
					//기초대사량(BMR)
					var bmr = 88.362+(13.397*Number(${userinfo.WEIGHT}))+(4.799*Number(${userinfo.HEIGHT}))-(5.677*Number(${userinfo.AGE}));
				}
				else {
					alert('223');
					var bmr = 447.563+(9.247*Number(${userinfo.WEIGHT}))+(3.098*Number(${userinfo.HEIGHT}))-(4.33*Number(${userinfo.AGE}));		
				}
				
				//목표에 따른 계산
				const goalvalue = {
			       '체중감량': 0.75,
			       '근육증량': 1.1,
			       '체중유지': 1
			   }["${userinfo.GOAL}"] || 1;
						   
			   //일일에너지소비(TDEE)
				const actvalue = {
				        '1': 1.2,
				        '2': 1.375,
				        '3': 1.55,
				        '4': 1.725
				}["${userinfo.ACTIVITY}"]|| 1.2;
				let tdee = bmr * actvalue;
				let goal = tdee * goalvalue;
				
				var recomandcal = Math.floor(goal);
				var a = Math.floor(recomandcal*0.35);
				var b = Math.floor(recomandcal*0.2);
				var c = recomandcal-((a*2)+b);
				$('.recomandcal').text(Math.floor(goal)+"kcal");
				$('.rmcal1').text(${calsum1}+"/"+Math.floor(recomandcal*0.35)+"kcal");
				$('.rmcal2').text(${calsum2}+"/"+Math.floor(recomandcal*0.35)+"kcal");
				$('.rmcal3').text(${calsum3}+"/"+Math.floor(recomandcal*0.2)+"kcal");
				$('.rmcal4').text(${calsum4}+"/"+c+"kcal");
			
			var carbg = Math.floor(${carbsum});
			var proteing = Math.floor(${proteinsum});
			var fatg = Math.floor(${fatsum});
			// 탄단지 계산  탄 55 단 25 지방 20
			$('.nutri1').text(carbg+"/"+Math.floor(recomandcal*0.55/4)+"g");
			$('.nutri2').text(proteing+"/"+Math.floor(recomandcal*0.25/4)+"g");
			$('.nutri3').text(fatg+"/"+Math.floor(recomandcal*0.20/9)+"g");
			// 프로그레스바 수정
			$('.progress:eq(0)').css('width', ${carbsum}/(recomandcal*0.55/4)*100+'%');
			$('.progress:eq(1)').css('width', ${proteinsum}/(recomandcal*0.25/4)*100+'%');
			$('.progress:eq(2)').css('width', ${fatsum}/(recomandcal*0.20/9)*100+'%');
			const totalCalories = recomandcal;
			const consumedCalories = ${calsum1+calsum2+calsum3+calsum4};
			let remainingCalories = totalCalories - consumedCalories<0?0:totalCalories - consumedCalories;
			//섭취량, 잔여량 변경
			$('.calsum').text(consumedCalories+"kcal");
			$('.remainingcal').text(remainingCalories+"kcal");
			//if(remainingCalories < 0) remainingCalories=0;
			const data = {
			    labels: ['섭취칼로리', '잔여칼로리'],
			    datasets: [{
			        data: [consumedCalories, remainingCalories],//<0?0:remainingCalories],	// 섭취칼로리 오버시 조정
			        backgroundColor: ['#FF6384', '#36A2EB'],
			        hoverBackgroundColor: ['#FF6384', '#36A2EB']
			    }]
			};

			const options = {
			    responsive: true,
			    maintainAspectRatio: false,
			    cutout: '80%',
			    plugins: {
			        tooltip: {
			            callbacks: {
			                label: function (tooltipItem) {
			                    return tooltipItem.label + ': ' + tooltipItem.raw + ' kcal';
			                }
			            }
			        },
			        legend: {
			            display: false
			        },
			        title: {
			            display: true,
			            position: 'center'
			        }
			    },
			    
			};

			const ctx = document.getElementById('calorieChart').getContext('2d');

			
			Chart.register({
			    id: 'centerText',
			    beforeDraw: function (chart) {
			        if (chart.config.type === 'doughnut') {
			            const width = chart.width;
			            const height = chart.height;
			            const ctx = chart.ctx;

			            const text = remainingCalories + ' kcal';
			            const fontSize = (height / 114).toFixed(2);
			            ctx.font = fontSize + "em sans-serif";
			            ctx.textBaseline = "middle";
			            ctx.fillStyle = 'white'; // Set text color here

			            const textX = Math.round((width - ctx.measureText(text).width) / 2);
			            const textY = height / 2;

			            ctx.fillText(text, textX, textY);
			        }
			    }
			});
			
			//const aa = ${weightss};
			console.log(${weights});
			// Create the doughnut chart
			new Chart(ctx, {
			    type: 'doughnut',
			    data: data,
			    options: options
			});
			
			const ctx1 = document.getElementById('chart1').getContext('2d');
			
			let chartDataSets = [
			    {
			        label: '일별 몸무게',
			        data: ${weightss},
			        backgroundColor: 'rgba(255, 99, 132, 0.2)',
			        borderColor: 'rgba(255, 99, 132, 1)',
			        borderWidth: 1
			    },
			    {
			        label: '일별 칼로리',
			        data: [22, 29, 13, 25, 12],
			        backgroundColor: 'rgba(54, 162, 235, 0.2)',
			        borderColor: 'rgba(54, 162, 235, 1)',
			        borderWidth: 1
			    },
				{
			        label: '일별 탄단지',
			        data: [30, 2, 21, 12, 7],
			        backgroundColor: 'rgba(60, 255, 0, 0.2)',
			        borderColor: 'rgba(60, 255, 0, 1)',
			        borderWidth: 1
			    }
			];

			let currentChartType = 0;

			const myChart1 = new Chart(ctx1, {
			    type: 'line',
			    data: {
			        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple'],
			        datasets: [chartDataSets[currentChartType]]
			    },
			    options: {
			        responsive: true,
			        plugins: {
			            legend: {
			                position: 'top',
			                onClick: function(event, legendItem, legend) {
			                    // Check if the clicked label is the one we want to switch
			                    const index = legendItem.datasetIndex;
			                    if (index === 0) { // Assuming the first label is the one to toggle
			                        currentChartType = (currentChartType + 1) % chartDataSets.length;
			                        myChart1.data.datasets = [chartDataSets[currentChartType]];
			                        myChart1.update();
			                    }
			                }
			            },
			            title: {
			                display: true,
			                text: 'Dynamic Line Chart'
			            }
			        }
			    }
			});
			
			// 모달 요소 가져오기
			const modal = document.getElementById("myModal");
			// 모달을 여는 버튼 가져오기
			const btn = document.getElementById("myBtn");
			// 모달을 닫는 <span> 요소 가져오기
			const span = document.getElementsByClassName("close")[0];		

			// 모달 요소 가져오기
			const modal2 = document.getElementById("myModal2");

			// 모달을 닫는 <span> 요소 가져오기
			const span2 = document.getElementsByClassName("close2")[0];

			// 제출 버튼 가져오기
			const submitBtn = document.getElementById("submitWeight");

			// 버튼을 클릭하면 모달을 엽니다
			btn.onclick = function() {
			    modal.style.display = "block";
			}

			// <span>을 클릭하면 모달을 닫습니다
			span.onclick = function() {
			    modal.style.display = "none";
			}

			// 모달 외부를 클릭하면 모달을 닫습니다
			window.onclick = function(event) {
			    if (modal.style.display=="block" && event.target == modal ) {
			        modal.style.display = "none";
			    } 
				if (modal2.style.display=="block" && event.target == modal2) {
			        modal2.style.display = "none";
			    }
			}

			// 제출 버튼 클릭 시 차트 데이터에 몸무게 추가
			submitBtn.onclick = function() {
			    const weightInput = document.getElementById("weightInput").value;
			    if (weightInput) {
			        // 여기서 새 데이터 포인트를 추가하고 차트를 업데이트합니다
			        myChart1.data.labels.push('New');
			        myChart1.data.datasets[0].data.push(weightInput);
			        myChart1.update();
					$.ajax({
						type : "get",
						url : "diary/saveWeight?weight="+weightInput,
						success : function(result){
							alert("성공");
							console.log(result);
						},
						error : function(stat, err, c){
							console.log(stat, err, c)
						}
					});

			        // 모달을 닫습니다
			        modal.style.display = "none";
			    }
			}
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
					  
					  
					  
					/*  document.getElementById("profilePicInput1").addEventListener("change", openModal);
					  document.getElementById("profilePicInput2").addEventListener("change", openModal);
					  document.getElementById("profilePicInput3").addEventListener("change", openModal);
					  document.getElementById("profilePicInput4").addEventListener("change", openModal);

					  function openModal() {
					      modal2.style.display = "block"; // 모달 창 열기
					  }
					  
					 */

					  // 기존의 모달 열기 버튼 클릭 이벤트
					  /*btn.onclick = function() {
					      modal2.style.display = "block";
					  }*/

					  // <span>을 클릭하면 모달을 닫기
					  span2.onclick = function() {
					      modal2.style.display = "none";
					  }

					  // 몸무게 모달에 오늘날짜 입력
					var date = new Date();
					year = date.getFullYear();
					month = date.getMonth()+1;
					date = date.getDate();
					$('#myModal h2').text(year+"년 "+month+"월 "+date+"일");
					
				  // 모달 음식변경 셀렉트박스 드롭다운
				  document.getElementById('edit-text').addEventListener('click', function() {
		  		  var dropdownContainer = document.getElementById('dropdown-container');
		  		  dropdownContainer.style.display = 'block';
		  		  dropdownContainer.scrollIntoView({ behavior: 'smooth' });

		  		  // 여기서 label 문구를 동적으로 변경할 수 있습니다.
		  		  var dropdownLabel = document.getElementById('dropdown-label');
			  		  dropdownLabel.textContent = '새로운 옵션을 선택하세요:';
			  		});
	
			  		document.getElementById('options').addEventListener('change', function() {
			  		  var selectedValue = document.getElementById('options').value;
			  		  
			  		  // selected-value와 food-name 요소의 텍스트를 변경합니다.
			  		  document.getElementById('selected-value').textContent = selectedValue;
			  		  document.getElementById('food-name').textContent = selectedValue;
					  $('#photo-cal-no').text($('#options option:selected').attr('cal'));
			  		  var dropdownContainer = document.getElementById('dropdown-container');
			  		  dropdownContainer.style.display = 'none';
			  		});
					  
							
							
						
								
			
			
							
</script>
</body>

</html>