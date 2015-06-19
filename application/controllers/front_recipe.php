<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Recipe extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('product/Products');
        $this->load->model('product/ProductCategories');
        $this->load->model('product/ProductRecipes');
        $this->load->model('product/ProductRecipeImages');

					
	}
	
    public function index() {
        
        // Set data from menu category
        $data['favorited']   = $this->Content->find('product_recipes',array('status'=>'publish','favorited'=>'yes'),array('modified'=>'ASC'),1);
        
        // Set data from menu category
        $data['recipes']    = $this->Content->find('product_recipes',array('status'=>'publish'));
        
        // Set main template
		$data['main']       = 'recipe';
        
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('recipe');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
        
    }
    
    public function category($detail='') {
		
		// Set main template
		$data['main'] = 'category';
				
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('recipe');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
	public function view($detail='') {
        
        // Set detail recipe
        $field  = $this->Content->findIdByUrl('product_recipes', $detail);
        $_field = $this->Content->find('product_recipes',array('id'=>$field->field_id));
        
        // Set data images from recipe
        $data['recipe']  = $_field[1];
        
        // Set data Similiar Recipes
        $data['recipes'] = $this->Content->find('product_recipes',array('id !='=>$field->field_id,'product_id IN'=>array($_field[1]['product_id'])),array('subject'=>'ASC','added'=>'DESC'),6);
       
        // Set data images from recipe
        $data['images'] = $this->ProductRecipeImages->getAllImageByRecipe($field->field_id);
        
        // Set main template
		$data['main'] = 'recipe_detail';
        
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('recipe') .' - ' . $_field[1]['subject'];
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file front_recipe.php */
/* Location: ./application/controllers/front_recipe.php */