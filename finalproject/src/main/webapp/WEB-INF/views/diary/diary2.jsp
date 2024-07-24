<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html data-wf-page="668501d6493a753e79314797" data-wf-site="668501d6493a753e79314722">

<head>
    <meta charset="utf-8">
    <title>diary1</title>
    <meta content="Services" property="og:title">
    <meta content="Services" property="twitter:title">
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
					<a href='../mypage'><img src="../images/sss.jpg" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%;  class="profile-img w-nav-link" ></a>
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
										<input type="file" id="profilePicInput" accept="image/*" style="display: none;">
                                        <button onclick="openFileUploader()">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>점심</p>
                                        <p>0/700kcal</p>
										<input type="file" id="profilePicInput" accept="image/*" style="display: none;">
																				                                        <button onclick="openFileUploader()">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>저녁</p>
                                        <p>0/700kcal</p>
										<input type="file" id="profilePicInput" accept="image/*" style="display: none;">
										                                        <button onclick="openFileUploader()">+</button>
                                    </div>
                                    <div class="meal">
                                        <p>간식</p>
                                        <p>0/400kcal</p>
										<input type="file" id="profilePicInput" accept="image/*" style="display: none;">
										                                        <button onclick="openFileUploader()">+</button>
                                    </div>
									<br/><br/>
                                    <div class="photos">
                                        <div class="photo-box">
                                            <img src="#"  id="profilePicPreview" alt="식사기록 사진" class="responsive-img" style="display: none;">
                                        </div>
                                        <div class="photo-box">
                                            <img src="#" id="profilePicPreview" alt="식사기록 사진" class="responsive-img" style="display: none;">
                                        </div>
                                        <div class="photo-box">
                                            <img src="#" id="profilePicPreview" alt="식사기록 사진" class="responsive-img" style="display: none;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div data-w-id="896831f0-9c76-54de-eebe-d8914b48a114" role="listitem" class="blog-item w-dyn-item w-col w-col-6">
                                <div class="blog-item-div">
                                    <div class="water-intake">
                                        <h2>물섭취</h2>
                                        <p>0.0/2L</p>
                                        <div class="water-bar">
                                            <div class="water-progress" style="height: 10%;"></div>
                                        </div>
                                        <button class="test22">+ 200ml</button>
                                        <button>-</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>		
    </section>
	
	<form id="uploadForm">
	        <input type="file" id="fileInput" name="file">
	        <button type="button" onclick="uploadFile()">Upload</button>
	    </form>
	
	
    <div class="footer">
        <div class="copyright-text">Grido - Innovatively Yours: © 2023 🌟 Powered by <a href="#" class="copyright-text">Webflow</a>
        </div>
    </div>
    <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=668501d6493a753e79314722" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
	<script src="js/webflow.js" type="text/javascript"></script>
	<script>
		
		function uploadFile() {
		            var formData = new FormData();
		            var fileInput = document.getElementById('fileInput');
		            var file = fileInput.files[0];
		            formData.append('file', file);

		            $.ajax({
		                type: 'POST',
		                url: 'http://127.0.0.1:5000/upload',
		                data: formData,
		                processData: false,
		                contentType: false,
		                success: function(data) {
		                    alert('Upload successful!');
		                    console.log(data);
		                },
		                error: function(request, status, error) {
		                    alert('Upload failed');
		                    console.error("Request status: ", status);
		                    console.error("Error: ", error);
		                    console.error("Request: ", request);
		                }
		            });
		        }
				
				
				
				
		
		$('.test22').click(function(){
			const a = { "test": "1234", "test2": "5678" };

			$.ajax({
			    type: 'POST',
			    url: 'http://127.0.0.1:5000/upload',
			    data: JSON.stringify(a),
			    contentType: 'application/json', // 이 부분을 추가
			    dataType: 'json',
			    success: function(data){
			        alert('성공! 데이터 값: ' + data.result2['test'] + " " + data.result2['test2']);
			    },
			    error: function(request, status, error){
			        alert('ajax 통신 실패');
			        console.error("Request status: ", status);
			        console.error("Error: ", error);
			        console.error("Request: ", request);
			    }
			});
		});
		function openFileUploader() {
				    document.getElementById('profilePicInput').click();
		}

				  // 파일 선택 시 처리
	  document.getElementById('profilePicInput').addEventListener('change', function() {
	    var file = this.files[0]; // 선택된 파일 객체
	    if (file) {
			
			
			var formData = new FormData();
			formData.append('file', file);

	            $.ajax({
	                type: 'POST',
	                url: 'http://127.0.0.1:5000/upload',
	                data: formData,
	                processData: false,
	                contentType: false,
	                success: function(data) {
	                    alert('Upload successful!');
	                    console.log(data);
	                },
	                error: function(request, status, error) {
	                    alert('Upload failed');
	                    console.error("Request status: ", status);
	                    console.error("Error: ", error);
	                    console.error("Request: ", request);
	                }
	            });
								
								
								
	      var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
	      reader.onload = function(e) {
	        document.getElementById('profilePicPreview').setAttribute('src', e.target.result); // 이미지 미리보기 설정
	        document.getElementById('profilePicPreview').style.display = 'block'; // 이미지 미리보기 표시
	      };
	      reader.readAsDataURL(file); // 파일을 읽어 data URL 형식으로 변환

	    }
	  });
		
</script>
</body>

</html>