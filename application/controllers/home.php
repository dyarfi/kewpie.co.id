<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends Public_Controller {

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
		
		//$page_menus = $this->Content->find('page_menus',array('status'=>'publish'));
		
		//print_r($page_menus);
	}
	
	public function index() {
		
		// Set home
		$data['home_welcome']  = $this->Content->find('pages',array('status'=>'publish','menu_id'=>1,'id'=>1));
        
        // Set home product
		$data['home_product']  = $this->Content->find('page_menus',array('status'=>'publish','id'=>2));
        
        // Set home product categories == 'food-services'
		$data['home_food_service']  = $this->Content->find('product_categories',array('status'=>'publish','id'=>4));
        
        // Set page product
        $data['products']  = $this->Content->find('products',array('status'=>'publish','media !='=>''),array('added' => 'DESC'));
        
		// Set site title page with module menu
		$data['page_title'] = $this->config->item('developer_name') .' | '. $this->Settings->getByParameter('title_default')->value;
		
		// Set facebook link data
		$data['facebook']	= $this->Settings->getByParameter('socmed_facebook');
				
		// Set twitter link data
		$data['twitter']	= $this->Settings->getByParameter('socmed_twitter');
		
		// Set google link data
		$data['google']		= $this->Settings->getByParameter('socmed_gplus');
		
		// Set contact email info data
		$data['email_info']	= $this->Settings->getByParameter('email_info');		
		
		// Set contactus address info data
		$data['contactus_address']	= $this->Settings->getByParameter('contactus_address');		
		
		// Set main template
		$data['main'] = 'home';
		
		// Load site template
		$this->load->view('template/public/template', $this->load->vars($data));		
		
	}
	
	public function menu ($menu='') {
		
		// Set menu data
		$data['menu'] = $menu;
		
		// Set pages data
		$data['pages'] = $this->Pagemenus->getPagesByMenu($menu);
		print_r($data['pages']);
		//exit('asdf');
		// Set main template
		$data['main'] = 'home';
		
		// Load admin template
		$this->load->view('page', $this->load->vars($data));
	}
	
	public function page ($menu='',$page='') {
		
		// Set menu data
		$data['menu'] = $menu;
		
		// Set pages data
		$data['page'] = $this->Pages->getPageByName($page);
		
		//print_r($data['pages']);
		
		// Set main template
		//$data['main'] = 'page';
		
		// Load admin template
		$this->load->view('page_detail', $this->load->vars($data));
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */