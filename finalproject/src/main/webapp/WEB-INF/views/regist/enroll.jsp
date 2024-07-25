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
  <div class="pages-wrapper">
          <section class="section authentication">
              <div class="container">
                  <div class="authentication-content">
                      <div class="log-in">
                          <div class="sign-in-form-wrap w-form">
                              <form id="profile-goal-form" name="profile-goal-form" method="post" action="login"
                                  class="profile-goal-form" onsubmit="return validateForm()">
                                  <div class="enrolltext">
                                      <h2>회원가입</h2>
                                  </div>
                                  <div class="sign-in-single-fields">
                                      <div class="input-group">
                                          <label for="name">이름&emsp;&emsp;</label>
                                          <input type="text" id="name" class="name w-input1" 
                                              placeholder="이름을 입력해주세요" />
                                          <div id="nameError" class="error">이름을 입력해주세요.</div>
                                      </div>
                                      <div class="input-group">
                                          <label for="email">이메일&emsp;</label>
                                          <div class="input-wrapper">
                                              <input type="text" id="email" class="email w-input1"
                                                  placeholder="이메일을 입력해주세요" />
                                              <button type="button" onclick="checkDuplicateEmail()">중복확인</button>
                                          </div>
                                          <div id="emailError" class="error1">올바른 이메일을 입력해주세요.</div>
                                      </div>
                                      <div class="input-group">
                                          <label for="password">비밀번호</label>
                                          <input type="password" id="password" class="pass w-input1" 
                                              placeholder="비밀번호를 입력해주세요" />
                                          <div id="passwordError" class="error">비밀번호는 4-15자의 영문자와 숫자이어야 합니다.</div>
                                      </div>
                                      <div class="input-group">
                                          <label for="passwordCheck">비밀번호확인</label>
                                          <input type="password" id="passwordCheck" class="passcheck w-input1" 
                                              placeholder="비밀번호를 확인해주세요" />
                                          <div id="passwordCheckError" class="error">비밀번호가 일치하지 않습니다.</div>
                                      </div>
                                  </div>
                                  <div class="accept">
                                      <h4>약관 동의(필수)</h4>
                                  </div>
                                  <div class="check-all">
                                      <label>
                                          <input type="checkbox" id="checkAll"> 모든 약관에 동의합니다.
                                      </label>
                                  </div>
                                  <hr>
                                  <div class="checkbox-group">
                                      <label>
                                          <input type="checkbox" class="chb1" name="terms1"> 첫 번째 약관에 동의합니다.
                                      </label>
                                      <label>
                                          <input type="checkbox" class="chb" name="terms2"> 두 번째 약관에 동의합니다.
                                      </label>
                                  </div>
                                  <div class="sign-in-buttons">
                                      <input type="submit" data-wait="Please wait..." class="sing-up-btn w-button"
                                          value="가입하기">
                                  </div>
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
      <script>
      function validateForm() {
                 let isValid = true;

                  // 입력값 가져오기
                 const name = document.getElementById('name').value.trim();
                 const email = document.getElementById('email').value;
                 const password = document.getElementById('password').value;
                 const passwordCheck = document.getElementById('passwordCheck').value;

                 // 모든 에러 메시지 숨기기
                 document.getElementById('nameError').style.display = 'none';
                 document.getElementById('emailError').style.display = 'none';
                 document.getElementById('passwordError').style.display = 'none';
                 document.getElementById('passwordCheckError').style.display = 'none';

                 
                 if (!name) {
                     document.getElementById('nameError').style.display = 'block';
                     isValid = false;
                 }

                 
                 const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                 if (!emailPattern.test(email)) {
                     document.getElementById('emailError').style.display = 'block';
                     isValid = false;
                 }

                 
                 const passwordPattern = /^[A-Za-z0-9]{4,15}$/;
                 if (!passwordPattern.test(password)) {
                     document.getElementById('passwordError').style.display = 'block';
                     isValid = false;
                 }

                 
                 if (password !== passwordCheck) {
                     document.getElementById('passwordCheckError').style.display = 'block';
                     isValid = false;
                 }

                 return isValid; // return false to prevent form submission if invalid
             }

            // 각 입력 필드에 이벤트 리스너 추가
             document.getElementById('name').addEventListener('keyup', validateForm);
             document.getElementById('email').addEventListener('keyup', validateForm);
             document.getElementById('password').addEventListener('keyup', validateForm);
             document.getElementById('passwordCheck').addEventListener('keyup', validateForm);

          function checkDuplicateEmail() {
              const email = document.getElementById('email').value;
              if (email) {
                  // 여기에 중복 이메일 확인 로직을 추가하세요.
                  alert('이메일 중복 확인 기능을 구현하세요.');
              } else {
                  alert('이메일을 입력해주세요.');
              }
          }

        $('#profile-goal-form').keyup(function(evt){
         console.log(evt.target.id);
         validateForm(evt.target.id);
        });
        
          document.addEventListener('DOMContentLoaded', function () {
              const checkAll = document.getElementById('checkAll');
              const checkboxes = document.querySelectorAll('input[type="checkbox"][name^="terms"]');

              checkAll.addEventListener('change', function () {
                  checkboxes.forEach(checkbox => {
                      checkbox.checked = this.checked;
                  });
              });

              checkboxes.forEach(checkbox => {
                  checkbox.addEventListener('change', function () {
                      if (!this.checked) {
                          checkAll.checked = false;
                      } else {
                          // 모든 체크박스가 체크되었는지 확인
                          let allChecked = true;
                          checkboxes.forEach(cb => {
                              if (!cb.checked) {
                                  allChecked = false;
                              }
                          });
                          checkAll.checked = allChecked;
                      }
                  });
              });
          });
      </script>
  </body>

  </html>