<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
		<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
			<div class="container"> <!-- content start -->
				<div class="title-page"><img src="<?php echo base_url();?>assets/public/img/page-berita-terbaru.png" alt="title page"></div>
				<div class="row">
                    
                    <?php foreach ($news as $row) {?>
                    <div class="col-xs-3 col-sm-3 col-md-3">
					  <div class="thumbnail">
						<img src="<?php echo base_url('uploads/news/'.$row['media']);?>" alt="">
						  <div class="caption">
							<h4><?php echo $row['subject'];?></h4>
							<?php echo strip_tags($row['text']);?>
                            <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
						</div>
					  </div>
					</div>
                    <?php } ?>
                    
				 </div><!-- End row -->
				
			</div> <!-- content end -->
		</div>
	