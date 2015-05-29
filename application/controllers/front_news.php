<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_News extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('admin/Users');
		$this->load->model('admin/UserProfiles');
					
	}
	
    public function category($detail='') {
		
		// Set main template
		$data['main'] = 'category';
				
		// Set site title page with module menu
		$data['page_title'] = 'User';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
	public function view($detail='') {
        
        // Set detail 
        $field = $this->Content->findIdByUrl('page_menus', $detail);
        
        // Set data from menu category
        $data['category'] = $this->Content->find('page_menus',array('id'=>$field->field_id));
        
        // Set data from news
        $data['news'] = $this->Content->find('news',array('status'=>'publish'));
        
        // Set main template
		$data['main'] = 'news';
        
		// Set site title page with module menu
		$data['page_title'] = 'News';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */