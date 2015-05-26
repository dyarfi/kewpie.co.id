<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

    <!-- Fixed navbar -->
     <nav class="navbar navbar-fixed-top navbar-kewpie hidden">
        <div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle navbar-inverse collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <!--a class="navbar-brand" href="http://getbootstrap.com/examples/starter-template/#"><img src="assets/img/logo.png"/></a-->
			  <a class="" href="http://getbootstrap.com/examples/starter-template/#"><img src="<?php echo base_url();?>assets/public/img/logo.png"/></a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
			  <ul class="nav navbar-nav">
                <?php 
                    $i = 0;
                    foreach ($menus as $menu) { ?>
                    <li class="<?php echo $i == 1 ? 'active' : '';?> divider"><a href="<?php echo base_url('page/'.$menu->url);?>"><?php echo $menu->title;?></a></li>
                <?php } ?>
				<!--li class="active divider"><a href="#">Produk Kami</a></li>
				<li class="divider"><a href="#">Di Dalam Kewpie</a></li>
				<li class="divider"><a href="#">Resep</a></li>
				<li class="divider"><a href="#">Siapa Kami</a></li>
				<li class="divider"><a href="#">Berita Terbaru</a></li-->
			  </ul>
			</div><!--/.nav-collapse -->
		  </div>
    </nav>
		
		
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
          <!--a class="navbar-brand" href="#">
            <span>kewpie</span>
          </a-->
          <a class="" href="http://getbootstrap.com/examples/starter-template/#"><img src="<?php echo base_url();?>assets/public/img/logo.png"/></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <?php 
                $i = 1;
                $b = count($menus);
                //print_r($b);
                foreach ($menus as $menu) { ?>
                <li class="<?php echo $i == 1 ? 'active' : '';?><?php echo $i == $b ? '' : ' divider';?>">
                    <a href="#<?php echo base_url('page/'.$menu->url);?>"><?php echo $menu->title;?></a>
                </li>
                <?php 
                //print_r($i);
                $i++;
            } 
            ?>
            <!--li class="active divider product"><a href="#product">Product<br>Kami</a></li>
            <li class="divider dalam"><a href="#dalam">Di Dalam<br>Kewpie</a></li>
            <li class="divider resep"><a href="#resep">Resep</a></li>
            <li class="divider siapa"><a href="#siapa">Siapa<br>Kami</a></li>
            <li class="divider berita"><a href="#berita">Berita<br>Terbaru</a></li-->
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
          </ul>
                
            <div class="searchform pull-left">
              <form id="custom-search-form" class="form-search form-horizontal col-lg-12 col-md-12 col-sm-12">
                    <!--<input type="text" class="search-query form-control" placeholder="Search">-->
                    <div class="input-group input-group-sm col-lg-8">
                        <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-search"></span></span>
                        <input name="website" type="text" class="form-control search" placeholder="Search" value="">
                    </div>  
              </form>
                
                    <div class="lang-bg">
                        <ul class="list-unstyled pull-left">
                            <?php foreach ($languages as $language) { 
                            if ($language->prefix == config_item('language')) { ?>
                            <li class="bg-danger" style="width: 100%">
                                <!--img class="pull-left" src="<?php echo base_url('assets/static/img/flags').'/'.$language->prefix;?>.png"/-->
                                <?php echo $language->prefix;?>
                            </li>
                            <?php } else { ?>
                            <li>
                                <a href="<?php echo base_url('language/'.$language->prefix);?>">
                                    <!--img class="pull-left" src="<?php echo base_url('assets/static/img/flags').'/'.$language->prefix;?>.png"/-->
                                    <?php echo $language->prefix;?>
                                </a>
                            </li>
                            <?php } 
                            }
                            ?>
                        </ul>
                    </div>
            </div>
            
            <ul class="list-inline hidden">
			<?php foreach ($menus as $menu) { ?>
				<li><a href="<?php echo base_url('page/'.$menu->url);?>"><?php echo $menu->title;?></a></li>
			<?php } ?>
			</ul>
			
			


            
        </div><!--/.nav-collapse -->
        

        
        
      </div>
    </nav>
    <!--<div class="navbar-fixed-top" style="z-index: 1">-->

    <!--</div>--> 
		