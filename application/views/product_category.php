<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body content-inside"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container-fluid"> <!-- content start -->
            
            <div class="details hidden">                
                <div class="container">
                    <ul class="list-inline">
                        <?php foreach ($product_categories as $category) { ?>
                        <li class="bg-danger"><a href="<?php echo base_url('read/product/detail/'.$category['url']);?>"><?php echo $category['subject'];?></a></li>
                        <?php } ?>
                    </ul>
                </div>    
            </div>    
            
                <div class=''>
                    <div>
                      <div class="carousel slide food-service-carousel" data-interval="false" data-ride="carousel" id="quote-carousel">
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
                            <?php if ($product['media']) { ?><img class="img-ctr" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="items"><?php } ?>
                            <div class="food-service-head"><h5><?php echo $product_category[1]['subject'];?></h5></div>
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
                                <?php foreach($product['recipes'] as $recipe) { ?>
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <div class="thumbnail">
                                        <img src="http://placehold.it/500x300" alt="">
                                        <div class="caption caption-sub-pasta">
                                            <h4><?php echo $recipe['subject'];?></h4>
                                            <img class="sub-pasta" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
                                            <?php echo $recipe['text'];?>
                                        </div>
                                    </div>
                                    <div class="tab-info">
                                        <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> Serves 2</button>
                                        <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> 15 Min</button>
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