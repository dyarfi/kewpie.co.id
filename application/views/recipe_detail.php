<?php if (!defined('BASEPATH')) exit('No direct script access allowed');  ?>
<div class="kewpie-main-body detail-resep"> <!-- for changing background purpose -->
    <div class="container"> <!-- content start -->				
        <div class="tab-info pull-right">
            <?php if ($recipe['served']) { ?><button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $recipe['served'];?></button><?php } ?>
            <?php if ($recipe['time']) { ?><button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $recipe['time'];?> <?php echo $this->lang->line('minute');?></button><?php } ?>
        </div>
        <div class="info-resep">
            <div class="img-resep">
                <div class="content-handler">
                    <?php if ($recipe['media']) {?>
                    <a href="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" class="fancybox" title="<?php echo $recipe['subject'];?>">
                        <img src="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" alt="<?php echo $recipe['subject'];?>">
                    </a>
                    <?php } ?>
                </div>    
            </div>
            <div class="detail-info-resep">
                <h2><?php echo $recipe['subject'];?></h2>
                <p><?php echo $recipe['synopsis'];?></p>						
                <ul class="share list-inline">
                    <li>
                        <a data-original-title="Twitter" rel="tooltip"  href="#" class="btn btn-twitter" data-placement="left">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="Facebook" rel="tooltip"  href="#" class="btn btn-facebook" data-placement="left">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </li>					
                    <li>
                        <a data-original-title="Google+" rel="tooltip"  href="#" class="btn btn-google" data-placement="left">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="LinkedIn" rel="tooltip"  href="#" class="btn btn-linkedin" data-placement="left">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="Pinterest" rel="tooltip"  class="btn btn-pinterest" data-placement="left">
                            <i class="fa fa-pinterest"></i>
                        </a>
                    </li>
                    <li>
                        <a  data-original-title="Email" rel="tooltip" class="btn btn-mail" data-placement="left">
                            <i class="fa fa-envelope"></i>
                        </a>
                    </li>
                </ul>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div id="Carousel1" class="carousel slide">
                      <!-- Carousel1 items -->
                      <div class="carousel-inner">
                        <?php                  
                            $b = 1;
                            $n = count($images);
                            foreach ($images as $image) { 
                              if ($b == 1) { ?>
                              <div class="item active">
                                  <div class="row">
                                    <?php } elseif ($b % 4 == 1 && $b != 1) {	?>
                                        <div class="item">
                                            <div class="row">
                                              <?php } ?>
                                               <div class="col-xs-3 col-sm-3 col-md-3">
                                                   <a href="<?php echo base_url('uploads/recipes/'.$image->file_name);?>" class="fancybox"><img class="img-responsive" src="<?php echo base_url('uploads/recipes/thumb__'.$image->file_name);?>" alt="<?php echo $image->file_name;?>"></a>                                                           
                                              </div>
                                              <?php if ($b % 4 == 0) {	?>
                                              </div><!--.row-->
                                          </div><!--.item-->
                                    <?php } if ($b == $n) { ?>
                                </div><!--.row1-->
                              </div><!--.item1-->
                            <?php } 
                            $b++;
                            }
                            ?>
                            <!--.Carousel1-->
                      </div>                  
                    <!-- end carousel -->
                    </div>
                </div>

            </div>
        </div>
        <div class="detail-bahan">
            <div class="img-resep img-bahan"><img src="<?php echo base_url();?>assets/public/img/items/bahan.png" alt="limg resep"></div>
            <div class="detail-info-resep detail-info-bahan">
                <?php if ($recipe['attribute']) { ?>
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <h4><img src="<?php echo base_url();?>assets/public/img/title-crown.png" alt="limg resep"> Kewpie Tip</h4>
                    <?php echo $recipe['attribute'];?>
                </div>
                <?php } ?>
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <h4><img src="<?php echo base_url();?>assets/public/img/title-crown.png" alt="limg resep"> <?php echo $this->lang->line('ingredient');?></h4>
                    <?php echo $recipe['text'];?>
                </div>
            </div>
        </div>
        <div class="cara-membuat">
			<div class="black-crown">
				<img src="<?php echo base_url();?>assets/public/img/black-crown.png" alt="limg resep"> Cara Membuat
			</div>
            <div class="bg-board">
                <?php echo $recipe['messages'];?>
            </div>
        </div>			
    </div> <!-- content end -->
</div>
<div class="container"> <!-- content start -->		
    <?php if (!empty($recipes)) { ?>
    <div class="related-resep">
        <div class="line"><div class="line-img"><img src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork line"> <?php echo $this->lang->line('suggested_recipe');?></div></div>
        <?php foreach($recipes as $item) { ?>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="thumbnail">
                <?php if ($item['media']) { ?><img src="<?php echo base_url('uploads/recipes/'.$item['media']);?>" alt=""><?php } ?>
				<div class="detail-related-thumbnail">
                    <h4><a href="<?php echo base_url('read/recipe/'.$item['url']);?>"><?php echo $item['subject'];?></a></h4>
					<?php if ($this->Products->getProduct($item['product_id'])->media) { ?>
					<img class="sub-pasta" width="45px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($item['product_id'])->media);?>" alt="jenis resep">
					<?php } ?>
					<p><?php echo word_limiter(strip_tags($item['messages']),9);?></p>
				</div>
            </div>
            <div class="tab-info">
                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $item['served'];?></button>
                <button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $item['time'];?> <?php echo $this->lang->line('minute');?></button>
            </div>
        </div>
        <?php } ?>				
    </div>
    <?php } else { ?> 
    <div class="related-resep">
        <div class="col-xs-4 col-sm-4 col-md-4"></div>    
    </div>    
    <?php } ?>
</div> <!-- content end -->