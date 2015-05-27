<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
    <div class="kewpie-main-body bg-home"> <!-- for cahnging background purpose -->
		<div class="kewpie-main-body bg-home-bottom"> <!-- for cahnging background purpose -->
		  <div class="container-fluid">
			<div class="hello">

			  <img class="resep-title" src="<?php echo base_url();?>assets/public/img/hello-kewpie.png" alt="resep">
			  <div class="box-white box-3">
				<h1 class="title"><?php echo $home_welcome[1]['subject'];?></h1>
				<p> <!-- jumlah karakter nya harus sama -->
				  <!--Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				  Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				  Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,-->
                  <?php echo $home_welcome[1]['text'];?>
				</p>
			  </div>
			</div>
			<div id="fade-it1" class="produk-kami">
              <div class="img-produk-kami"><h3><?php echo $home_product[1]['title'];?></h3></div>
			  <p>
				<?php echo $home_product[1]['description'];?>
			  </p>
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
                                    <div class="menu-item<?php echo $i;?>"><img class="" src="<?php echo base_url('uploads/pages/'.$product['media']);?>" alt=""></div>
                                <?php } ?>
                                <div class="mask"><img class="" src="<?php echo base_url('uploads/pages/'.$product['media']);?>" alt=""></div>
                                <div class="title-item-produk menu-item6" style="background: transparent url('<?php echo base_url();?>assets/public/img/items/tag<?php echo $j;?>.png') top center no-repeat;">
                                    <h4><?php echo $product['subject'];?></h4>
                                </div>
                                <div class="detail-left menu-item5 items-produk-link-posisi">
                                    <div class="detail-right items-produk-link"><a href="https://www.facebook.com/">Detail <?php echo $product['subject'];?></a></div>
                                </div>
                            </div>
                        </div>       
                    <?php
                        $j++;
                        } ?>
               
                  <!--h4 style="font-family:'Leckerli_OneRegular'"></h4-->
                  
				<!--div class="col-xs-3 col-sm-3 col-md-3">
				  <div class="radial-menu">
					<div class="menu-item1"><img class="" src="<?php echo base_url();?>assets/public/img/items/mayonais.png" alt=""></div>
					<div class="menu-item2"><img class="" src="<?php echo base_url();?>assets/public/img/items/mayonais.png" alt=""></div>
					<div class="menu-item3"><img class="" src="<?php echo base_url();?>assets/public/img/items/mayonais.png" alt=""></div>
					<div class="menu-item4"><img class="" src="<?php echo base_url();?>assets/public/img/items/mayonais.png" alt=""></div>
					<div class="mask"><img class="" src="<?php echo base_url();?>assets/public/img/items/mayonais.png" alt=""></div>
					<img class="title-item-produk menu-item6" src="<?php echo base_url();?>assets/public/img/items/tag-mayonais.png" alt="title item produk">
					<div class="detail-left menu-item5 items-produk-link-posisi">
						<div class="detail-right items-produk-link"><a href="https://www.facebook.com/">Detail Mayonais</a></div>
					</div>
				  </div>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3">
				  <div class="radial-menu">
					<div class="menu-item1"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-tiram.png" alt=""></div>
					<div class="menu-item2"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-tiram.png" alt=""></div>
					<div class="menu-item3"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-tiram.png" alt=""></div>
					<div class="menu-item4"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-tiram.png" alt=""></div>
					<div class="mask"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-tiram.png" alt=""></div>
					<img class="title-item-produk menu-item6" src="<?php echo base_url();?>assets/public/img/items/tag-saus-tiram.png" alt="title item produk">
					<div class="detail-left menu-item5 items-produk-link-posisi">
						<div class="detail-right items-produk-link"><a href="">Detail Saus Tiram</a></div>
					</div>
				  </div>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3">
				  <div class="radial-menu">
					<div class="menu-item1"><img class="" src="<?php echo base_url();?>assets/public/img/items/olesan-sandwich.png" alt=""></div>
					<div class="menu-item2"><img class="" src="<?php echo base_url();?>assets/public/img/items/olesan-sandwich.png" alt=""></div>
					<div class="menu-item3"><img class="" src="<?php echo base_url();?>assets/public/img/items/olesan-sandwich.png" alt=""></div>
					<div class="menu-item4"><img class="" src="<?php echo base_url();?>assets/public/img/items/olesan-sandwich.png" alt=""></div>
					<div class="mask"><img class="" src="<?php echo base_url();?>assets/public/img/items/olesan-sandwich.png" alt=""></div>
					<img class="title-item-produk menu-item6" src="<?php echo base_url();?>assets/public/img/items/tag-olesan-sandwich.png" alt="title item produk">
					<div class="detail-left menu-item5 items-produk-link-posisi">
						<div class="detail-right items-produk-link"><a href="">Detail Olesan Sandwich</a></div>
					</div>
				  </div>
				</div>
				<div class="col-xs-3 col-sm-3 col-md-3">
				  <div class="radial-menu">
					<div class="menu-item1"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-manis.png" alt=""></div>
					<div class="menu-item2"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-manis.png" alt=""></div>
					<div class="menu-item3"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-manis.png" alt=""></div>
					<div class="menu-item4"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-manis.png" alt=""></div>
					<div class="mask"><img class="" src="<?php echo base_url();?>assets/public/img/items/saus-manis.png" alt=""></div>
					<img class="title-item-produk menu-item6" src="<?php echo base_url();?>assets/public/img/items/tag-saus-manis.png" alt="title item produk">
					<div class="detail-left menu-item5 items-produk-link-posisi">
						<div class="detail-right items-produk-link"><a href="">Detail Saus Manis</a></div>
					</div>
				  </div>
				</div-->
			  </div>
			</div>
			<!-- FOOD SERVICE -->
			<div id="fade-it2" class="food-service">
			  <img class="food-service-thumb" src="<?php echo base_url();?>assets/public/img/food-service-thumb.png" alt="food service thumbnail item">
              <div class="food-service-head"><h4>Food Service</h4></div>
			  <p class="food-service-text">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,
			  </p>
			  <div class="detail-left">
				<div class="detail-right"><a href="">Detail Food Service</a></div>
			  </div>
              </div>
			</div>
			<!-- RESEP -->
			<div class="resep-home">
				<div class="display-pizza"  data-toggle="tooltip" data-placement="right" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,">
					<img id="fly-it4" src="<?php echo base_url();?>assets/public/img/pizza.jpg" alt="resep">
				</div>
			  <img id="fly-it1" class="resep-title" src="<?php echo base_url();?>assets/public/img/resep.png" alt="resep">
			  <div id="fly-it2" class="box-white box-1">
				<h3 class="title tred">KEWPIE Mini Pepperoni Pizzas</h3>
				<p class="food-service-text">
				  Enjoy these home-made mini pizzas by preparing a few
				  simple ingredients before baking them in your toaster oven.
				  This recipe uses pepperoni slices and KEWPIE SANDWICH
				  SPREAD SPICY BLACK PEPPER
				</p>
				<p>
				  Kewpie Tips :<br>
				  Cherry tomatoes are a rich source of Vitamins A, C, and Folic Acid. They're also full of healthy nutrients and anti-oxidants..
				</p>
				<div class="detail-left learn-detail pull-right">
				  <div class="detail-right"><a href="">Learn How</a></div>
				</div>
			  </div>
			  <div id="fly-it3" class="box-white box-2">
				<h3 class="title tred">KEWPIE Mini Pepperoni Pizzas</h3>
				<p class="food-service-text">
				  Enjoy these home-made mini pizzas by preparing a few
				  simple ingredients before baking them in your toaster oven.
				  This recipe uses pepperoni slices and KEWPIE SANDWICH
				  SPREAD SPICY BLACK PEPPER
				</p>
				<p>
				  Kewpie Tips :<br>
				  Cherry tomatoes are a rich source of Vitamins A, C, and Folic Acid. They're also full of healthy nutrients and anti-oxidants..
				</p>
				<div class="detail-left learn-detail pull-right">
				  <div class="detail-right"><a href="">Learn How</a></div>
				</div>
			  </div>
			  <div class="display-sayuran"  data-toggle="tooltip" data-placement="left" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,">
					<img id="fly-it5" src="<?php echo base_url();?>assets/public/img/resep-sayuran.jpg" alt="resep">
				</div>
			</div>
			<div id="scale-it1" class="list-resep-home"><!-- size image nya harus 195x195(pixel) -->

			  <div class="col-xs-3 col-sm-3 col-md-3 items-resep">
				<section>
				<a class="cmn-t-scale" href="">
				  <img src="<?php echo base_url();?>assets/public/img/items/smpl-rsp-1.png" alt="item resep a"><br>
				  Chicken Caesar Salad
				</a>
				</section>
			  <img class="jenis-resep" src="<?php echo base_url();?>assets/public/img/items/bumbu-resep.png" alt="jenis resep">
			  </div>
			  <div class="col-xs-3 col-sm-3 col-md-3 items-resep">
				<section>
				<a class="cmn-t-scale" href="">
				  <img src="<?php echo base_url();?>assets/public/img/items/smpl-rsp-2.png" alt="item resep a"><br>
				  Chicken Caesar Salad
				</a>
				</section>
				<img class="jenis-resep" src="<?php echo base_url();?>assets/public/img/items/bumbu-resep.png" alt="jenis resep">
			  </div>
			  <div class="col-xs-3 col-sm-3 col-md-3 items-resep">
				<section>
				<a class="cmn-t-scale" href="">
				  <img src="<?php echo base_url();?>assets/public/img/items/smpl-rsp-3.png" alt="item resep a"><br>
				  Chicken Caesar Salad
				</a>
				</section>
				<img class="jenis-resep" src="<?php echo base_url();?>assets/public/img/items/bumbu-resep.png" alt="jenis resep">
			  </div>
			  <div class="col-xs-3 col-sm-3 col-md-3 items-resep">
				<section>
				<a class="cmn-t-scale" href="">
				  <img src="<?php echo base_url();?>assets/public/img/items/smpl-rsp-4.png" alt="item resep a"><br>
				  Chicken Caesar Salad
				</a>
				</section>
				<img class="jenis-resep" src="<?php echo base_url();?>assets/public/img/items/bumbu-resep.png" alt="jenis resep">
			  </div>
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
			  <h3 class="title tred">The Origins of KEWPIE Mayonnaise</h3>
			  <p class="food-service-text">
				It is said that mayonnaise was accidentally created by Duke de Richelieu's
				French chef in the mid 18th century. Instead of using cream, the chef used oil
				and eggs when making the Duke's victory feast. He was so pleased with the creation
				that it was named "Mahonnaise" in honour of the Duke's defeat of the British at the Port of Mahon, Menorca.
			  </p>
			  <p class="food-service-text">
				Mr Nakashima Toichiro (founder of KEWPIE Corporation) learned about mayonnaise 160 years
				later when he travelled to the United States to learn about canned food.
				Back then, Americans often ate vegetables with dressings that contained mayonnaise.
				Mr Nakashima then returned to Japan to develop a nutritious mayonnaise that was high in
				egg yolk content, eventually selling the western condiment to Japan in 1925.
				KEWPIE Mayonnaise would then go on to capture the hearts of mayonnaise lovers all around the world.
			  </p>
			  <div class="display-telor-peta"  data-toggle="tooltip" data-placement="left" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at faucibus enim.
				Sed vel tempor elit, nec eleifend justo. Nullam varius a tortor quis imperdiet.
				Vivamus ac faucibus nulla. Vestibulum gravida ultricies magna,">
					<img id="fly-it6" src="<?php echo base_url();?>assets/public/img/telor-peta.jpg" alt="resep">
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
			<!-- NEWS KEWPIE -->
			<div id="scale-it3" class="news-latest">
			  <img class="title-cerita-kewpie" src="<?php echo base_url();?>assets/public/img/berita-terbaru.png" alt="berita kewpie">
			  <!-- start carousel -->
			  <div class="row">
			  <div class="col-md-12">
			  <div id="Carousel" class="carousel slide">

			  <ol class="carousel-indicators">
				  <li data-target="#Carousel" data-slide-to="0" class="active"></li>
				  <li data-target="#Carousel" data-slide-to="1"></li>
				  <li data-target="#Carousel" data-slide-to="2"></li>
			  </ol>

			  <!-- Carousel items -->
			  <div class="carousel-inner">

				<div class="item active">
						<div class="row">
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-1.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 1</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-2.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 2</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-3.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 3</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						</div><!--.row-->
				</div><!--.item-->

				<div class="item">
						<div class="row">
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-3.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 1</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-1.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 2</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-2.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 3</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						</div><!--.row-->
				</div><!--.item-->

				<div class="item">
						<div class="row">
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-2.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 1</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-3.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 2</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						  <div class="col-xs-4 col-sm-4 col-md-4">
							<a href="#"><img src="<?php echo base_url();?>assets/public/img/items/news-list-1.png" alt="Image"></a>
							<div class="caption-news">
							  <div class="caption-news-inside">
								<h4><a href="#" class="">Event 3</a></h4>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry.
							  </div>
							</div>
						  </div>
						</div><!--.row-->
				</div><!--.item-->

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
