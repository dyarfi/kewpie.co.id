<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PageMenu extends Admin_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -  
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
	
    public function __construct() {
            parent::__construct();

            // Load Pages model
            $this->load->model('Pages');

            // Load PageMenu model
            $this->load->model('PageMenus');

            // Load Grocery CRUD
            $this->load->library('grocery_CRUD');
      
    }
	
    public function index() {
        try {
	    // Set our Grocery CRUD
            $crud = new grocery_CRUD();
            // Set tables
            $crud->set_table('tbl_page_menus');
            // Set CRUD subject
            $crud->set_subject('Page Menu');                            
            // The fields that user will see on add and edit form
			$crud->fields('subject','synopsis','text','type','position','media','status','added','modified');
            // Set column
            $crud->columns('subject','text','position','media','gallery','status','added','modified');	
			
            // Unsets the fields at the add form.
			$crud->unset_add_fields('parent_id','sub_level','has_child','user_id','order','count','is_system','added','modified');
			// Unsets the fields at the edit form.
			$crud->unset_edit_fields('parent_id','sub_level','has_child','user_id','order','count','is_system','added','modified');
			
            // Set custom field display for position
            $crud->field_type('position','dropdown',array('top'=>'Top','bottom'=>'Bottom'));  
            // Changes the default field type
			$crud->field_type('url', 'hidden');
			$crud->field_type('added', 'hidden');
			$crud->field_type('modified', 'hidden');
            
            if ($this->Languages->getActiveCount() > 1) {
				// Default column of multilanguage
				$crud->columns('subject','synopsis','text','media','gallery','status','added','modified','translate');			
				// Callback_column translate
				$crud->callback_column('translate',array($this,'_callback_translate'));
			}
            
            // This callback escapes the default auto field output of the field name at the add form
            $crud->callback_add_field('added',array($this,'_callback_time_added'));
			// This callback escapes the default auto field output of the field name at the edit form
			$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
            
            // Set callback column
            $crud->callback_column('added',array($this,'_callback_time'));
			$crud->callback_column('modified',array($this,'_callback_time'));  
            
            // Set callback before database set
            $crud->callback_before_insert(array($this,'_callback_url'));
            $crud->callback_before_update(array($this,'_callback_url'));
            
             // Callback Column 
            $crud->callback_column('gallery',array($this,'_callback_gallery'));
            
			// Sets the required fields of add and edit fields
			$crud->required_fields('subject','position','status');   
            
            // Unset action 
            $crud->unset_delete();
            
            // Set upload field
            $crud->set_field_upload('media','uploads/pagemenus');
            
            $this->load($crud, 'menu');
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }
    
    function detail($operation = '',$field_id='',$lang_id='') {
		
		/* Just make sure that you don't want to redirect him at the page_lang page but at pages */
		if($operation == '' || $operation == 'list') {
		   redirect(strtolower(__CLASS__).'/index');
		}
		
		$page_menu = $this->module_menu .' : '. $this->Languages->getLanguage($lang_id)->name;
		
		$crud = new grocery_CRUD();
	
		// Set query select
		$crud->where('field_id',$field_id);
		$crud->where('lang_id',$lang_id);
        $crud->where('table','tbl_page_menus');
		
		// Set tables
        $crud->set_table('tbl_translations');
		
		// Set subject
		$crud->set_subject('Translation ' . $page_menu);  
		
		// The fields that user will see on add and edit form
		$crud->fields('table','field_id','lang_id','subject','url','synopsis','text','added','modified');
		
		// Changes the default field type
		$crud->field_type('table', 'hidden');
		$crud->field_type('url', 'hidden');
		$crud->field_type('added', 'hidden');
		$crud->field_type('modified', 'hidden');
		$crud->field_type('field_id', 'hidden', $id);
		$crud->field_type('lang_id', 'hidden', $lang_id);
		
		// This callback escapes the default auto field output of the field name at the add form
		$crud->callback_add_field('added',array($this,'_callback_time_added'));
		// This callback escapes the default auto field output of the field name at the edit form
		$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
		
		// This callback escapes the default auto column output of the field name at the add form
		$crud->callback_column('added',array($this,'_callback_time'));
		$crud->callback_column('modified',array($this,'_callback_time')); 
        
		// Set callback before database set
		$crud->callback_before_insert(array($this,'_callback_url'));
		$crud->callback_before_update(array($this,'_callback_url'));
        
		// Sets the required fields of add and edit fields
		$crud->required_fields('subject','text','status'); 
		
		$state = $crud->getState();
		$state_info = $crud->getStateInfo();
        
		$crud->unset_list();
		
		//print_r($crud);
		//$this->template->build('admin/grocery_crud', $crud->render());
	
		$this->load($crud, 'menu_detail');
		
	}
    
    function translate() {
		
		// URI segment for menu id
		$field_id = $this->uri->segment(4);
		// URI segment for language id
		$lang_id = $this->uri->segment(5);
		
		$this->db->where('lang_id',$lang_id);
		$this->db->where('field_id',$field_id);
        $this->db->where('table','tbl_page_menus');
		
		$page_db = $this->db->get('tbl_translations');

		if($page_db->num_rows() == 0)
		{
            $object['table']	= 'tbl_page_menus';
			$object['lang_id']	= $lang_id;
			$object['field_id']	= $field_id;
			$object['user_id']  = $this->user->id;            
			$object['added']	= time();
			$object['status']  	= 0;
			$this->db->insert('tbl_translations',$object);
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$this->db->insert_id());
		}
		else
		{
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$page_db->row()->id);
		}
		
	}
    
    public function _callback_gallery ($value,$row) {
        if ($row->id) { 
            return '<a href="'.base_url(ADMIN).'/page_gallery/index/'.$row->id.'" class="fancyframe iframe"><span class="btn btn-default btn-mini glyphicon glyphicon-camera"></span></a>'; 
        } else { 
            return '-';
        }
    }
   
    public function _callback_update_detail($post, $primary_key) {
		// Unset status first and change to 1
		unset($post['status']);
		$post['status']  	= 1;
		// Return update database
		return $this->db->update('tbl_translations',$post,array('id' => $primary_key));
	}
    
  	public function _callback_url($value, $primary_key) {
        // Set url_title() function to set readable text
        $value['url'] = url_title($value['subject'],'-',true);
        // Return update database
        return $value; 
    }
    
    public function _callback_translate ($value, $row) {
		$links = '';
		foreach($this->Languages->getAllLanguage(array('status'=>1))as $lang) {
			// Find other than the default languages
			if($lang->default != 1) {
				$links .= '<a href="'.base_url(ADMIN).'/pagemenu/translate/'.$row->id.'/'.$lang->id.'" class="fancyframe iframe" title="'.$lang->name.'"><img src="'.base_url('assets/admin/img/flags/'.$lang->prefix.'.png').'"/></a>&nbsp;';
			}
		}
		return $links;
	}
	
    public function _callback_time ($value, $row) {
		return empty($value) ? '-' : date('D, d-M-Y',$value);
    }
    
    public function _callback_time_added ($value, $row) {
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="added">';
    }
    
    public function _callback_time_modified ($value, $row) {
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="modified">';
    }
	
	public function _callback_field_id ($value, $row) {
		return '<input type="hidden" maxlength="50" value="" name="field_id">';
    }
	
	public function _callback_lang_id ($value, $row) {
		return '<input type="hidden" maxlength="50" value="" name="lang_id">';
    }
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set Page Title 
            $output->page_title = 'Page Menu Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}

/* End of file page.php */
/* Location: ./application/module/page/controllers/pagemenu.php */