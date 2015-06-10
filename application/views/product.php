<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="submenu"></div>
<div class="container item-submenu">
	<ul class="list-inline">
		<?php foreach ($product_category as $category) { ?>
		<li><a href="<?php echo base_url('read/product/category/'.$category['url']);?>"><?php echo $category['subject'];?></a></li>
		<?php } ?>
	</ul>
</div>    
<div class="kewpie-main-body"> <!-- for changing background purpose -->
    <div class="kewpie-main-body"> <!-- for changing background purpose -->
        <div class="container"> <!-- content start -->
            <div>
                <div class="carousel slide product-service-carousel" data-interval="false" data-ride="carousel" id="quote-carousel">
                    <!-- Bottom Carousel Indicators -->
                    <ol class="carousel-indicators">
                        <?php 
                        $g = 0;
                        foreach($products as $key) { 
                            $active = ($g == 0) ? 'class="active"' : ''; ?>
                            <li data-target="#quote-carousel" data-slide-to="<?php echo $g;?>" <?php echo $active;?>></li>
                        <?php 
                        $g++;
                        } ?>
                    </ol>
                    <!-- Carousel Slides / Quotes -->
                    <div class="carousel-inner">                          
                        <?php 
                        $n=1;
                        $recipes = array();
                        foreach ($products as $product) { 
                            $color = $this->ProductCategories->getCategory($product['category_id'])->color;
                            // Set recipes
                            $recipes = $this->Content->find('product_recipes',array('status'=>'publish','product_id'=>$product['id'])); ?>
                            <div class="item<?php echo ($n == 1) ? ' active':'';?>">
                                <?php if ($product['media']) { ?><img class="img-ctr" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="<?php echo $product['subject'];?>"><?php } ?>
                                <!--img class="title-food-service-img" src="<?php echo base_url();?>assets/public/img/title-food-service.png" alt="food service"-->
                                <div class="info-service">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <h2><?php echo $product['subject']; ?></h2>
                                        <?php if ($product['text']) { ?><p><?php echo $product['text']; ?></p><?php } ?>
                                        <?php if ($product['messages']) { ?>
                                        <h4><?php echo $this->lang->line('main_ingredient'); ?></h4>
                                        <p><?php echo $product['messages']; ?></p>
                                        <?php } ?>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="col-md-12" style="margin-top: 20px;">
                                            <div class="pricing-table">
												<div class="panel panel-primary" style="border: none;">
													<?php echo $product['attribute']; ?>
												</div>
                                            </div>
                                        </div>
                                    </div>
									<div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                                <?php if (!empty($product['recipes'])) { ?>
                                    <div class="related-resep">
                                        <div class="line"><div class="line-img"><img src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork line"> <?php echo $this->lang->line('suggested_recipe');?></div></div>
                                        <?php foreach($product['recipes'] as $recipe) { ?>
                                        <div class="col-xs-4 col-sm-4 col-md-4 box-holder">
                                            <div class="thumbnail">
                                                <?php if ($recipe['media']) { ?><img src="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" alt=""><?php } ?>
                                                <div class="detail-related-thumbnail">
                                                    <h4><a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>"><?php echo $recipe['subject'];?></a></h4>
                                                    <?php if ($this->Products->getProduct($recipe['product_id'])->media) { ?>
                                                    <img class="sub-pasta" width="45px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($recipe['product_id'])->media);?>" alt="jenis resep">
                                                    <?php } ?>
                                                    <p><?php echo word_limiter(strip_tags($recipe['messages']),9);?></p>
                                                </div>
                                            </div>
                                            <div class="tab-info">
                                                <button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $recipe['served'];?></button>
                                                <button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $recipe['time'];?> <?php echo $this->lang->line('minute');?></button>
                                            </div>
                                        </div>
                                        <?php } ?>				
                                    </div>
                                    <?php } else { ?> 
                                    <div class="related-resep">
                                        <div class="col-xs-4 col-sm-4 col-md-4"></div>    
                                    </div>    
                                <?php } ?>                                    
                            </div>
                        <?php 
                        $n++;
                        } 
                        ?>
                    </div>
                    <!-- Carousel Buttons Next/Prev -->
                    <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                    <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                  </div>                          
            </div>
        </div>
    </div> <!-- content end -->
</div>