<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php if(!empty($pages)) { ?>
<div class="submenu"></div>
<div class="container item-submenu">
	<ul class="list-inline">
	<?php 
        $i = 1;
        $c = count($pages);
        foreach ($pages as $page) { ?>
		<li<?php echo ($i == $c) ? '' :' class="divider-img"';?>><a href="<?php echo base_url('read/page/detail/'.$page['url']);?>"><?php echo $page['subject'];?></a></li>
		<?php 
        $i++;
        } ?>
	</ul>
</div>
<?php } ?>
<div class="kewpie-main-body">
    <div class="kewpie-main-body">
        <div class="container">          
			<div class="container-fluid content-inside">
				<div class="col-xs-6 col-sm-6 col-md-6">
				   <h2><?php echo $page_detail[1]['subject'];?></h2>
				   <?php if ($page_detail[1]['media']) { ?>
					<div class="img-thumbnail"><img class="img-responsive" src="<?php echo base_url('uploads/pages/'.$page_detail[1]['media']);?>"/>
					</div>
					<?php } else if ($page_detail[1]['synopsis']) {?>
					<div><?php echo $page_detail[1]['synopsis'];?></div>
					<?php } ?>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
				   <?php echo $page_detail[1]['text'];?>
				</div>
			</div>
			<br/><br/><br/><br/>
            <div class="clear"></div>
        </div>
    </div>
</div>