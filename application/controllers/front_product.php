<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Product extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('admin/Users');
		$this->load->model('admin/UserProfiles');
					
	}
    
    public function index() {
        
        // Set main template
        $product_categories         = $this->Content->findIdByUrl('product_categories',$detail);
        $data['product_categories'] = $product_categories;
        
        // Set main template
        $products                   = $this->Content->find('products',array('category_id'=>$product_categories->id),array('added'=>'DESC'));
		$data['products']           = $products;
        //print_r($products);

        // Set main template
		$data['main']               = 'product';
        
        // Set site title page with module menu
		$data['page_title'] = $product_categories->subject;
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
	public function view($detail='') {
        
         // Set main template
        $product_categories         = $this->Content->findIdByUrl('product_categories',$detail);
        $data['product_categories'] = $product_categories;
        
        // Set main template
        $products                   = $this->Content->find('products',array('category_id'=>$product_categories->id),array('added'=>'DESC'));
		$data['products']           = $products;
        //print_r($products);

        // Set main template
		$data['main']               = 'product';
        
        // Set site title page with module menu
		$data['page_title'] = $product_categories->subject;
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function category($detail='') {
		
         // Set main template
        $product_categories         = $this->Content->findIdByUrl('product_categories',$detail);
        $data['product_categories'] = $product_categories;
        
        
        $data['product_category']   = $this->Content->find('product_categories',array('id'=>$product_categories->field_id));
        
        // Set main data products
        $products                   = $this->Content->find('products',array('category_id'=>$product_categories->field_id),array('added'=>'DESC'));
		
        // Set temporary array
        $temp = array();
        // Get product wit recommended recipes
        foreach ($products as $product => $val) {
            $val['recipes'] = $this->Content->find('product_recipes',array('product_id IN' => array($val['id'])),array('added'=>'DESC'));
            $temp[] = $val;
        }
        $products = $temp;
        
        // Set data products
        $data['products']           = $products;
        
        // Set main template
		$data['main']               = 'product_category';
        
        // Set site title page with module menu
		$data['page_title'] = $product_categories->subject;
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function detail($detail='') {
        
        // Set main template
        $product_categories         = $this->Content->find('product_categories',array('url'=>$detail));
		$data['product_categories'] = $product_categories;
        
        // Set main template
        $products                   = $this->Content->find('products',array('category_id'=>$product_categories[1]['id']));
		$data['products']           = $products;

        
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