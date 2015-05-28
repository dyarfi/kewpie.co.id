<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="kewpie-main-body"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
                
                 <div class="details">
                    <div class="container">
                        <ul class="list-inline">
                        <?php foreach ($pages as $page) { ?>
                            <li>
                                <a href="<?php echo base_url('read/page/detail/'.$page['url']);?>"><?php echo $page['subject'];?></a>
                            </li>    
                        <?php } ?>
                        </ul>
                    </div>    
                </div>
            
                <div class="col-xs-6 col-sm-6 col-md-6 tentang hidden">
                    <?php if ($page_detail[1]['media']) { ?><img src="<?php echo base_url('uploads/pages/'.$page_detail[1]['media']);?>"/><?php } ?>
                </div>
                
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <?php echo $page_detail[1]['text'];?>
                </div>
                <div class="clear"></div>

        </div> <!-- content end -->
    </div>
</div>