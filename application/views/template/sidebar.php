      <aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="./index.html">
              <!-- <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg> -->
              <img src="<?=base_url();?>assets/assets/avatars/logo-login1.png" alt="..." class="avatar-img">
            </a>
          </div>
          <!-- <p class="text-muted nav-heading mt-4 mb-1">
            <span>Dashboard</span>
          </p> -->
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100">
              <a class="nav-link" href="<?=base_url('dashboard');?>">
                <i class="fe fe-home fe-16"></i>
                <span class="ml-3 item-text">Dashboard</span>
              </a>
            </li>
          </ul>
          <?php $role = $this->session->userdata('level'); ?>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <?php if ($role === '1'): ?>
            <li class="nav-item dropdown">
              <a href="#ui-elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-box fe-16"></i>
                <span class="ml-3 item-text">Data Master</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('kategori');?>"><span class="ml-1 item-text">Data Kategori Barang</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('satuan');?>"><span class="ml-1 item-text">Data Satuan Produk</span></a>
                </li>
               
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('user');?>"><span class="ml-1 item-text">Data Pengguna</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('user/role');?>"><span class="ml-1 item-text">Data Role</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('supplier');?>"><span class="ml-1 item-text">Data Supplier</span></a>
                </li>
              </ul>
            </li>
           <?php endif ?>

            <li class="nav-item dropdown">
              <a href="#forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-credit-card fe-16"></i>
                <span class="ml-3 item-text">Data Barang</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="forms">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('produk');?>"><span class="ml-1 item-text">Produk</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('stok_masuk');?>"><span class="ml-1 item-text">Barang Masuk</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('stok_keluar');?>"><span class="ml-1 item-text">Barang Keluar</span></a>
                </li>
                
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a href="#tables" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-grid fe-16"></i>
                <span class="ml-3 item-text">Data Transaksi</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="tables">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('transaksi');?>"><span class="ml-1 item-text">Transaksi</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="<?=base_url('transaksi/laporan');?>"><span class="ml-1 item-text">Laporan</span></a>
                </li>
               
              </ul>
            </li>
            
          </ul>
         
          <p class="text-muted nav-heading mt-4 mb-1">
            <span>Logout</span>
          </p>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100">
              <a class="nav-link" href="<?=base_url('auth/logout');?>">
                <i class="fe fe-help-circle fe-16"></i>
                <span class="ml-3 item-text">Logout</span>
              </a>
            </li>
          </ul>
          
        </nav>
      </aside>