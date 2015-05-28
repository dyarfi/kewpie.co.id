<?php (defined('BASEPATH')) OR exit('No direct script access allowed');

class Public_Controller extends MY_Controller {
	
	var	$language ='';
    var	$languages ='';
    var $menus = '';
	
    function __construct() {
		
        parent::__construct();
        
        // Get libraries from system
		// $this->load->library('Template');

		// Load site models
		$this->load->model('admin/Configurations');
		$this->load->model('admin/Settings');
		$this->load->model('admin/ServerLogs');
		$this->load->model('admin/Languages');
        // Site content
        $this->load->model('Content');
		
		// Set site status default
		self::getSiteStatus();
		
		// Set site user access logs
		self::setAccessLog(1);
		
		if($this->config->item('site_open') === FALSE)
        {
            show_error('Sorry the site is shut for now.');
        }
	
        if( $this->agent->is_mobile() )
        {
            /*
             * Use my template library to set a theme for your staff
             *     http://philsturgeon.co.uk/code/codeigniter-template
             */
            //$this->template->set_theme('mobile');
		} else {
			// $this->template->set_theme('default');
		}

		
		// Get language cookie
		//$language = get_cookie('language');
        $language = $this->session->userdata('language');
        
		// Check if cookie language if already set
		if (!$language) {
		
			// Set expired time for about a month
			$time_expired = 7200 + 60 * 60 * 24 * 30;
			
			// Set language from database 
			$this->config->set_item('language', $this->Languages->getDefault()->url);
			
			// Set cookie from default variables
			//$this->input->set_cookie("language", config_item('language'), $time_expired);
            $this->session->set_userdata("language", config_item('language'), $time_expired);
		
		} else {
		
			// Set language from database 
			$this->config->set_item('language', $language);
			
		}
        
        // Set Language list
		$this->languages	= $this->Languages->getAllLanguage(array('status'=>'1'));
		
        // Set menus
		$this->menus      = $this->Content->find('page_menus',array('url !='=>'home','status'=>'publish'));
        
		//$this->template->theme  		= 'default';
		//$this->template->title  		= 'Page Title';
		//$this->template->meta_data  	= array();

		//$this->template->layout     	= 'template/public/site_template';

		//print_r($this->template);
		
		//print_r(config_item('language'));

    }
	
	protected function getSiteStatus() {
		
		// Get value from tbl_configurations for maintenance
		if ($this->Configurations->getConfiguration_ByParam('maintenance')) {
			
			// Set config value for default
			$this->config->set_item('site_open', FALSE);
			
		}
		
	}
	
	protected function setAccessLog($public='') {
		
		// Set user agents and platform
		$user_agents['user_agent']	= $this->agent->agent;
		$user_agents['platform']	= $this->agent->platform;
		$user_agents['browser']		= $this->agent->browser;
		
		/*
		if ($public) {
			// Set ServerLog data
			$object = array(
				'session_id'	=> $this->session->userdata('session_id'),
				'url'			=> base_url(uri_string()),
				'user_id'		=> @$object['user_id'],	
				'status_code'	=> $status_code[http_response_code()],	
				'bytes_served'	=> @$object['bytes_served'],	
				'total_time'	=> $this->benchmark->marker['total_execution_time_start'],	
				'ip_address'	=> $this->input->ip_address,	
				'geolocation'	=> '',	
				'http_code'		=> http_response_code(),	
				'referrer'		=> $this->agent->is_referral() ? $this->agent->referrer() : '',			
				'user_agent'	=> json_encode($user_agents),
				'is_mobile'		=> $this->agent->is_mobile,
				'status'		=> 1,
				'added'			=> time()
			);
		}*/
		//echo '<pre>';
		//print_r($this->output->set_status_header());
		//exit;
		//echo '</pre>';
		// Get value from tbl_configurations for maintenance
		//if ($this->ServerLogs->setServerLog($object)) { }
	}
	
}