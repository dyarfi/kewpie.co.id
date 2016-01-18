<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Front_News extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load user related model in admin module
		$this->load->model('admin/Users');
		$this->load->model('admin/UserProfiles');
					
	}
	
    public function index() {
        
         // Set detail 
        $field = $this->Content->findIdByUrl('page_menus', $detail);
        
        // Set data from menu category
        $data['category'] = $this->Content->find('page_menus',array('id'=>$field->field_id));
        
        // Set data from news
        $data['news'] = $this->Content->find('news',array('status'=>'publish'),array('added'=>'DESC'));
        
        // Set main template
		$data['main'] = 'news';
				
		// Set site title page with module menu
		$data['page_title'] = $this->lang->line('latest_news');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
    }
      
    public function category($detail='') {
		
		// Set main template
		$data['main'] = 'category';
				
		// Set site title page with module menu
		$data['page_title'] = lang('latest_news');
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
	public function view($detail='') {
        
        // Set detail 
        $field = $this->Content->findIdByUrl('page_menus', $detail);
        
        // Set data from menu category
        $data['category'] = $this->Content->find('page_menus',array('id'=>$field->field_id));
        
        // Set data from news
        $data['news'] = $this->Content->find('news',array('status'=>'publish'));
        
        // Set main template
		$data['main'] = 'news';
		
		// Set site title page with module menu
		$data['page_title'] =  lang('latest_news') . ($field->subject ? ' - '.$field->subject : '');
		
		// Set meta description for html tags in template
		$this->meta_description = $this->clean_tags($field->text);
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function detail($detail='') {
        
        // Set detail 
        $field = $this->Content->findIdByUrl('news', $detail);
        
        // Set data from menu category
        $news         = $this->Content->find('news',array('id'=>$field->field_id,'status'=>'publish'));
        $data['news'] = $news[1];
        
        // Set main template
		$data['main'] = 'news_detail';
        
		// Set site title page with module menu
		$data['page_title'] =  lang('latest_news') . ($field->subject ? ' - '.$field->subject : '');
		
		// Set meta description for html tags in template
		$this->meta_description = $this->clean_tags($field->text);
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */