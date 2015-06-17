<?php if (!defined('BASEPATH')) exit('No direct script access allowed');  ?>
<div class="kewpie-main-body detail-resep"> <!-- for changing background purpose -->
    <div class="container contain-resep-detail"> <!-- content start -->				
        <div class="tab-info pull-right">
            <?php
			 $product  = $this->Products->getProduct($recipe['product_id'])->category_id;
			 $color    = $this->ProductCategories->getCategory($product)->color;
			if ($recipe['served']) { ?><button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> <?php echo $this->lang->line('serve');?> <?php echo $recipe['served'];?></button><?php } ?>
            <?php if ($recipe['time']) { ?><button type="button" class="btn btn-danger" <?php echo ($color) ? 'style="border-color:'.$color.';background:'.$color.'"' :'';?>><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> <?php echo $recipe['time'];?> <?php echo $this->lang->line('minute');?></button><?php } ?>
        </div>
        <div class="info-resep">
            <div class="img-resep">
                <div class="content-handler">
                    <?php if ($recipe['media']) {?>
                    <a href="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" class="fancybox" title="<?php echo $recipe['subject'];?>">
                        <img src="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" alt="<?php echo $recipe['subject'];?>">
                    </a>
                    <?php } ?>
					<?php if ($recipe['video']) { 
						preg_match('/src="([^"]+)"/', $recipe['video'], $match);
						$url = $match[1];
						//$url = preg_replace('/^https(?=:\/\/)/i','http',$url);
						$return .= $recipe['video'] ? '<a href="'.$url.'" class="fancybox-video iframe play-button-resep" title="'.$recipe['subject'].'"><img src="'.base_url().'assets/public/img/play.png" alt="play video"></a>' : '';		
						echo $return;
						?>
					
					<?php } ?>
				
                </div>    
            </div>
            <div class="detail-info-resep">
                <h2><?php echo $recipe['subject'];?></h2>
                <p><?php echo $recipe['synopsis'];?></p>
				 
                <ul class="share list-inline addthis_default_style addthis_32x32_style">
                    <li>
                        <a data-original-title="Twitter" rel="tooltip"  href="#" class="btn btn-twitter addthis_button_twitter" data-placement="left">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="Facebook" rel="tooltip"  href="#" class="btn btn-facebook addthis_button_facebook" data-placement="left">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </li>					
                    <li>
                        <a data-original-title="Google+" rel="tooltip"  href="#" class="btn btn-google addthis_button_google_plusone_share" data-placement="left">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="LinkedIn" rel="tooltip"  href="#" class="btn btn-linkedin addthis_button_linkedin" data-placement="left">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a data-original-title="Pinterest" rel="tooltip"  class="btn btn-pinterest addthis_button_pinterest_share" data-placement="left">
                            <i class="fa fa-pinterest"></i>
                        </a>
                    </li>
                    <li>
                        <a  data-original-title="Email" rel="tooltip" class="btn btn-mail addthis_button_email" data-placement="left">
                            <i class="fa fa-envelope"></i>
                        </a>
                    </li>
                </ul>
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-557557b93e7eb422" async="async"></script>
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
                                                   <a href="<?php echo base_url('uploads/recipes/'.$image->file_name);?>" class="fancybox" rel="image_group"><img class="img-responsive" src="<?php echo base_url('uploads/recipes/thumb__'.$image->file_name);?>" alt="<?php echo $image->file_name;?>"></a>                                                           
                                              </div>
                                              <?php if ($b % 4 == 0 && $b != $n) {	?>
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
            <div class="img-resep img-bahan">
			 <?php if ($recipe['cover']) { ?>
				<img height="259px" src="<?php echo base_url('uploads/recipes/'.$recipe['cover']);?>" alt="<?php echo $recipe['subject'];?>">
			<?php } else {?>	
				<img src="<?php echo base_url();?>assets/public/img/items/bahan.png" alt="<?php echo $recipe['subject'];?>">
			<?php } ?>		
			</div>
            <div class="detail-info-resep detail-info-bahan">
                <?php if ($recipe['attribute']) { ?>
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <h4><img src="<?php echo base_url();?>assets/public/img/title-crown.png" alt="<?php echo $recipe['subject'];?>"> Kewpie Tip</h4>
                    <?php echo $recipe['attribute'];?>
                </div>
                <?php } ?>
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <h4><img src="<?php echo base_url();?>assets/public/img/title-crown.png" alt="<?php echo $recipe['subject'];?>"> <?php echo $this->lang->line('ingredient');?></h4>
                    <?php echo $recipe['text'];?>
                </div>
            </div>
        </div>
        <div class="cara-membuat">
			<div class="black-crown">
				<img src="<?php echo base_url();?>assets/public/img/black-crown.png" alt="<?php echo $recipe['subject'];?>"> <?php echo $this->lang->line('how_to');?>
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
        <div class="line"><div class="line-img"><img src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="<?php echo $recipe['subject'];?>"> <?php echo $this->lang->line('suggested_recipe');?></div></div>
        <?php foreach($recipes as $recipe) { 
		 $product  = $this->Products->getProduct($recipe['product_id'])->category_id;
		 $color    = $this->ProductCategories->getCategory($product)->color; ?>
        <div class="col-xs-4 col-sm-4 col-md-4 box-holder">
            <div class="thumbnail">
                <?php if ($recipe['media']) { ?>
				<a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>">
					<img src="<?php echo base_url('uploads/recipes/'.$recipe['media']);?>" alt="<?php echo $recipe['subject'];?>">
				</a>	
				<?php } ?>
				<div class="detail-related-thumbnail">
                    <h4><a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>"><?php echo $recipe['subject'];?></a></h4>
					<?php if ($this->Products->getProduct($recipe['product_id'])->media) { ?>
					<img class="sub-pasta" width="45px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($recipe['product_id'])->media);?>" alt="jenis resep">
					<?php } ?>
					<p><?php echo word_limiter(strip_tags($recipe['synopsis']),9);?></p>
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
</div> <!-- content end -->