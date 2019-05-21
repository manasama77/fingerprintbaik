<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
  <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
    <div class="sidebar-brand-icon rotate-n-15">
      <i class="fas fa-laugh-wink"></i>
    </div>
    <div class="sidebar-brand-text mx-3">FP Baik <sup>v1</sup></div>
  </a>
  <hr class="sidebar-divider my-0">
  <li class="nav-item">
    <a class="nav-link" href="">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Dashboard</span>
    </a>
  </li>
  <hr class="sidebar-divider">
  <div class="sidebar-heading">Mesin</div>
  <li class="nav-item">
    <a class="nav-link" href="<?=site_url('mesin');?>">
      <i class="fas fa-fw fa-fingerprint"></i>
      <span>Conf. Mesin</span>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="<?=site_url('karyawan');?>">
      <i class="fas fa-fw fa-users"></i>
      <span>Data Karyawan</span>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="<?=site_url('attendance');?>">
      <i class="fas fa-fw fa-book"></i>
      <span>Data Presensi</span>
    </a>
  </li>

  <!-- Divider -->
  <hr class="sidebar-divider d-none d-md-block">

  <!-- Sidebar Toggler (Sidebar) -->
  <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div>
</ul>