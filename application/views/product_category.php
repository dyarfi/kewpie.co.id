<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="submenu"></div>
<div class="container item-submenu">
	<ul class="list-inline">
		<?php 
        $i = 1;
        $c = count($product_category);
        foreach ($product_category as $category) { ?>
		<li<?php echo ($i == $c) ? '' :' class="divider-img"';?>><a href="<?php echo base_url('read/product/category/'.$category['url']);?>"><?php echo $category['subject'];?></a></li>
		<?php 
        $i++;
        } ?>
	</ul>
</div>  
<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->            
                <div class=''>
                    <div>
                      <div class="carousel slide product-service-carousel" data-interval="false" data-ride="carousel" id="quote-carousel">
                        <!-- Bottom Carousel Indicators -->
                        <ol class="carousel-indicators">
                        <?php 
                          $c = 1;
                          foreach($products as $product) { ?>
                          <li data-target="#quote-carousel" data-slide-to="<?php echo $c;?>" <?php echo $c == 1 ? 'class="active"' :'' ;?>></li>
                          <?php 
                          $c++;
                        } ?>
                        </ol>

                        <!-- Carousel Slides / Quotes -->
                        <div class="carousel-inner">
                            
                          <?php 
                          if ($products) {
                          $i = 1;
                          foreach($products as $product) { ?>
                          <div class="item <?php echo ($i==1) ? 'active' :'';?>">
                            <ul class="list-inline group-products">
                                <li>
                                <?php /*if ($product['media']) { ?>
                                    <img class="img-ctr" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="<?php echo $product_category[1]['subject'];?>">
                                <?php }*/ ?>
                                <?php if (!empty($product['package'])) { 
                                    foreach ($product['package'] as $package) { ?>
                                      <img class="img-ctr" src="<?php echo base_url('uploads/products/'.$package->file_name);?>" alt="<?php echo $product_category[1]['subject'];?>"/>
                                    <?php 
                                    } 
                                  } else if ($product['media']){ ?>
                                    <img class="img-ctr" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="<?php echo $product_category[1]['subject'];?>">
                                    <?php
                                  }?>
                                </li>
                            </ul>          
                            <div class="food-service-head hidden"><h5><?php echo $product_category[1]['subject'];?></h5></div>
                            <div class="info-service">                                
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <h2><?php echo $product['subject'];?></h2>
                                    <?php echo $product['text'];?>
                                </div>                                 
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="col-md-12" style="margin-top: 20px;">
                                        <div class="pricing-table">
                                        <?php if ($product['attribute']) { echo $product['attribute']; } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="clear"></div>
                            
                            <?php if (!empty($product['recipes'])) { ?>
                            <div class="related-resep">
                                <div class="line"><div class="line-img"><img src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork line"> Anjuran Resep Yang Sesuai</div></div>
                                <?php foreach($product['recipes'] as $recipe) { 
									$product  = $this->Products->getProduct($recipe['product_id'])->category_id;
									$color    = $this->ProductCategories->getCategory($product)->color;?>
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <div class="thumbnail">
										<?php if ($recipe['media']) { ?>
											<img src="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" alt=""/>
										<?php } ?>
                                        <div class="caption caption-sub-pasta">
                                            <h4><?php echo $recipe['subject'];?></h4>
                                            <img class="sub-pasta" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
                                            <?php echo strip_tags($recipe['text']);?>
                                        </div>
                                    </div>
                                   <div class="tab-info">
										<button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $recipe['served'];?></button>
										<button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $recipe['time'];?> <?php echo $this->lang->line('minute');?></button>
									</div>
                                </div>
                                <?php } ?>
                            </div>
                            
                            <?php } ?>
                          </div>
                            
                          <?php 
                            $i++;
                            } 
                          } else { ?>
                            <h4>NO CONTENT</h4>
                          <?php } ?>  
                                                      
                        </div>
                        
                         

                        <!-- Carousel Buttons Next/Prev -->
                        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                        <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                      </div>                          
                    </div>
                  </div>


        </div> <!-- content end -->
    </div>
</div>    