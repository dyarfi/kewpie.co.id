<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="kewpie-main-body"> <!-- for changing background purpose -->
    <div class="container"> <!-- content start -->
        <div class="title-page"><div class="title-news"><h3><?php echo $this->lang->line('latest_news');?></h3></div></div>
        <div class="row">                    
            <?php foreach ($news as $row) {?>
            <div class="col-xs-3 col-sm-3 col-md-3">
              <div class="thumbnail">
                <img src="<?php echo base_url('uploads/news/thumb__288x173'.$row['media']);?>" alt="">
                  <div class="caption">
                    <h4><a href="<?php echo base_url('read/news/detail/'.$row['url']);?>" title="<?php echo $row['subject'];?>"><?php echo character_limiter($row['subject'],35,'');?></a></h4>
                    <?php echo word_limiter(strip_tags($row['text']),20);?>&nbsp;&nbsp;<a href="<?php echo base_url('read/news/detail/'.$row['url']);?>" class="text-danger" title="<?php echo $row['subject'];?>" role="button"><strong>(<?php echo $this->lang->line('read_more');?>)</strong></a>
                </div>
              </div>
            </div>
            <?php } ?>                    
        </div><!-- End row -->				
    </div> <!-- content end -->
</div>
	