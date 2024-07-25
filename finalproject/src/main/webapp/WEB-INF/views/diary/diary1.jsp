<%@page contentType="text/html; charset=UTF-8"%>
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
                    <a href='../mypage'><img src="../images/sss.jpg" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%; class="profile-img w-nav-link"></a>
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
                                        <h2>3,000</h2>
                                        <p>섭취량</p>
                                        <h2>350</h2>
                                    </div>
                                    <!-- 차트 추가 -->
                                    <div class="chart-container">
                                        <canvas id="calorieChart"></canvas>
                                    </div>
                                    <div class="daily-intake1">
                                        <h2>잔여</h2>
                                        <h1>2,150 kcal</h1>
                                    </div>
                                    <div class="nutrients">
                                        <div class="nutrient">
                                            <p>탄수화물</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 10%;"></div>
                                            </div>
                                            <p>0/294g</p>
                                        </div>
                                        <div class="nutrient">
                                            <p>단백질</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 50%;"></div>
                                            </div>
                                            <p>0/106g</p>
                                        </div>
                                        <div class="nutrient">
                                            <p>지방</p>
                                            <div class="progress-bar">
                                                <div class="progress" style="width: 100%;"></div>
                                            </div>
                                            <p>0/59g</p>
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
                                        <p>0/700kcal</p>
                                        <input type="file" id="profilePicInput1" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput1')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>점심</p>
                                        <p>0/700kcal</p>
                                        <input type="file" id="profilePicInput2" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput2')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>저녁</p>
                                        <p>0/700kcal</p>
                                        <input type="file" id="profilePicInput3" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput3')">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>간식</p>
                                        <p>0/400kcal</p>
                                        <input type="file" id="profilePicInput4" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader('profilePicInput4')">+</button>
                                    </div>
                                    <br /><br />
                                    <div class="photos">
                                        <div class="photo-box" id="photoBox1">
                                            <a href="images/sss.jpg" data-fancybox="gallery1"><img src="#" id="profilePicPreview1" alt="식사기록 사진" class="responsive-img" style="display: none;"></a>
                                        </div>
                                        <div class="photo-box" id="photoBox2">
                                            <a href="images/sss.jpg" data-fancybox="gallery1"><img src="#" id="profilePicPreview2" alt="식사기록 사진" class="responsive-img" style="display: none;"></a>
                                        </div>
                                        <div class="photo-box" id="photoBox3">
                                            <a href="#" data-fancybox="gallery"><img src="#" id="profilePicPreview3" alt="식사기록 사진" class="responsive-img" style="display: none;"></a>
                                        </div>
                                        <div class="photo-box" id="photoBox4">
                                            <a href="#" data-fancybox="gallery"><img src="#" id="profilePicPreview4" alt="식사기록 사진" class="responsive-img" style="display: none;"></a>
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

		    // 파일 선택 시 처리
		    function handleFileSelect(event, previewId, photoBoxId) {
		        var file = event.target.files[0]; // 선택된 파일 객체
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
					
					
					var formData = new FormData();
		            formData.append('file', file);

					
					// 선택한 이미지 파이썬flask로 전송
		            $.ajax({
		                type: 'POST',
		                url: 'http://192.168.0.225:5000/upload',
		                data: formData,
		                processData: false,
		                contentType: false,
		                success: function(data) {
		                    alert('Upload successful!');
		                    console.log(data);
							console.log(data.result);
		                },
		                error: function(request, status, error) {
		                    alert('Upload failed');
		                    console.error("Request status: ", status);
		                    console.error("Error: ", error);
		                    console.error("Request: ", request);
		                }
		            });
					
					$.ajax({
		                type: 'POST',
		                url: 'diary/savePhoto',
		                data: formData,
		                processData: false,
		                contentType: false,
		                success: function(data) {
		                    alert('Upload successful!22');
		                    console.log(data);
		                },
		                error: function(request, status, error) {
		                    alert('Upload failed22');
		                    console.error("Request status: ", status);
		                    console.error("Error: ", error);
		                    console.error("Request: ", request);
		                }
		            });
					
					
		        }
		    }

		    document.getElementById('profilePicInput1').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview1', 'photoBox1');
		    });

		    document.getElementById('profilePicInput2').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview2', 'photoBox2');
		    });

		    document.getElementById('profilePicInput3').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview3', 'photoBox3');
		    });

		    document.getElementById('profilePicInput4').addEventListener('change', function(event) {
		        handleFileSelect(event, 'profilePicPreview4', 'photoBox4');
		    });

		    $(document).ready(function() {
		        // Fancybox 초기화
		        $('[data-fancybox="gallery1"]').fancybox({
		            openEffect: 'none',
		            closeEffect: 'none'
		        });
		    });
			
			const totalCalories = 3000;
			const consumedCalories = 350;
			const remainingCalories = totalCalories - consumedCalories;

			const data = {
			    labels: ['섭취칼로리', '잔여칼로리'],
			    datasets: [{
			        data: [consumedCalories, remainingCalories],
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
			    // Remove centerText from here
			};

			const ctx = document.getElementById('calorieChart').getContext('2d');

			// Register the plugin only for the doughnut chart
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
			        data: [65],
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
			    if (event.target == modal) {
			        modal.style.display = "none";
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

			        // 모달을 닫습니다
			        modal.style.display = "none";
			    }
			}

			
</script>
</body>

</html>