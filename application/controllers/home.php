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
        
        // Load Product MOdels
        $this->load->model('product/ProductCategories');
		$this->load->model('product/Products');
        $this->load->model('product/ProductImages');
				
	}
	
	public function index() {
		
		// Set home
		$data['home_welcome']  = $this->Content->find('pages',['status'=>'publish','menu_id'=>1,'id'=>1]);
        
        // Set home product
		$data['home_product']  = $this->Content->find('page_menus',['status'=>'publish','id'=>2]);
        
        // Set home product categories == 'food-services'
		$data['home_food_service']  = $this->Content->find('product_categories',['status'=>'publish','url'=>'food-service']);
        
        // Set home product recipe favorite
		$data['home_recipe_favorite']  = $this->Content->find('product_recipes',['status'=>'publish','favorited'=>'yes'],['added'=>'DESC','order' => 'ASC'],2);
		//$data['home_recipe_favorite']  = $this->Content->find('product_recipes',['status'=>'publish','favorited'=>'yes'],['modified' => 'ASC','id' => 'DESC'],2);        
        
        // Set home product recipes favorite
		$data['home_recipes']  = $this->Content->find('product_recipes',['status'=>'publish','in_front'=>'yes'],['in_front_order' => 'ASC'],4);
               
        // Set home kewpie origin
		$data['home_origin']  = $this->Content->find('page_menus',['status'=>'publish','id'=>3],'',1);

		// Set home news with latest three news
		$data['home_news']  = $this->Content->find('news',['status'=>'publish'],['added'=>'desc'],10);       
		//print_r($data['home_news']);
        
        // Set page product category
        $product_category = $this->Content->find('product_categories',['status'=>'publish','color !='=>''],['order' => 'ASC'],4);
        
        $temp = array();
        $b = 1;
        foreach ($product_category as $category) {
            //print_r($category);
            $category['products']  = $this->Content->find('products',['category_id'=>$category['field_id'],'in_front'=>'no','media !='=>''],'',14);
            $category['front_img'] = $this->Content->find('products',['category_id'=>$category['field_id'],'in_front'=>'yes','media !='=>''],'',1);
            $temp[$b] = $category;
            $b++;
        }
        $_product_category = $temp;
        
        // Set data product category
        $data['product_category'] = $_product_category;
                
		// Set site title page with module menu
		$data['page_title'] = $this->meta_description;
		
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