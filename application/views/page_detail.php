<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="submenu"></div>
<div class="container item-submenu">
	<ul class="list-inline">
	<?php foreach ($pages as $page) { ?>
		<li>
			<a href="<?php echo base_url('read/page/detail/'.$page['url']);?>"><?php echo $page['subject'];?></a>
		</li>    
	<?php } ?>
	</ul>
</div>
<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
           
			<div class="container-fluid content-inside">
				<div class="col-xs-6 col-sm-6 col-md-6">
				   <h2><?php echo $page_detail[1]['subject'];?></h2>
				   <?php if ($page_detail[1]['media']) { ?>
					<div class="img-thumbnail"><img class="img-responsive" src="<?php echo base_url('uploads/pages/'.$page_detail[1]['media']);?>"/>
					</div>
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