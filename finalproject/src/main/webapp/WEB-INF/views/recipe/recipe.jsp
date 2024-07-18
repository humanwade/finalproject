<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://webflow.com  -->
<!--  Last Published: Wed Jul 03 2024 07:46:48 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="668501d6493a753e79314795" data-wf-site="668501d6493a753e79314722">

<head>
    <meta charset="utf-8">
    <title>Work</title>
    <meta content="Work" property="og:title">
    <meta content="Work" property="twitter:title">
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
                    <a href="/index" class="menu-item w-nav-link">Home</a>
                    <a href="recipe" class="menu-item w-nav-link">recipe</a>
                    <a href="news" aria-current="page" class="menu-item w-nav-link w--current">news</a>
                    <a href="diary" class="menu-item w-nav-link">diary</a>
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
                    <div class="sitemap-page"><img src="images/sitemap_single_1sitemap_single.png" loading="lazy" alt="" class="sitemap-image">
                        <h4 class="sitemap-title">Recipe</h4>
                    </div>
                    <!--<div class="sitemap-info"><img src="images/circle-blue_1circle-blue.png" loading="lazy" alt="" class="sitemap-dot">
                        <div class="sitemap-text">inspiring selection</div>
                    </div>-->
                </div>
                <div class="work-wrapper">
                    <div class="work-list-wrapper w-dyn-list">
						
                        <div role="list" class="work-list w-dyn-items w-row">
							<c:forEach items="${recipes}" var="recipe" varStatus="stat">
								<c:if test="${stat.index%3==0}">
									</div>
									<div role="list" class="work-list w-dyn-items w-row">
								</c:if>
	                            <div role="listitem" class="work-item w-dyn-item w-col w-col-4">
	                                <a data-w-id="9204cb31-7d3b-2864-f744-c68d5576ac5c" href="recipe/detail?recipeno=${recipe.recipeno}" class="work-item-inner w-inline-block">
	                                    <h4 class="work-title" style="transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d;">${recipe.menuname}</h4>
	                                    <!--<div class="work-category" style="transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d;">${recipe.ingredient}</div>-->
	                                    <img src="${recipe.imgurl}" alt="${recipe.recipeno}" class="work-image" style="transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 0deg); transform-style: preserve-3d;">
									</a>
	                            </div>
							</c:forEach>
                        </div>
						<div class="paging-container">
						    <a href="recipe?page=${startPage-5}" class="page-link prev">&laquo; Previous</a>
							<c:forEach var="pno" begin="${startPage}" end="${endPage}" varStatus="status">
								<c:choose> 
									<c:when test="${status.count == page }">
										<a href="recipe?page=${pno}" class="page-link active">${pno}</a>
									</c:when>
									<c:otherwise>
						    			<a href="recipe?page=${pno}" class="page-link">${pno}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						    <a href="recipe?page=${endPage+1}" class="page-link next">Next &raquo;</a>
							<span></span>
						</div>

                        
						<div class="search-container">
						    <input type="text" placeholder="Search here...">
						    <button type="submit" class="search-button">Search</button>
						</div>
                    </div>
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
	$(()=>{
		
		
		//페이지 이전, 다음 버튼 이벤트 막기
		if(${startPage}==1){
			$('a.prev').prop('href','#');
		}else if (${endPage==totalPage}){
			$('a.next').prop('href','#');
		};
	});
		
	</script>
</body>

</html>