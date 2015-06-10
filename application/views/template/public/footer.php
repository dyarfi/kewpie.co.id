<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!-- FOOTER -->
<div class="footer">
    <div class="footer-bg">
        <div class="container-fluid">
        <div class="copyright col-xs-9 col-sm-9 col-md-9"><?php echo $this->lang->line('copyright');?></div>
        <div class="icons col-md-3 col-sm-3 col-xs-3">
            <?php if ($this->facebook->value) { ?>
                <a href="<?php echo $this->facebook->value;?>" title="<?php echo $this->facebook->alias;?>"><img src="<?php echo base_url();?>assets/public/img/icon-fb.png" alt="link facebook"></a>
            <?php  } 
            if ($this->twitter->value) { ?>    
                <a href="<?php echo $this->twitter->value;?>" title="<?php echo $this->twitter->alias;?>"><img src="<?php echo base_url();?>assets/public/img/icon-twitter.png" alt="link twitter"></a>
            <?php  } 
            if ($this->email_info->value) { ?>    
                <a href="mailto:<?php echo $this->email_info->value;?>?subject=Hello" target="_blank" title="<?php echo $this->email_info->alias;?>"><img src="<?php echo base_url();?>assets/public/img/icon-rss.png" alt="link rss"></a>
            <?php  }
            if ($this->gplus->value) { ?>
                <a href="<?php echo $this->gplus->value;?>" title="<?php echo $this->gplus->alias;?>"><img src="<?php echo base_url();?>assets/public/img/icon-gplus.png" alt="link gplus"></a>
            <?php  } ?>
        </div>
        </div>
    </div>
</div>