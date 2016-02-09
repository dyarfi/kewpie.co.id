<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body bg-home"> <!-- for changing background purpose -->
	<div class="kewpie-main-body bg-home-bottom"> <!-- for changing background purpose -->
	  <div class="container">
		<div class="hello">
		  <div class="scroll-me"><h3>Scroll Me Down!</h3></div>
		  <div class="resep-title">
			   <h4><?php echo $this->lang->line('hello');?></h4>
		  </div>
		  <div class="box-white box-3">
			<h1 class="title"><?php echo $home_welcome[1]['subject'];?></h1>
			 <!-- jumlah karakter nya harus sama -->
			  <?php echo $home_welcome[1]['text'];?>
		  </div>
		</div>
		<img class="egg1" src="<?php echo base_url();?>assets/public/img/egg1.png"/>
		<div id="fade-it1" class="produk-kami">
		  <div class="img-produk-kami"><h3><?php echo $home_product[1]['subject'];?></h3></div>
			<div class="box-white box-3"><?php echo $home_product[1]['text'];?></div>
		</div>
		<!-- ITEM PRODUK -->
		<div id="scale-it" class="item-produk">
			<div class="row">
				<?php
				$j = 1;
				foreach ($product_category as $category) {
					$color    = str_replace('#', '', $category['color']); ?>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class="radial-menu">
							<?php
								$m = 1;
								$tmp = array();
								foreach($category['products'] as $product) { ?>
									<div class="menu-item<?php echo $m;?> handler"><img alt="" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt="<?php echo character_limiter($category['subject'], 30,'');?>"></div>
									<?php
								$m++;
								}
							?>
							<div class="mask"><img class="" width="88px" src="<?php echo base_url('uploads/products/'.$category['front_img'][1]['media']);?>" alt="<?php echo character_limiter($category['subject'], 30,'');?>"></div>
							<div class="title-item-produk-h menu-item6" style="background: transparent url('<?php echo base_url();?>assets/public/img/items/tags-<?php echo $color;?>.png') top center no-repeat; padding-top: 0px;">
								<h4><?php echo character_limiter($category['subject'], 30,'');?></h4>
							</div>
							<div class="detail-left menu-item5 items-produk-link-posisi">
								<div class="detail-right items-produk-link"><a href="<?php echo base_url('read/product/category/'.$category['url']);?>">
									<?php echo $this->lang->line('detail') . ' ' . character_limiter($category['subject'], 30,'');?></a>
								</div>
							</div>
						</div>
					</div>
				<?php
				$j++;
				} ?>
			</div>
		</div>
		<!-- FOOD SERVICE -->
		<div id="fade-it2" class="food-service">
			<img class="food-service-thumb" src="<?php echo base_url('uploads/products/'.$home_food_service[1]['media']);?>" alt="<?php echo $home_food_service[1]['subject'];?>">
			<div class="food-service-head"><h4><?php echo $home_food_service[1]['subject'];?></h4></div>
			<div class="food-service-text"><div class="page-content"><?php echo $home_food_service[1]['text'];?></div></div>
			<div class="detail-left">
			  <div class="detail-right"><a href="<?php echo base_url('read/product/category/'.$home_food_service[1]['url']);?>"><?php echo $home_food_service[1]['subject'];?></a></div>
			</div>
		  </div>
		<!-- RESEP -->
		<div class="resep-home">
			<div id="fly-it1" class="resep-title"><h4><?php echo $this->lang->line('recipe');?></h4></div>
			<?php
				$l=1;
				foreach ($home_recipe_favorite as $recipe) { ?>
				<?php if ($l == 1) { ?>
					<?php if ($recipe['favorited'] === 'yes' && !empty($recipe['favorite_image'])) { ?>
					<div class="display-pizza" data-toggle="tooltip-s" data-placement="right" title="<?php //echo strip_tags($recipe['text']);?>">
						<img id="fly-it4" src="<?php echo base_url('uploads/recipes/'.$recipe['favorite_image']);?>" alt="resep">
					</div>
					<?php } ?>
					<div id="fly-it2" class="box-white box-1">
						<h3 class="title tred"><?php echo $recipe['subject'];?></h3>
						<div class="food-service-text"><?php echo character_limiter(strip_tags($recipe['synopsis']),154);?></div>
						<?php if ($recipe['attribute']) { ?>
						<p>
						  <h3 class="title">KEWPIE Tips :</h3>
						  <?php echo character_limiter(strip_tags($recipe['attribute']),120);?>
						</p>
						<?php } ?>
						<div class="detail-left learn-detail pull-right">
						  <div class="detail-right"><a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>" title="<?php echo $recipe['subject'];?>">
						  <?php echo $this->lang->line('learn_how');?></a></div>
						</div>
					</div>
				<?php } else if ($l == 2) { ?>
				  <div id="fly-it3" class="box-white box-2">
					<h3 class="title tred"><?php echo $recipe['subject'];?></h3>
					<div class="food-service-text"><?php echo character_limiter(strip_tags($recipe['synopsis']),154);?></div>
					<?php if ($recipe['attribute']) { ?>
					<p>
					  <h3 class="title">KEWPIE Tips :</h3>
					  <?php echo character_limiter(strip_tags($recipe['attribute']),120);?>
					</p>
					<?php } ?>
					<div class="detail-left learn-detail pull-right">
					  <div class="detail-right"><a href="<?php echo base_url('read/recipe/'.$recipe['url']);?>" title="<?php echo $recipe['subject'];?>">
						  <?php echo $this->lang->line('learn_how');?></a></div>
					</div>
				  </div>
				  <?php if ($recipe['favorited'] === 'yes' && !empty($recipe['favorite_image'])) { ?>					
				  <div class="display-sayuran" data-toggle="tooltip-s" data-placement="left" title="<?php //echo strip_tags($recipe['text']);?>">
						<img id="fly-it5" src="<?php echo base_url('uploads/recipes/'.$recipe['favorite_image']);?>" alt="resep">
				  </div>
				  <?php } ?>
				<?php
				}
				$l++;
			}
			?>
		</div>
		<div id="scale-it1" class="list-resep-home"><!-- size image nya harus 195x195(pixel) -->
			<?php
			$b=1;
			foreach ($home_recipes as $recipe ) { ?>
				<div class="col-xs-3 col-sm-3 col-md-3 items-resep">
				  <section>
				  <a class="cmn-t-scale" href="<?php echo base_url('read/recipe/'.$recipe['url']);?>">
					<?php if ($recipe['media']) { ?><div class="thumb-resep-home"><img class="img-responsive" src="<?php echo base_url('uploads/recipes/thumb__200x200'.$recipe['media']);?>" alt="<?php echo $recipe['subject'];?>"></div><?php } ?>
					<span><?php echo $recipe['subject'];?></span>
				  </a>
				  </section>
				<?php if ($this->Products->getProduct($recipe['product_id'])->media) { ?>
					<img class="jenis-resep" width="74px" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($recipe['product_id'])->media);?>" alt="jenis resep">
					<img class="red-dot-resep" src="<?php echo base_url();?>assets/public/img/red-dot-resep.png" alt="fork spoon">
				<?php } ?>
				</div>
			<?php
			$b++;
			}
			?>
		  <div class="paddingtop10">
			<img class="fork-spoon" src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork spoon">
			<div class="detail-left menu-lain">
			  <div class="detail-right"><a href="<?php echo base_url('read/recipe');?>"><?php echo $this->lang->line('other_recipes');?></a></div>
			</div>
		  </div>
		</div>
		<!-- DALAM KEWPIE -->
		<div class="dalam-kewpie">
			<div id="fade-it3">
				<div class="img-produk-kami title-dalam-kewpie"><h3><?php echo $this->lang->line('inside_kewpie');?></h3></div>
				<div class="page-content inside-kewpie head-font"><?php echo $home_origin[1]['synopsis'];?></div>
			</div>
			<div class="display-telor-peta" data-toggle="tooltip-s" data-placement="left" title="">
				<img id="fly-it6" src="<?php echo base_url('assets/public/img/inside-kewpie.jpg') ?>" alt="resep">
			</div>
		</div>
		<div id="fade-it4" class="isi-mayonaise">
			<div class="mayo1"></div><div class="mayo2"></div><div class="mayo3"></div><div class="mayo4"></div><div class="mayo5"></div>
		</div>
		<div id="fade-it5" class="cup-mayonaise">
			<img class="rotate-cup" src="<?php echo base_url();?>assets/public/img/cup-mayonaise.png" alt="cup mayonaise">
		</div>
		<!-- CERITA KEWPIE -->
		<div id="scale-it2"  class="cerita-kewpie">
		  <div class="title-cerita-kewpie"><h3 class="story_head"><?php echo $this->lang->line('kewpie_story');?></h3></div>
		  <div class="kewpie-region">
			<div class="col-xs-6 col-sm-6 col-md-6">
			  <section>
			  <a class="cmn-t-scale" href=""><img src="<?php echo base_url();?>assets/public/img/id-kewpie.png" alt="item resep a"><br>KEWPIE in Indonesia</a>
			  </section>
			</div>
			<?php if ($this->ext_link->value) { ?>
			<div class="col-xs-6 col-sm-6 col-md-6">
			  <section>
			  <a class="cmn-t-scale" href="<?php echo $this->ext_link->value;?>" target="_blank"><img src="<?php echo base_url();?>assets/public/img/jp-kewpie.png" alt="item resep a"><br>KEWPIE in Japan</a>
			  </section>
			</div>
			<?php } ?>
		  </div>
		</div>
		<div class="clear"></div>
		<!-- NEWS KEWPIE -->
		<div id="scale-it3" class="news-latest">
			<div class="title-cerita-kewpie"><h3 class="news_head"><?php echo $this->lang->line('latest_news');?></h3></div>
			  <!-- start carousel -->
			  <div class="row">
			  <div class="col-md-12">
			  <div id="Carousel" class="carousel slide">
			  <?php if (count($home_news) > 3) { ?>
				<!--ol class="carousel-indicators">
					<?php
						$z = count($home_news) % 3;
						for ($m=0;$m < $z;$m++) { ?>
						<li data-target="#Carousel" data-slide-to="<?php echo $m;?>" <?php echo $m == 0 ? 'class="active"' :'';?>></li>
						<?php
						$m++;
					} ?>
				</ol-->
				<?php } ?>
				<!-- Carousel items -->
				<div class="carousel-inner">
				  <?php
					  $b = 1;
					  $n = count($home_news);
					  foreach ($home_news as $row) {
						if ($b == 1) { ?>
						<div class="item active">
							<div class="row">
							  <?php } elseif ($b % 3 == 1 && $b != 1) {	?>
								  <div class="item">
									  <div class="row">
										<?php } ?>
										 <div class="col-xs-4 col-sm-4 col-md-4 carousel-news-item-home">
											 <a href="<?php echo base_url('read/news/detail/'.$row['url']);?>"><img src="<?php echo base_url('uploads/news/thumb__282x273'.$row['media']);?>" alt="<?php echo $row['url'];?>"></a>
											 <div class="caption-news">
											   <div class="caption-news-inside">
												 <h4><a href="<?php echo base_url('read/news/detail/'.$row['url']);?>" class=""><?php echo character_limiter($row['subject'],15,'');?></a></h4>
												 <?php echo character_limiter(strip_tags($row['synopsis']), 70);?>
											   </div>
											 </div>
										</div>
										<?php if ($b % 3 == 0 && $b != $n) {	?>
										</div><!--.row-->
									</div><!--.item-->
							  <?php } if ($b == $n) { ?>
						  </div><!--.row1-->
						</div><!--.item1-->
					  <?php }
					  $b++;
					  }
					  ?>
					  <!--.Carousel-->
				</div>
			  <!-- end carousel -->
		  </div>
		  </div>
		  </div>
		</div>
	  </div>
	</div>
</div>
