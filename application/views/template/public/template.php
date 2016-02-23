<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.48, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="google" content="notranslate"/>
<meta name="msvalidate.01" content="A0A21A55BF8A5297D8AA00CEF63298E3" />
<meta name="description" content="<?php echo $this->meta_description ? $this->meta_description : lang('meta_description');?>"/>
<meta name="keywords" content="<?php echo lang('meta_keywords');?>"/>
<meta name="author" content="Kewpie Indonesia" />
<title><?php echo ($page_title) ? $page_title .' | '. config_item('developer_name') : ''; ?></title>
<link rel="alternate" href="<?php echo base_url('language/'.$this->Languages->getByUrl(config_item('language'))->url.'?rel='.current_url());?>" hreflang="x-default"/>
<link rel="alternate" href="<?php echo base_url('language/'.$this->Languages->getByUrl(config_item('language'))->url.'?rel='.current_url());?>" hreflang="<?php echo $this->Languages->getByUrl(config_item('language'))->prefix;?>"/>
<link rel="shortcut icon" href="<?php echo base_url();?>favicon.ico" />
<link href="<?php echo base_url();?>assets/public/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<?php echo base_url();?>assets/public/css/fonts.css" rel="stylesheet" type="text/css">
<link href="<?php echo base_url();?>assets/public/css/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
<link href="<?php echo base_url();?>assets/public/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<?php echo base_url();?>assets/public/css/animate.css" rel="stylesheet" />
<link href="<?php echo base_url();?>assets/public/css/effect.css" rel="stylesheet" />
<link href="<?php echo base_url();?>assets/public/css/style.css" rel="stylesheet">
<script type="text/javascript">var base_URL = '<?php echo base_url();?>';</script>
<script src="<?php echo base_url();?>assets/public/js/useragents.js"></script>
<!--[if IE]><link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/public/css/ie-style.css" /><![endif]-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<?php $this->load->view('template/public/header'); ?>
<div id="navigation">
	<?php $this->load->view('template/public/navigation'); ?>
</div>
<div class="messageFlash">
	<?php $this->load->view('flashdata'); ?>
</div>
<div class="content">
	<?php $this->load->view($main); ?>
</div>
<?php $this->load->view('template/public/footer'); ?>
<!-- GA -->
<script> 
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ 
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), 
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) 
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); 
  ga('create', 'UA-42489917-16', 'auto'); 
  ga('send', 'pageview'); 
</script> 
<!-- Core JavaScript Files -->
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.easing.min.js" type="text/javascript"></script>	
<script src="<?php echo base_url();?>assets/public/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/TweenMax.min.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/bootstrapValidator/js/bootstrapValidator.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.superscrollorama.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.scrollTo.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/wow.min.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/carousel-swipe.js" type="text/javascript"></script>
<script src="<?php echo base_url();?>assets/public/js/gmap3.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url();?>assets/public/js/style.js" type="text/javascript"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<?php echo base_url();?>assets/public/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>