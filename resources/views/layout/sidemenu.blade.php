<div id="responsive-admin-menu">
	<div id="responsive-menu">
		<div class="menuicon">≡</div>
	</div>
	
	<div id="logo">
		<img src="{{ asset('img/pamar_logo.png') }}" alt="">
	</div>

	<div class="align-center menu-title">MENU</div>

	
	<!--Menu-->
	<div id="menu">
		<a class=" {{ request()->segment(1) == 'reference' ? 'active' : '' }} " href="{{ url('reference/index') }}" title="Referencje"><span> <i class="fa fa-handshake-o fa-nav" aria-hidden="true"></i> Referencje </span></a>
		<a class=" {{ request()->segment(1) == 'experiance' ? 'active' : '' }} " href="{{ url('experiance/index') }}" title="Galerie"><span> <i class="fa fa-cubes fa-nav" aria-hidden="true"></i> Doświadczenie </span></a>
		<a class=" {{ request()->segment(1) == 'experiance_groups' ? 'active' : '' }} " href="{{ url('experiance_groups/index') }}" title="Grupy"><span> <i class="fa fa-tags fa-nav" aria-hidden="true"></i> Grupy </span></a>
		<a class=" {{ request()->segment(1) == 'gallery' ? 'active' : '' }} " href="{{ url('gallery/index') }}" title="Galerie"><span> <i class="fa fa-picture-o fa-nav" aria-hidden="true"></i> Galerie </span></a>
		<a class=" {{ request()->segment(1) == 'dictionary' ? 'active' : '' }} " href="{{ url('dictionary/index') }}" title="Galerie"><span> <i class="fa fa-book  fa-nav" aria-hidden="true"></i> Słowniki </span></a>
	</div>
	<!--Menu-->
</div>