<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Recipe extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('product/Products');
					
	}
	
    public function index() {
        
        // Set data from menu category
        $data['favorited']   = $this->Content->find('product_recipes',array('status'=>'publish','favorited'=>'yes'),array('id'=>'DESC'),1);
        
        // Set data from menu category
        $data['recipes']    = $this->Content->find('product_recipes',array('status'=>'publish'));
        
        // Set main template
		$data['main']       = 'recipe';
        
		// Set site title page with module menu
		$data['page_title'] = 'Recipe';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
        
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
        
        // Set main template
		$data['main'] = 'recipe_detail';
        
		// Set site title page with module menu
		$data['page_title'] = 'Recipe';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */