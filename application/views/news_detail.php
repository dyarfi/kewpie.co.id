<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body content-inside"> <!-- for changing background purpose -->
    <div class="kewpie-main-body"> <!-- for changing background purpose -->
        <div class="container"> <!-- content start -->
            <!--<div class="details">-->
            <div class="row-fluid">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <?php if ($news['media']) { ?> 
                        <div class="img-thumbnail"><img class="img-responsive" src="<?php echo base_url('uploads/news/'.$news['media']);?>" alt="<?php echo $news['subject'];?>"/></div>
                    <?php } ?>
                    <p><?php echo $news['subject'];?></p>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <h2><?php echo $news['subject'];?></h2>
                    <h4><?php echo date('d-M-Y',$news['added']);?></h4>
                    <p><?php echo ($news['synopsis']) ? '<div>'.$news['synopsis'].'</div>' : '';?></p>
                    <p><?php echo ($news['text']) ? $news['text'] : '';?></p>
                </div>
                <div class="clear"></div>
            </div>
        </div> <!-- content end -->
    </div>
</div>	