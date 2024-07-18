<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://webflow.com  --><!--  Last Published: Wed Jul 03 2024 07:46:48 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="668501d6493a753e79314797" data-wf-site="668501d6493a753e79314722">
<head>
  <meta charset="utf-8">
  <title>News</title>
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
  <script type="text/javascript">WebFont.load({  google: {    families: ["Oswald:200,300,400,500,600,700","Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic","Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Syne:regular,500,600,700,800","Syne:regular,500,600,700,800"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
</head>
<body class="body">
<div class="spinner-overlay" id ="spinner">
	<div class="spinner"></div>
</div>
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
            <h4 class="sitemap-title">News</h4>
          </div>
          <div class="sitemap-info"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="sitemap-dot">
            <div class="sitemap-text">전체보기</div>
          </div>
        </div>
        <div id="w-node-_547f02d4-6217-068d-ef4c-bb1d451fce63-79314797" class="w-layout-layout services-grid wf-layout-layout adds">
			<c:forEach items="${result}" var="news" varStatus="stat">
				<div id="w-node-_547f02d4-6217-068d-ef4c-bb1d451fce64-79314797" data-w-id="547f02d4-6217-068d-ef4c-bb1d451fce64" class="w-layout-cell service-item"><img src="${news.nimgurl}" loading="lazy" width="150" height="150" alt="${news.newsid}" class="service-image">
		            <div class="service-infos">
		             <h4 class="service-item-title" url="${news.newsurl}">${news.title}</h4>
					 <p class="service-item-paragraph">${news.content}</p>     
				 </div>
          		</div>
			</c:forEach>
          <!--<div id="w-node-_547f02d4-6217-068d-ef4c-bb1d451fce65-79314797" data-w-id="547f02d4-6217-068d-ef4c-bb1d451fce65" class="w-layout-cell service-item"><img src="images/service1.png" loading="lazy" width="150" height="150" alt="" class="service-image">
            <div class="service-infos">
              <h4 class="service-item-title">News Title</h4>
              <p class="service-item-paragraph">News Contant</p>
            </div>
          </div>
          <div id="w-node-eafdbab4-24b7-cf93-5ac0-5944fe194057-79314797" data-w-id="eafdbab4-24b7-cf93-5ac0-5944fe194057" class="w-layout-cell service-item"><img src="images/service2.png" loading="lazy" width="150" height="150" alt="" class="service-image">
            <div class="service-infos">
              <h4 class="service-item-title">News Title</h4>
              <p class="service-item-paragraph">News Contant</p>
            </div>
          </div>
          <div id="w-node-_6d65e756-ef6f-c8d0-3290-79e0ea8d2468-79314797" data-w-id="6d65e756-ef6f-c8d0-3290-79e0ea8d2468" class="w-layout-cell service-item"><img src="images/service5.png" loading="lazy" width="150" height="150" alt="" class="service-image">
            <div class="service-infos">
              <h4 class="service-item-title">News Title</h4>
              <p class="service-item-paragraph">News Contant</p>
            </div>
          </div>
          <div id="w-node-_30f3f577-6878-c2ab-272c-141bc6f62d10-79314797" data-w-id="30f3f577-6878-c2ab-272c-141bc6f62d10" class="w-layout-cell service-item"><img src="images/service4.png" loading="lazy" width="150" height="150" alt="" class="service-image">
            <div class="service-infos">
              <h4 class="service-item-title">News Title</h4>
              <p class="service-item-paragraph">News Contant</p>
            </div>
          </div>
          <div id="w-node-bb55319c-5049-a628-ef91-506edacb126e-79314797" data-w-id="bb55319c-5049-a628-ef91-506edacb126e" class="w-layout-cell service-item"><img src="images/service6.png" loading="lazy" width="150" height="150" alt="" class="service-image">
            <div class="service-infos">
              <h4 class="service-item-title">News Title</h4>
              <p class="service-item-paragraph">News Contant</p>
            </div>
          </div>-->
        </div>
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
		$(function() {
			// 뉴스 제목 클릭 시
			$('.service-item-title').click(function() {
				location = $(this).attr('url');
			});

			var params = { "page": 0 };
			var check = 0;

			$(window).scroll(function() {
				if ($(window).scrollTop() == $(document).height() - $(window).height() && check == 0) {
					params.page = params.page + 1;
					$('#spinner').show();
					$.ajax({
						type: "get",
						url: "news/addNews",
						data: params,
						success: function(data2) {
							if (data2.length == 0) {
								check = 1;
							}
							for (const row of data2) {
								let c = $(
									'<div class="w-layout-cell service-item">'
									+ '<img src="' + row.nimgurl + '" loading="lazy" width="150" height="150" '
									+ 'alt="' + row.newsid + '" class="service-image"/>'
									+ '<div class="service-infos">'
									+ '<h4 class="service-item-title" url="' + row.url + '">' + row.title + '</h4>'
									+ '<p class="service-item-paragraph">' + row.content + '</p></div></div>'
								);
								$('.adds').append(c);
							}
							$('#spinner').hide();
						},
						error: function(err) {
							console.log(err);
							alert('에러');
							$('#spinner').hide();
						}
					});
				}
			});
		});
	</script>

	</script>
  
  </body>
</html>