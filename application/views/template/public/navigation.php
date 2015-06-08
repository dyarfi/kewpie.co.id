<?php if (!defined('BASEPATH')) exit('No direct script access allowed');?>
		
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
          <a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>assets/public/img/logo.png"/></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <?php 
                $i = 1;
                $b = count($this->menus);
                $type = array();
                foreach ($this->menus as $menu) { 
                    $type = $menu['type'] !=='page' ? $menu['type'] : $menu['type'].'/'.$menu['url'];
                    ?>
                <li class="divider<?php echo ($this->uri->segment(3) == $menu['url']) ? ' active-m' : '';?>">
                    <a href="<?php echo base_url('read/'.$type);?>"><?php echo $menu['subject'];?></a>
                </li>
                <?php 
                $i++;
            } 
            ?>
          </ul>
                
            <div class="searchform pull-left">
              <form id="custom-search-form" class="form-search form-horizontal col-lg-12 col-md-12 col-sm-12 hidden">
                    <!--<input type="text" class="search-query form-control" placeholder="Search">-->
                    <div class="input-group input-group-sm col-lg-8">
                        <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-search"></span></span>
                        <input name="website" type="text" class="form-control search" placeholder="Search" value="">
                    </div>  
              </form>
                
                    <div class="lang-bg">
                        <ul class="list-unstyled pull-left">
                            <?php foreach ($this->languages as $language) { 
                            if ($language->url == config_item('language')) { ?>
                            <li class="bg-danger" style="width: 100%">
                                <!--img class="pull-left" src="<?php echo base_url('assets/static/img/flags').'/'.$language->prefix;?>.png"/-->
                                <?php echo $language->prefix;?>
                            </li>
                            <?php } else { ?>
                            <li>
                                <a href="<?php echo base_url('language/'.$language->url);?>">
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
 
        </div><!--/.nav-collapse -->
        
      </div>
    </nav>
    <!--<div class="navbar-fixed-top" style="z-index: 1">-->

    <!--</div>--> 
		