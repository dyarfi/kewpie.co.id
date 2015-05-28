<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
		<div class="kewpie-main-body" style="background: transparent url('<?php echo base_url();?>assets/public/img/items/bg-list-resep.jpg') no-repeat top center; padding-top:150px; position: relative;"> <!-- for cahnging background purpose -->
			<div class="container"> <!-- content start -->
				<div class="bg-box-resep-fav">
					<h2>Resep Favorit!</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat. Consectetur, culpa itaque odio similique suscipit</p>
					<a href="#">Selengkapnya</a>
					<img class="sub-pasta sub-pasta-info-resep" src="<?php echo base_url();?>assets/public/img/items/sub-cat-pasta.jpg" alt="item pasta">
					<div class="tab-info tab-info-resep">
						<button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/sendok-garpu.png" alt="limg resep"> Serves 2</button>
						<button type="button" class="btn btn-danger"><img src="<?php echo base_url();?>assets/public/img/mini-jam.png" alt="limg resep"> 15 Min</button>
					</div>
				</div>
			</div> <!-- content end -->
		</div>
		<div class="container"> <!-- content start -->
			<div class="row">    
				<div class="search-form-board">
					<div class="input-group">
						<div class="input-group-btn search-panel">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span id="search_concept">Semua Produk</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
							  <li><a href="#contains">Kacang</a></li>
							  <li><a href="#its_equal">Kueh</a></li>
							  <li><a href="#greather_than">Cingcaw</a></li>
							  <li><a href="#less_than">Tahu</a></li>
							</ul>
						</div>
						<input type="hidden" name="search_param" value="all" id="search_param">         
						<input type="text" class="form-control" name="x" placeholder="Search term...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
						</span>
					</div>
				</div>
			</div>
			<div class="list-resep">
				<div class="cara-membuat2">
					<div class="bg-board board2">
						
						<div class='row'>
							<div>
							  <div class="carousel slide food-service-carousel list-resep-board" data-ride="carousel" id="quote-carousel">
								<!-- Carousel Slides / Quotes -->
								<div class="carousel-inner list-resep-carousel">
									
								  <!-- Quote 1 -->
									<div class="item active">
									
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
								  <!-- Quote 2 -->
									<div class="item">
										
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
								  <!-- Quote 3 -->
									<div class="item">
									
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
<!-- Carousel Buttons Next/Prev -->
								<a data-slide="prev" href="#quote-carousel" class="left carousel-control list-resep-nav-left"><i class="fa fa-chevron-left"></i></a>
								<a data-slide="next" href="#quote-carousel" class="right carousel-control list-resep-nav-right"><i class="fa fa-chevron-right"></i></a>							  
							</div>
						  </div>
						
					</div>
				</div>
			</div>
		
		</div> <!-- content end -->
        </div>
    </div>     