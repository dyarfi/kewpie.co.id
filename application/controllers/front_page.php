<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_Page extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('admin/Users');
		$this->load->model('admin/UserProfiles');
		
		// Load page models
        $this->load->model('page/Pages');
		
	}
	
    public function category($detail='') {
		
		// Set main template
		$data['main'] = 'category';
				
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('page');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
	public function view($detail='') {
        
        // Set detail 
        $field = $this->Content->findIdByUrl('page_menus', $detail);
        
        // Set data from menu category
        $data['category'] = $this->Content->find('page_menus',array('id'=>$field->field_id));
        
        // Set data from pages
        $data['pages'] = $this->Content->find('pages',array('menu_id'=>$field->field_id),array('added'=>'ASC'));
        
        // Set main template
		$data['main'] = 'page';
		
		// Set site title page with module menu
		$data['page_title'] = lang('page') . ($field->subject ? ' - '.$field->subject : '');
		
		// Set meta description for html tags in template
		$this->meta_description = $this->clean_tags($field->text);
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function detail($detail='') {
        
        // Set detail 
        $field = $this->Content->findIdByUrl('pages', $detail);
        
        // Set data from menu category
        $data['page_detail'] = $this->Content->find('pages',array('id'=>$field->field_id));
        
        // Set data from pages
        $data['pages'] = $this->Content->find('pages',array('menu_id'=>$this->Pages->getPage($field->field_id)->menu_id));
        
        // Set main template
		$data['main']       = 'page_detail';
        
		// Set site title page with module menu
		$data['page_title'] =  lang('page') . ($field->subject ? ' - '.$field->subject : '');
		
		// Set meta description for html tags in template
		$this->meta_description = $this->clean_tags($field->text);
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */