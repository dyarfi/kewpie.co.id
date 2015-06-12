<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body" style="background: transparent url('<?php echo base_url('uploads/recipes/'.$favorited[1]['media']);?>') no-repeat top center; padding-top:150px; position: relative; margin-top:-140px;background-size: 100% auto;"> <!-- for changing background purpose -->
        <div class="container"> <!-- content start -->
            <div class="bg-box-resep-fav">
                <h2><?php echo $this->lang->line('favorite_recipe');?></h2>
				<h4><?php echo $favorited[1]['subject'];?></h4>
                <?php echo $favorited[1]['messages'];?>
				
                <a href="<?php echo base_url('read/recipe/'.$favorited[1]['url']);?>" title="<?php echo $favorited[1]['subject'];?>"><strong><?php echo $this->lang->line('more');?></strong></a>
                <?php if ($this->Products->getProduct( $favorited[1]['product_id'])->media) { ?>
                    <img class="sub-pasta sub-pasta-info-resep" width="50px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($favorited[1]['product_id'])->media);?>" alt="jenis resep">
                <?php } ?>
                <div class="tab-info tab-info-resep">
                    <?php if ($favorited[1]['served']) { ?><button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $favorited[1]['served'];?></button><?php } ?>
                    <?php if ($favorited[1]['time']) { ?><button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $favorited[1]['time'];?> <?php echo $this->lang->line('minute');?></button><?php } ?>
                </div>
            </div>
        </div> <!-- content end -->
    </div>
    <div class="container"> <!-- content start -->
        <div class="row">    
            <div class="search-form-board">
                <div class="input-group">
                    <div class="input-group-btn search-panel">
                        <!--button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span id="search_concept">Semua Produk</span> <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#contains">Kacang</a></li>
                          <li><a href="#its_equal">Kueh</a></li>
                          <li><a href="#greather_than">Cingcaw</a></li>
                          <li><a href="#less_than">Tahu</a></li>
                        </ul-->
                    </div>
                    <input type="hidden" name="search_param" value="all" id="search_param">         
                    <input type="text" class="form-control" name="x" placeholder="<?php echo $this->lang->line('search');?>...">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                    </span>
                </div>
            </div>
        </div>
        <div class="list-resep">
            <div class="cara-membuat2">
                <div class="bg-board board2">						

                    <div class="carousel slide food-service-carousel list-resep-board" data-ride="carousel" id="quote-carousel">
                      <!-- Carousel Slides / Quotes -->
                      <div class="carousel-inner list-resep-carousel">									
                           <?php                  
                            $b = 1;
                            $n = count($recipes);
                            foreach ($recipes as $recipe) {
                              $product  = $this->Products->getProduct($recipe['product_id'])->category_id;
                              $color    = $this->ProductCategories->getCategory($product)->color;
                              if ($b == 1) { ?>
                              <div class="item active">
                                    <?php } elseif ($b % 6 == 1 && $b != 1) {	?>
                                        <div class="item">
                                              <?php } ?>
                                                <div class="col-xs-4 col-sm-4 col-md-4">                                              
                                                    <div class="thumbnail">
                                                         <?php if ($recipe['media']) { ?><img src="<?php echo base_url('uploads/recipes/thumb__385x232'.$recipe['media']);?>" alt=""><?php } ?>
                                                         <div class="caption caption-sub-pasta">
                                                             <h4><a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>"><?php echo $recipe['subject'];?></a></h4>
                                                             <?php if ($this->Products->getProduct($recipe['product_id'])->media) { ?>
                                                                <img class="sub-pasta" width="36px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($recipe['product_id'])->media);?>" alt="<?php echo $recipe['subject'];?>">
                                                             <?php } ?>
                                                             <p class="text-left"><?php echo character_limiter(strip_tags($recipe['synopsis']),78);?></p>
                                                         </div>
                                                     </div>
                                                     <div class="tab-info">
                                                         <?php if ($recipe['served']) { ?><button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $recipe['served'];?></button><?php } ?>
                                                         <?php if ($recipe['time']) { ?><button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $recipe['time'];?> <?php echo $this->lang->line('minute');?></button><?php } ?>
                                                     </div>
                                                </div>
                                            <?php if ($b % 6 == 0) {	?>
                                        </div><!--.item-->
                                    <?php } if ($b == $n) { ?>                                         
                              </div><!--.item1-->
                            <?php } 
                            $b++;
                            }
                            ?>
                    </div>   
                      <!-- Carousel Buttons Next/Prev -->
                      <a data-slide="prev" href="#quote-carousel" class="left carousel-control list-resep-nav-left"><i class="fa fa-chevron-left"></i></a>
                      <a data-slide="next" href="#quote-carousel" class="right carousel-control list-resep-nav-right"><i class="fa fa-chevron-right"></i></a>							  
                  </div>

                </div>
            </div>
        </div>		
    </div> <!-- content end -->
</div>
