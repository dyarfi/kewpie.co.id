<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
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
<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
                
                 
            
                <div class="container-fluid content-inside">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                       <?php if ($category[1]['media']) { ?><img src="<?php echo base_url('uploads/pagemenus/'.$category[1]['media']);?>"/><?php } ?>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <?php echo $category[1]['text'];?>
                    </div>
                </div>    
                <div class="clear"></div>

        </div> <!-- content end -->
    </div>
</div>