<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=0, user-scalable=no" />
	<meta name="google" content="notranslate" />
	<title><?php echo ($page_title) ? $page_title .' | '. config_item('developer_name') : ''; ?></title>
	<link rel="shortcut icon" href="favicon.ico" />
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url();?>assets/public/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url();?>assets/public/css/fonts.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url();?>assets/public/css/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css">
	
    <!-- Fonts -->
    <link href="<?php echo base_url();?>assets/public/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url();?>assets/public/css/animate.css" rel="stylesheet" />
	<link href="<?php echo base_url();?>assets/public/css/effect.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="<?php echo base_url();?>assets/public/css/style.css" rel="stylesheet">
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<script type="text/javascript">
		var base_URL = '<?php echo base_url();?>';
	</script>
    
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-default" class="scrollblock">
		
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
	
	
	<!-- Core JavaScript Files -->
    <script src="<?php echo base_url();?>assets/public/js/jquery.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>assets/public/js/jquery.easing.min.js" type="text/javascript"></script>	
	<script src="<?php echo base_url();?>assets/public/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>assets/public/js/TweenMax.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/bootstrapValidator/js/bootstrapValidator.js" type="text/javascript"></script>
    <script src="<?php echo base_url();?>assets/public/js/jquery.superscrollorama.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/jquery.scrollTo.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/wow.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/jquery.fancybox.pack.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/jquery.vide.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/parallax.min.js" type="text/javascript"></script>
	<script src="<?=base_url();?>assets/public/js/imagesloaded.pkgd.min.js" type="text/javascript"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url();?>assets/public/js/style.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/public/js/custom.js" type="text/javascript"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo base_url();?>assets/public/js/ie10-viewport-bug-workaround.js"></script>
	
</body>
</html>