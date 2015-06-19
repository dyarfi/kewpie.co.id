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
		
		//if (!$search) {
			//$this->session->set_flashdata('message',$this->lang->line('no_search'));
			//redirect(base_url());
		//}
		
		$search = $this->input->post('search');
		
		//$sql1	= "SELECT * FROM `tbl_translations` WHERE subject LIKE '%".$this->db->escape_like_str($search)."%'";
		
		//$query  = $this->db->query($sql1);
		//print_r($query->result_object());
		//print_r($search);
		
		//$return['products'] = $this->Content->search('products',array('subject'=>$search,'text'=>$search));
		
		$return['product_categories'] = $this->Content->search('product_categories',array('subject'=>$search,'text'=>$search));
		
		$return['product_recipes'] = $this->Content->search('product_recipes',array('subject'=>$search,'text'=>$search,'attribute'=>$search,'messages'=>$search));
		
		$return['pages'] = $this->Content->search('pages',array('subject'=>$search,'text'=>$search));
		
		$return['page_menus'] = $this->Content->search('page_menus',array('subject'=>$search,'text'=>$search));
		
		$return['news'] = $this->Content->search('news',array('subject'=>$search,'text'=>$search));
		
		$data['results'] = $return;
		
		$data['search'] = $search;
		
		//print_r($data['results']);
		/*
		// Set content
		//,synopsis,text,attribute,messages 
		$data1  = $this->Content->find('product_recipes',
				array(
					'subject LIKE'=>$search,
					'status'=>'publish')
				);
		
		$data2  = $this->Content->find('product_recipes',
				array(
					'synopsis LIKE'=>$search,
					'status'=>'publish')
				);
		*/
		
		//print_r($query);
		//print_r($data2);
		
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('recipe');
		
		// Set main template
		$data['main'] = 'search';
		
		// Load site template
		$this->load->view('template/public/template', $this->load->vars($data));		
		
	}
	
}

/* End of file search.php */
/* Location: ./application/controllers/search.php */