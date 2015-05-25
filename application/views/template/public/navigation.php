<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>


    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <span>kewpie</span>
          </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active product"><a href="#product">Product<br>Kami</a></li>
            <li class="dalam"><a href="#dalam">Di Dalam<br>Kewpie</a></li>
            <li class="resep"><a href="#resep">Resep</a></li>
            <li class="siapa"><a href="#siapa">Siapa<br>Kami</a></li>
            <li class="berita"><a href="#berita">Berita<br>Terbaru</a></li>
			<!-- <li class="dropdown">
              <a data-target="http://google.com/" href="http://google.com/"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li> -->
            <li class="searchform">
              <form id="custom-search-form" class="form-search form-horizontal pull-right">
                    <input type="text" class="search-query" placeholder="Search">
                    <!--div class="input-group input-group-sm col-lg-8">
                        <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-search"></span></span>
                        <input name="website" type="text" class="form-control" placeholder="" value="">
                    </div-->  
              </form>
            </li>
          </ul>
			
			<ul class="list-inline hidden">
			<?php foreach ($menus as $menu) { ?>
				<li><a href="<?php echo base_url('page/'.$menu->title);?>"><?php echo $menu->name;?></a></li>
			<?php } ?>
			</ul>
			
			<div class="navbar navbar-right hidden">
				<ul class="list-inline">
					<?php foreach ($languages as $language) { 
					if ($language->prefix == config_item('language')) { ?>
					<li><img src="<?php echo base_url('assets/static/img/flags').'/'.$language->prefix;?>.png"/>
						<?php echo $language->name;?></li>
					<?php } else { ?>
					<li><img src="<?php echo base_url('assets/static/img/flags').'/'.$language->prefix;?>.png"/>
						<a href="<?php echo base_url('language/'.$language->prefix);?>"><?php echo $language->name;?></a></li>
					<?php } 
					}
					?>
				</ul>
			</div>

        </div><!--/.nav-collapse -->
      </div>
    </nav>
		
		