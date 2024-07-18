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
    <link href="../images/favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="../images/webclip.png" rel="apple-touch-icon">
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
                    <div class="sitemap-page"><img src="../images/sitemap_blog_4sitemap_blog_03.png" loading="lazy" alt="" class="sitemap-image">
                        <h4 class="sitemap-title">Change_Password</h4>
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
                                    <div class="sign-in-form-content-wrap">
                                        <h3 class="sign-in-title2">새로운 비밀번호를 입력해주세요</h3>
                                    </div>
                                    <div class="sign-in-field-label">
                                        <div class="sign-in-single-field-wrap">
                                            <label for="password" class="sign-in-field-label">비밀번호</label>
                                            <input class="sign-in-field w-input" maxlength="256" name="password" data-name="Password" type="password" id="password" required="" placeholder="비밀번호를 입력해주세요" oninput="validatePassword()">
                                            <div id="password-error" style="color: red; display: none;">비밀번호는 4자 이상 15자 이하의 영문자와 숫자로만 구성되어야 합니다.</div>
                                        </div>
                                    </div>
                                    <div class="sign-in-field-label">
                                        <div class="sign-in-single-field-wrap">
                                            <label for="confirm-password" class="sign-in-field-label">비밀번호 확인</label>
                                            <input class="checkpass w-input" maxlength="256" name="confirm-password" data-name="Confirm Password" type="password" id="confirm-password" required="" placeholder="비밀번호를 다시 입력해주세요" oninput="validateConfirmPassword()">
                                            <div id="confirm-password-error" style="color: red; display: none;">비밀번호가 일치하지 않습니다.</div>
                                        </div>
                                    </div>
                                    <input type="submit" onclick="validateForm(event)" data-wait="Please wait..." class="sign-in-submit-button4 w-button" value="다음">
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
    <script type="text/javascript">
        function validatePassword() {
            var password = document.getElementById("password").value;
            var pattern = /^[A-Za-z0-9]{4,15}$/;
            var passwordError = document.getElementById("password-error");

            if (!pattern.test(password)) {
                passwordError.style.display = "block";
            } else {
                passwordError.style.display = "none";
            }

            validateConfirmPassword();
        }

        function validateConfirmPassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm-password").value;
            var confirmPasswordError = document.getElementById("confirm-password-error");

            if (confirmPassword !== password) {
                confirmPasswordError.style.display = "block";
            } else {
                confirmPasswordError.style.display = "none";
            }
        }

        function validateForm(event) {
            event.preventDefault(); 
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm-password").value;
            var pattern = /^[A-Za-z0-9]{4,15}$/;

            if (pattern.test(password) && password === confirmPassword) {
                window.location.href = "/mypage";
            } else {
                alert("비밀번호를 올바르게 입력해주세요.");
            }
        }
    </script>
</body>

</html>