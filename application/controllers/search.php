<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Search extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load User related model in admin module
		$this->load->model('admin/Users');
		$this->load->model('admin/UserProfiles');
		
		// Load Language list
		$this->load->model('admin/Languages');
		// Load Setting data
		$this->load->model('admin/Settings');
		
		// Load User related model in admin module
		$this->load->model('page/Pagemenus');
		$this->load->model('page/Pages');
        
        // Load Product MOdels
        $this->load->model('product/ProductCategories');
		$this->load->model('product/Products');

        //$this->load->model('product/ProductImages');
				
		//$page_menus = $this->Content->find('page_menus',array('status'=>'publish'));
		
		//print_r($page_menus);
	}
	
	public function index() {

		$search = addslashes(trim(strip_tags($this->input->post('search'))));

		if (!$search) {
			//$this->session->set_flashdata('message',$this->lang->line('no_search'));
			redirect(base_url());
		}				
		
		$return['product_categories'] = $this->Content->find('product_categories',"status = 'publish' AND subject LIKE '%{$search}%' OR text LIKE '%{$search}%'");
		
		$return['product_recipes'] = $this->Content->find('product_recipes',"status = 'publish' AND subject LIKE '%{$search}%' OR text LIKE '%{$search}%' OR attribute LIKE '%{$search}%' OR messages LIKE '%{$search}%'");
		
		$return['pages'] = $this->Content->find('pages',"status = 'publish' AND subject LIKE '%{$search}%' OR text LIKE '%{$search}%'");
		
		$return['page_menus'] = $this->Content->find('page_menus',"status = 'publish' AND subject LIKE '%{$search}%' OR text LIKE '%{$search}%'");
		
		$return['news'] = $this->Content->find('news',"status = 'publish' AND subject LIKE '%{$search}%' OR synopsis LIKE '%{$search}%' OR text LIKE '%{$search}%'");
		
		$data['results'] = $return;
		
		$data['search'] = stripslashes($search);
					
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('recipe');
		
		// Set main template
		$data['main'] = 'search';
		
		// Load site template
		$this->load->view('template/public/template', $this->load->vars($data));		
		
	}
	
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */