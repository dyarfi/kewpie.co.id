<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="kewpie-main-body content-inside"> <!-- for cahnging background purpose -->
    <div class="kewpie-main-body"> <!-- for cahnging background purpose -->
        <div class="container"> <!-- content start -->	
            <div class="details">
                
                 <div class="details">
                    <div class="container">
                        <ul class="list-inline">
                        <?php foreach ($pages as $page) { ?>
                            <li class="bg-danger">
                                <a href="<?php echo base_url('read/page/detail/'.$page['url']);?>"><?php echo $page['subject'];?></a>
                            </li>    
                        <?php } ?>
                        </ul>
                    </div>    
                </div>
            
                <div class="col-xs-6 col-sm-6 col-md-6 tentang hidden">
                    <img class="img-ctr" src="<?php echo base_url();?>assets/public/img/items/tentang-1.jpg" alt="">
                    <img class="img-ctr" src="<?php echo base_url();?>assets/public/img/items/tentang-2.jpg" alt="">
                    <img class="img-tentang" src="<?php echo base_url();?>assets/public/img/items/tentang-3.jpg" alt="">
                    <img src="<?php echo base_url();?>assets/public/img/items/tentang-4.jpg" alt="">
                </div>
                
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <?php echo $page_detail[1]['text'];?>
                </div>
                <div class="clear"></div>
            </div>

        </div> <!-- content end -->
    </div>
</div>