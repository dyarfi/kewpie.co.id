<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
           
			<div class="container-fluid content-inside" style="margin-bottom: 400px">
				<div class="col-xs-6 col-sm-6 col-md-6 marginbot50">
				   <h2><?php echo $this->lang->line('search').' '.$search;?></h2>
				   <?php if (!empty($results)) { ?>
					<ul class="marginbot50">
						<?php
						/*
						foreach ($results['products'] as $product) { 
							$category_id = $this->Products->getProduct($product->field_id)->category_id;?>
						<li>
							<a href="<?php echo base_url('read/product/'.$this->ProductCategories->getCategory($category_id)->url);?>"><?php echo $product->subject;?></a>
						</li>
						<?php 
						} */ 
						?>
						<?php
						if (!empty($results['product_categories'])) {
							foreach ($results['product_categories'] as $category) { ?>
							<li>
								<a href="<?php echo base_url('read/product/category/'.$category->url);?>"><?php echo $category->subject;?></a>
							</li>
							<?php 
							} 
						} if (!empty($results['product_recipes'])) {
							foreach ($results['product_recipes'] as $recipe) {?>
							<li>
								<a href="<?php echo base_url('read/recipe/detail/'.$recipe->url);?>"><?php echo $recipe->subject;?></a>
							</li>
						<?php 
							}
						} if (!empty($results['pages'])) { 
							foreach ($results['pages'] as $page) {?>
							<li>
								<a href="<?php echo base_url('read/page/detail/'.$page->url);?>"><?php echo $page->subject;?></a>
							</li>
						<?php } 
						} if (!empty($results['page_menus'])) { 
							foreach ($results['page_menus'] as $menu) {?>
							<li>
								<a href="<?php echo base_url('read/page/'.$menu->url);?>"><?php echo $menu->subject;?></a>
							</li>
						<?php } 
						}
						?>
						<?php /*foreach ($results as $result) {?>
						<li>
							<a href="<?php base_url('');?>"></a>
						</li>
						<?php } ?>
						<?php foreach ($results as $result) {?>
						<li>
							<a href="<?php base_url('');?>"></a>
						</li>
						<?php } ?>
						<?php foreach ($results as $result) {?>
						<li>
							<a href="<?php base_url('');?>"></a>
						</li>
						<?php } ?>
						<?php foreach ($results as $result) {?>
						<li>
							<a href="<?php base_url('');?>"></a>
						</li>
						<?php } ?>
						<?php foreach ($results as $result) {?>
						<li>
							<a href="<?php base_url('');?>"></a>
						</li>
						<?php }*/ ?>
					</ul>
					<?php } else { ?>
				   <h3><?php echo $this->lang->line('no_search');?></h3>
					<?php } ?>
				</div>


			</div>
			
            <div class="clear"></div>

        </div> <!-- content end -->
    </div>
</div>