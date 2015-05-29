<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
    <div class="kewpie-main-body bg-home"> <!-- for cahnging background purpose -->
		<div class="kewpie-main-body bg-home-bottom"> <!-- for cahnging background purpose -->
		  <div class="container">
			<div class="hello">

			  <img class="resep-title" src="<?php echo base_url();?>assets/public/img/hello-kewpie.png" alt="resep">
			  <div class="box-white box-3">
				<h1 class="title"><?php echo $home_welcome[1]['subject'];?></h1>
				 <!-- jumlah karakter nya harus sama -->
				  <!--Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				  Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				  Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,-->
                  <?php echo $home_welcome[1]['text'];?>				
			  </div>
			</div>
			<div id="fade-it1" class="produk-kami">
              <div class="img-produk-kami"><h3><?php echo $home_product[1]['subject'];?></h3></div>
                <?php echo $home_product[1]['text'];?>
              <div class="pasta-left"><img id="fade-it6" src="<?php echo base_url();?>assets/public/img/kewpie-left-pasta.png" alt="pasta"></div>
			  <div class="pasta-right"><img id="fade-it7" src="<?php echo base_url();?>assets/public/img/kewpie-right-pasta.png" alt="pasta"></div>
			</div>
			<!-- ITEM PRODUK -->
			<div id="scale-it" class="item-produk">
                <div class="row">
                    <?php
                    $j = 1;
                    foreach ($products as $product) { ?>
                    <div class="col-xs-3 col-sm-3 col-md-3">
                        <div class="radial-menu">
                            <?php for ($i = 1; $i <= 4; $i++) { ?>
                                <div class="menu-item<?php echo $i;?>"><img class="" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt=""></div>
                            <?php } ?>
                            <div class="mask"><img class="" src="<?php echo base_url('uploads/products/'.$product['media']);?>" alt=""></div>
                            <div class="title-item-produk menu-item6" style="background: transparent url('<?php echo base_url();?>assets/public/img/items/tag<?php echo $j;?>.png') top center no-repeat; padding-top: 10px;">
                                <h4><?php echo $product['subject'];?></h4>
                            </div>
                            <div class="detail-left menu-item5 items-produk-link-posisi">
                                <div class="detail-right items-produk-link"><a href="<?php echo base_url('read/product/detail/'.$product['url']);?>"><?php echo $product['subject'];?></a></div>
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
                <img class="food-service-thumb" src="<?php echo base_url('uploads/products/'.$home_food_service[1]['media']);?>" alt="food service thumbnail item">
                <div class="food-service-head"><h4><?php echo $home_food_service[1]['subject'];?></h4></div>
                <div class="food-service-text">
                    <?php echo $home_food_service[1]['text'];?>
                </div>
                <div class="detail-left">
                  <div class="detail-right"><a href="<?php echo base_url('read/product/category/'.$home_food_service[1]['url']);?>"><?php echo $home_food_service[1]['subject'];?></a></div>
                </div>
              </div>
			
			<!-- RESEP -->
			<div class="resep-home">
                <img id="fly-it1" class="resep-title" src="<?php echo base_url();?>assets/public/img/resep.png" alt="resep">
                <?php 
                    $l=1;
                    foreach ($home_recipe_favorite as $recipe ) { ?>
                    <?php if ($l == 1) { ?>
                        <div class="display-pizza" data-toggle="tooltip" data-placement="right" title="<?php echo strip_tags($recipe['text']);?>">
                            <img id="fly-it4" src="<?php echo base_url('uploads/products/'.$recipe ['media']);?>" alt="resep">
                        </div>
                        <div id="fly-it2" class="box-white box-1">
                            <h3 class="title tred"><?php echo $recipe['subject'];?></h3>
                            <div class="food-service-text"><?php echo $recipe['text'];?></div>
                            <p>
                              Kewpie Tips :<br>
                              <?php echo $recipe['attribute'];?>
                            </p>
                            <div class="detail-left learn-detail pull-right">
                              <div class="detail-right"><a href="">Learn How</a></div>
                            </div>
                        </div>
                    <?php } else if ($l == 2) { ?>
                      <div id="fly-it3" class="box-white box-2">
                        <h3 class="title tred"><?php echo $recipe['subject'];?></h3>
                        <div class="food-service-text"><?php echo $recipe['text'];?></div>
                        <p>
                          Kewpie Tips :<br>
                          <?php echo $recipe['attribute'];?>
                        </p>
                        <div class="detail-left learn-detail pull-right">
                          <div class="detail-right"><a href="">Learn How</a></div>
                        </div>
                      </div>
                      <div class="display-sayuran" data-toggle="tooltip" data-placement="left" title="<?php echo strip_tags($recipe['text']);?>">
                        <img id="fly-it5" src="<?php echo base_url('uploads/products/'.$recipe['media']);?>" alt="resep">
                      </div>
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
                      <a class="cmn-t-scale" href="">
                        <?php if ($recipe['media']) { ?><img src="<?php echo base_url('uploads/products/'.$recipe['media']);?>" alt="item resep a"><br><?php } ?>
                        <?php echo $recipe['subject'];?>
                      </a>
                      </section>
                    <img class="jenis-resep" src="<?php echo base_url('uploads/products/'.$this->Products->getProduct($recipe['product_id'])->media);?>" alt="jenis resep">
                    </div>
                <?php 
                $b++;
                } 
                ?>
			  <div>
				<img class="fork-spoon" src="<?php echo base_url();?>assets/public/img/fork-spoon.png" alt="fork spoon">
				<div class="detail-left menu-lain">
				  <div class="detail-right"><a href="">Lihat Menu Lainnya</a></div>
				</div>
			  </div>
			</div>
            
            
			<!-- DALAM KEWPIE -->
			<div id="fade-it3" class="dalam-kewpie">
			  <img class="title-dalam-kewpie" src="<?php echo base_url();?>assets/public/img/dalam-kewpie.png" alt="dalam kewpie">
			  <h3 class="title tred"><?php echo $home_origin[1]['subject'];?></h3>
              <?php echo $home_origin[1]['text'];?>
                <div class="display-telor-peta" data-toggle="tooltip" data-placement="left" title="<?php echo strip_tags($home_origin[1]['synopsis']);?>">
					<img id="fly-it6" src="<?php echo base_url('uploads/pages/'.$home_origin[1]['media']);?>" alt="resep">
                </div>
			</div>
			<div id="fade-it4" class="isi-mayonaise">
				<img src="<?php echo base_url();?>assets/public/img/isi-mayonaise.jpg" alt="isinya mayonaise">
			</div>
			<div id="fade-it5" class="cup-mayonaise">
				<img class="rotate-cup" src="<?php echo base_url();?>assets/public/img/cup-mayonaise.png" alt="cup mayonaise">
			</div>
			<!-- CERITA KEWPIE -->
			<div id="scale-it2"  class="cerita-kewpie">
			  <img class="title-cerita-kewpie pull-right" src="<?php echo base_url();?>assets/public/img/cerita-kewpie.png" alt="cerita kewpie">
			  <div class="kewpie-region">
				<div class="col-xs-6 col-sm-6 col-md-6">
				  <section>
				  <a class="cmn-t-scale" href="">
					<img src="<?php echo base_url();?>assets/public/img/id-kewpie.png" alt="item resep a"><br>
					KEWPIE in Indonesia
				  </a>
				  </section>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
				  <section>
				  <a class="cmn-t-scale" href="">
					<img src="<?php echo base_url();?>assets/public/img/jp-kewpie.png" alt="item resep a"><br>
					KEWPIE in Japan
				  </a>
				  </section>
				</div>
			  </div>
			</div>
            <div class="clear"></div>
			<!-- NEWS KEWPIE -->
			<div id="scale-it3" class="news-latest">
			  <img class="title-cerita-kewpie" src="<?php echo base_url();?>assets/public/img/berita-terbaru.png" alt="berita kewpie">
			  <!-- start carousel -->
			  <div class="row">
			  <div class="col-md-12">
			  <div id="Carousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <?php 
                        $z = count($home_news) % 3;
                        for ($m=0;$m < $z;$$m++) { ?>
                        <li data-target="#Carousel" data-slide-to="<?php echo $m;?>" <?php echo $m == 0 ? 'class="active"' :'';?>></li>
                        <?php 
                        $m++;
                    } ?>
                </ol>
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
                                         <div class="col-xs-4 col-sm-4 col-md-4">
                                             <a href="#"><img src="<?php echo base_url('uploads/news/'.$row['media']);?>" alt="<?php echo $row['url'];?>"></a>
                                             <div class="caption-news">
                                               <div class="caption-news-inside">
                                                 <h4><a href="#" class=""><?php echo character_limiter($row['subject'],30,'');?></a></h4>
                                                 <?php echo character_limiter(strip_tags($row['synopsis']), 120);?>
                                               </div>
                                             </div>
                                        </div>
                                        <?php if ($b % 3 == 0) {	?>
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