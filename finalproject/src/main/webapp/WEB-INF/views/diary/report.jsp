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
    <link href="../css/normalize.css" rel="stylesheet" type="text/css">
    <link href="../css/webflow.css" rel="stylesheet" type="text/css">
    <link href="../css/jades-ultra-awesome-site-d9185c.webflow.css" rel="stylesheet" type="text/css">
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
    <link href="../images/favicon.png" rel="shortcut icon" type="../image/x-icon">
    <link href="../images/webclip.png" rel="apple-touch-icon">

    <!-- Chart.js library -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        /* 추가적인 CSS 스타일링을 원하실 경우 여기에 추가하십시오. */
    </style>

</head>

<body class="body">
	
    <div data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="navbar-wrapper w-nav">
        <div class="main-container w-container">
            <div class="nav-wrapper">
                <a href="../index" class="brand-logo w-nav-brand"><img src="../images/CClogo.png" loading="lazy" width="146" sizes="(max-width: 479px) 100vw, 146px" alt="" srcset="../images/CClogo.png 500w, ../images/CClogo.png 740w" class="logo"></a>
                <nav role="navigation" class="main-nav w-nav-menu">
                    <a href="../index" class="menu-item w-nav-link">Home</a>
                    <a href="../recipe" class="menu-item w-nav-link">recipe</a>
                    <a href="../news" class="menu-item w-nav-link">news</a>
                    <a href="../diary" class="menu-item w-nav-link">diary</a>
                    <a href="../exercise" aria-current="page" class="menu-item w-nav-link w--current">exercise</a>
					<a href='../mypage'><img src="userphotos/${sessionScope.profile}" width="146" sizes="(max-width: 479px) 100vw, 146px" border-radius: 50%;  class="profile-img w-nav-link" ></a>
		        	  <div class="dropdown2">
						<span class="dropdown-item"><a href="report">report</a></span>
						<span class="dropdown-mypage"><a href="../regist/start">Logout</a></span>
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
                    <div class="sitemap-page"><img src="../images/sitemap_blog_4sitemap_blog_03.png" loading="lazy" alt="" class="sitemap-image">
                        <h4 class="sitemap-title">EXERCISE_DETAIL</h4>
                    </div>
                    <div class="sitemap-info"><img src="../images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="sitemap-dot">
                        <div class="sitemap-text">buzz bursts</div>
                    </div>
                </div>
                <div class="blog-wrapper">
                    <div class="blog-list-wrapper w-dyn-list">
                        <div role="list" class="blog-list w-dyn-items w-row">
                            <div data-w-id="896831f0-9c76-54de-eebe-d8914b48a114" role="listitem" class="blog-item1 w-dyn-item w-col w-col-6">
                                <div class="blog-item-div">
                                    <div class="content-container">
                                        <div class="date-text-report">
                                            <p>2024.07.03</p>
                                        </div>
                                        <div class="calendar">
                                            <table class="calendar-table">
                                                <thead>
                                                    <tr>
                                                        <th>일</th>
                                                        <th>월</th>
                                                        <th>화</th>
                                                        <th>수</th>
                                                        <th>목</th>
                                                        <th>금</th>
                                                        <th>토</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td>1</td>
                                                        <td>2</td>
                                                        <td>3</td>
                                                        <td>4</td>
                                                    </tr>
                                                    <tr>
                                                        <td>5</td>
                                                        <td>6</td>
                                                        <td>7</td>
                                                        <td>8</td>
                                                        <td>9</td>
                                                        <td>10</td>
                                                        <td>11</td>
                                                    </tr>
                                                    <tr>
                                                        <td>12</td>
                                                        <td>13</td>
                                                        <td>14</td>
                                                        <td>15</td>
                                                        <td>16</td>
                                                        <td>17</td>
                                                        <td>18</td>
                                                    </tr>
                                                    <tr>
                                                        <td>19</td>
                                                        <td>20</td>
                                                        <td>21</td>
                                                        <td>22</td>
                                                        <td>23</td>
                                                        <td>24</td>
                                                        <td>25</td>
                                                    </tr>
                                                    <tr>
                                                        <td>26</td>
                                                        <td>27</td>
                                                        <td>28</td>
                                                        <td>29</td>
                                                        <td>30</td>
                                                        <td>31</td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="photos-report">
                                            <div class="photo-box-report">
                                                <img src="../images/ani.jpg" alt="음식사진 1">
                                            </div>
                                            <div class="photo-box-report">
                                                <img src="../images/ani.jpg" alt="음식사진 2">
                                            </div>
                                            <div class="photo-box-report">
                                                <img src="../images/ani.jpg" alt="음식사진 3">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog-item-div">
                                    <div class="content-container">
                                        <div class="date-text-report">
                                            <p>2024.07.03</p>
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
    <script src="../js/webflow.js" type="text/javascript"></script>
    <script>
        // 첫 번째 차트 (Line Chart)
        var ctx1 = document.getElementById('chart1').getContext('2d');
        var myChart1 = new Chart(ctx1, {
            type: 'line',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple'],
                datasets: [{
                    label: '# of Votes',
                    data: [12, 19, 3, 5, 2],
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Chart.js Line Chart'
                    }
                }
            }
        }); 
		
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
    </script>
</body>

</html>
