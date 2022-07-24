<?php $url=base_url(). "Assets/"?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>KASIR KIOS TANI NAUFAL</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="<?=$url?>css/feather.css">
    <link rel="stylesheet" href="<?=$url?>css/select2.css">
    <link rel="stylesheet" href="<?=$url?>css/dropzone.css">
    <link rel="stylesheet" href="<?=$url?>css/uppy.min.css">
    <link rel="stylesheet" href="<?=$url?>/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="<?=$url?>css/jquery.steps.css">
    <link rel="stylesheet" href="<?=$url?>css/jquery.timepicker.css">
    <link rel="stylesheet" href="<?=$url?>css/quill.snow.css">
    <link rel="stylesheet" href="<?php echo base_url('assets/select2/css/select2.min.css') ?>">

  <link rel="stylesheet" href="<?php echo base_url('assets/sweetalert2/sweetalert2.min.css') ?>">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="<?=$url?>css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="<?=$url?>css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="<?=$url?>css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="vertical  light  ">
    <div class="wrapper">
      <nav class="topnav navbar navbar-light">
        <button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
          
        </button>
        
        <ul class="nav">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-muted pr-0" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="avatar avatar-sm mt-2">
                <img src="<?=base_url();?>assets/assets/avatars/logo.png" alt="..." class="avatar-img rounded-circle">
              </span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="<?=base_url('auth/logout');?>">Logout</a>
            </div>
          </li>
        </ul>
      </nav>