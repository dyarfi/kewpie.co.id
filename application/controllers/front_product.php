<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Product extends Public_Controller {

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
        
        // Set main template
		$data['main'] = 'product';
        
        // Set main data
		$data['product_category'] = $this->Content->find('product_categories',array('status'=>'publish'),array('added'=>'DESC'));
        
        // Set site title page with module menu
		$data['page_title'] = $data['product_category'][1]['subject'];
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function detail($detail='') {
        
        // Set main template
		$data['main'] = 'product_detail';
        
		// Set site title page with module menu
		$data['page_title'] = lang('cal_su');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */