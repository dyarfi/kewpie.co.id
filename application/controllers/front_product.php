<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Product extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('product/Products');
		$this->load->model('product/ProductCategories');
        $this->load->model('product/ProductRecipes');
        $this->load->model('product/ProductImages');
        			
	}
    
    public function index($detail='') {
        
        // Set recipes data
        //$data['recipes']            = $this->Content->find('product_recipes',array('status'=>'publish'));
        
        // Set product category data
        $data['product_category']    = $this->Content->find('product_categories',array('status'=>'publish'),array('added'=>'ASC'));
        
        // Set products data
        $_products                   = $this->Content->find('products',array('status'=>'publish','media !='=>''),array('added'=>'ASC'));
        // Set temporary array
        $temp = array();
        // Get product wit recommended recipes
        foreach ($_products as $product => $val) {
            $val['package'] = $this->ProductImages->getImageByFieldId($val['field_id']);
            $val['recipes'] = $this->Content->find('product_recipes',array('product_id IN' => array($val['field_id']),'status'=>'publish'),array('added'=>'DESC'));
            $temp[] = $val;
        }
        $products = $temp;
        
		// Set products data
		$data['products']           = $products;
        
        // Set main template
		$data['main']               = 'product';
        
        // Set site title page with module menu
		$data['page_title']         = $this->lang->line('product');
		
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
        
        // Set main template
		$data['main']               = 'product';
        
        // Set site title page with module menu
		$data['page_title']         = $this->lang->line('product') .' - '. $product_categories->subject;
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function category($detail='') {
		
        // Set main template
        $product_categories         = $this->Content->findIdByUrl('product_categories',$detail);
        $data['product_categories'] = $product_categories;
        
        // Set product category data
        $data['product_category']    = $this->Content->find('product_categories',array('status'=>'publish'),array('added'=>'ASC'));
        
        // Set main data products
        $_products                   = $this->Content->find('products',array('category_id'=>$product_categories->field_id,'status'=>'publish'),array('added'=>'DESC'));
	
        // Set temporary array
        $temp = array();
        
        // Get product with recommended recipes
        foreach ($_products as $product => $val) {
            $val['package'] = $this->ProductImages->getImageByFieldId($val['field_id']);
            $val['recipes'] = $this->Content->find('product_recipes',array('product_id IN' => array($val['field_id']),'status'=>'publish'),array('added'=>'DESC'));
            $temp[] = $val;
        }
        $products = $temp;
        //print_r($products);
        // Set data products
        $data['products']           = $products;
        
        // Set main template
		$data['main']               = 'product_category';
        
        // Set site title page with module menu
		$data['page_title'] = $this->lang->line('product') .' - '. $product_categories->subject;
		
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
		$data['main']               = 'product_detail';
        
		// Set site title page with module menu
		$data['page_title']         = $this->lang->line('product');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */