<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body"> <!-- for changing background purpose -->
    <div class="kewpie-main-body"> <!-- for changing background purpose -->
        <div class="container"> <!-- content start -->

            <div class="details">                
                <div class="container">
                    <ul class="list-inline">
                        <?php foreach ($product_category as $category) { ?>
                        <li><a href="<?php echo base_url('read/product/detail/'.$category['url']);?>"><?php echo $category['subject'];?></a></li>
                        <?php } ?>
                    </ul>
                </div>    
            </div>    
            
                <div class=''>
                    <div>
                      <div class="carousel slide food-service-carousel" data-interval="false" data-ride="carousel" id="quote-carousel">
                        <!-- Bottom Carousel Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                          <li data-target="#quote-carousel" data-slide-to="1"></li>
                          <li data-target="#quote-carousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel Slides / Quotes -->
                        <div class="carousel-inner">
                            
                          
                            <?php 
                            $n=1;
                            foreach ($products as $product) { ?>
                                <div class="item<?php echo ($n == 1) ? ' active':'';?>">
                                    <?php if ($product['media']) { ?><img class="img-ctr" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="<?php echo $product['subject'];?>"><?php } ?>
                                    <img class="title-food-service-img" src="<?php echo base_url();?>assets/public/img/title-food-service.png" alt="food service">
                                    <div class="info-service">
                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                            <h2><?php echo $product['subject']; ?></h2>
                                            <p><?php echo $product['text']; ?></p>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                            <div class="col-md-12" style="margin-top: 20px;">
                                                <div class="pricing-table">
                                                    <?php echo $product['attribute']; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="related-resep">
                                        <div class="line"><div class="line-img"><img src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork line"> Anjuran Resep Yang Sesuai</div></div>

                                        <div class="col-xs-4 col-sm-4 col-md-4">
                                            <div class="thumbnail">
                                                <img src="http://placehold.it/500x300" alt="">
                                                <div class="caption caption-sub-pasta">
                                                    <h4>Thumbnail label</h4>
                                                    <img class="sub-pasta" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                                                </div>
                                            </div>
                                            <div class="tab-info">
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> Serves 2</button>
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> 15 Min</button>
                                            </div>
                                        </div>
                                        <div class="col-xs-4 col-sm-4 col-md-4">
                                            <div class="thumbnail">
                                                <img src="http://placehold.it/500x300" alt="">
                                                <div class="caption caption-sub-pasta">
                                                    <h4>Thumbnail label</h4>
                                                    <img class="sub-pasta" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                                                </div>
                                            </div>
                                            <div class="tab-info">
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> Serves 2</button>
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> 15 Min</button>
                                            </div>
                                        </div>
                                        <div class="col-xs-4 col-sm-4 col-md-4">
                                            <div class="thumbnail">
                                                <img src="http://placehold.it/500x300" alt="">
                                                <div class="caption caption-sub-pasta">
                                                    <h4>Thumbnail label</h4>
                                                    <img class="sub-pasta" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
                                                </div>
                                            </div>
                                            <div class="tab-info">
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> Serves 2</button>
                                                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> 15 Min</button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    
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

        </div>
    </div> <!-- content end -->
</div>