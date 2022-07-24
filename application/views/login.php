<?php $url=base_url().'assets/';?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>KASIR KIOS TANI NAUFAL </title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="<?=$url?>css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="<?=$url?>css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="<?=$url?>css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="<?=$url?>css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="<?=$url?>css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="light ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form method="post" action="auth-check" class="col-lg-3 col-md-4 col-10 mx-auto text-center">
          <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
            <!-- <svg version="1.1" id="logo" class="navbar-brand-img brand-md" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
              <g>
                <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
              </g>
            </svg> -->
            <img src="<?=base_url();?>assets/assets/avatars/logo-login.png" alt="..." class="avatar-img">
          </a>
          <h1 class="h6 mb-3"></h1>
          <h4 class="mb-2" style="text-align: center;">Selamat Datang di KASIR KIOS TANI NAUFAL</h4>

          <div class="mb-3">

                  <label for="username" class="form-label">Username</label>
                  <input
                    type="text"
                    class="form-control"
                    id="username"
                    name="username"
                    placeholder="Masukkan Username"
                    autofocus
                  />
                </div>
                <div class="mb-4">
            
                  <label for="password" class="form-label">Password</label>
                  <input
                    type="password"
                    class="form-control"
                    id="password"
                    name="password"
                    placeholder="Masukkan Password"
                    autofocus
                  />
                  
                </div>
          <!-- <div class="form-group">
            <label for="inputEmail" class="sr-only">Username</label>
            <input type="text" name="username" id="inputEmail" class="form-control form-control-lg" placeholder="Username" required="" autofocus="">
          </div>

          <div class="form-group">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="password" id="inputPassword" class="form-control form-control-lg" placeholder="Password" required="">
          </div> -->

          <!-- <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> Stay logged in </label>
          </div> -->
          <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
          <p class="mt-5 mb-3 text-muted">© AZiFaWaBen</p>
        </form>
      </div>
    </div>
    <script src="<?=$url?>js/jquery.min.js"></script>
    <script src="<?=$url?>js/popper.min.js"></script>
    <script src="<?=$url?>js/moment.min.js"></script>
    <script src="<?=$url?>js/bootstrap.min.js"></script>
    <script src="<?=$url?>js/simplebar.min.js"></script>
    <script src='<?=$url?>js/daterangepicker.js'></script>
    <script src='<?=$url?>js/jquery.stickOnScroll.js'></script>
    <script src="<?=$url?>js/tinycolor-min.js"></script>
    <script src="<?=$url?>js/config.js"></script>
    <script src="<?=$url?>js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-56159088-1');
    </script>
  </body>
</html>
</body>
</html>