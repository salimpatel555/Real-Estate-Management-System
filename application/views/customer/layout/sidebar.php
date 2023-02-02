<div class="vertical-menu">

<!-- LOGO -->
<div class="navbar-brand-box">
	<a href="<?php echo base_url('dashboard')?>" class="logo logo-dark">
		<span class="logo-sm">
			<img src="<?php echo base_url()?>assets/images/logo-sm.png" alt="" height="22">
		</span>		
		<span class="logo-lg">
			<img src="<?php echo base_url()?>assets/images/logo-dark.png" alt="" height="22">
		</span>
	</a>

	<a href="<?php echo base_url('dashboard')?>" class="logo logo-light">
		<span class="logo-lg">
			<img src="assets/images/logo-light.png" alt="" height="22">
		</span>
		<span class="logo-sm">
			<img src="<?php echo base_url('dashboard')?>assets/images/logo-sm-light.png" alt="" height="22">
		</span>
	</a>

</div>

<button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
	<i class="fa fa-fw fa-bars"></i>
</button>

<div data-simplebar class="sidebar-menu-scroll">

	<!--- Sidemenu -->
	<div id="sidebar-menu">
		<!-- Left Menu Start -->
		<ul class="metismenu list-unstyled" id="side-menu">
			<!-- <li class="menu-title" data-key="t-dashboards">Dashboards</li> -->

			<li>
				<a href="<?php echo base_url('dashboard')?>">
					<i class="icon nav-icon" data-feather="cpu"></i>
					<span class="menu-item" data-key="t-sales">Dashboard</span>
					<span class="badge rounded-pill badge-soft-secondary"></span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url('analytics')?>">
					<i class="icon nav-icon" data-feather="bar-chart"></i>
					<span class="menu-item" data-key="t-analytics">Analytics</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url('projects_list')?>">
					<i class="icon nav-icon" data-feather="briefcase"></i>
					<span class="menu-item" data-key="t-analytics">All Projects List</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url('property-listing')?>">
					<i class="icon nav-icon" data-feather="list"></i>
					<span class="menu-item" data-key="t-analytics">List Your Project</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url('purchased_properties')?>">
					<i class="icon nav-icon" data-feather="archive"></i>
					<span class="menu-item" data-key="t-analytics">Purchased Properties</span>
				</a>
			</li>
			<li>
				<a href="<?php echo base_url('soldout_properties')?>">
					<i class="icon nav-icon" data-feather="clipboard"></i>
					<span class="menu-item" data-key="t-analytics">Soldout Properties</span>
				</a>
			</li>
			<!-- <li>
				<a href="<?php echo base_url('my_listed_properties')?>">
					<i class="icon nav-icon" data-feather="briefcase"></i>
					<span class="menu-item" data-key="t-analytics">My Listed Projects</span>
				</a>
			</li> -->

		
			<!-- <li>
				<a href="<?php echo base_url('dashboard')?>">
					<i class="icon nav-icon" data-feather="image"></i>
					<span class="menu-item" data-key="t-gallery">Gallery</span>
				</a>
			</li> -->

			<li>
				<a href="<?php echo base_url('mapp')?>">
					<i class="icon nav-icon" data-feather="map-pin"></i>
					<span class="menu-item" data-key="t-maps">Maps</span>
				</a>
            </li>			
	</div>
	<!-- Sidebar -->
</div>
</div>
<!-- Left Sidebar End -->