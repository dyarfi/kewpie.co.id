<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
           
			<div class="container-fluid content-inside">
				<div class="col-xs-6 col-sm-6 col-md-6">
				   <h2><?php echo $this->lang->line('search');?></h2>
				   <?php if ($results) { ?>
					<ul>
						<?php foreach ($results as $result) {?>
						<li><a href="<?php base_url();?>"></a>
						</li>
						<?php } ?>
					</ul>
					<?php } else { ?>
				   <h3><?php echo $this->lang->line('no_search');?></h3>
					<?php } ?>
				</div>

				<div class="col-xs-6 col-sm-6 col-md-6">
				   <?php echo $page_detail[1]['text'];?>
				</div>
			</div>
            <div class="clear"></div>

        </div> <!-- content end -->
    </div>
</div>