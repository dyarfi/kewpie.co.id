<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News extends Admin_Controller {

    /**
     * Index News for this controller.
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
			
            // Load News model
            //$this->load->model('News');

            // Load Grocery CRUD
            $this->load->library('grocery_CRUD');
			      
    }
	
    public function index() {
        try {
	    // Set our Grocery CRUD
            $crud = new grocery_CRUD();
            // Set tables
            $crud->set_table('tbl_news');
            // Set CRUD subject
            $crud->set_subject('News');                            
            // Set columns
            $crud->columns('subject','synopsis','text','gallery','status','added','modified');			
			// The fields that user will see on add and edit form
			$crud->fields('subject','url','synopsis','text','media','status','added','modified');
            // Changes the default field type
			$crud->field_type('url', 'hidden');
			$crud->field_type('added', 'hidden');
			$crud->field_type('modified', 'hidden');
			
			if ($this->Languages->getActiveCount() > 1) {
				// Default column of multilanguage
				$crud->columns('subject','synopsis','text'/*,'gallery'*/,'media','status','added','modified','translate');
				// Callback_column translate
				$crud->callback_column('translate',array($this,'_callback_translate'));
			}
			
			// This callback escapes the default auto field output of the field name at the add form
			$crud->callback_add_field('added',array($this,'_callback_time_added'));
			// This callback escapes the default auto field output of the field name at the edit form
			$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
			// This callback escapes the default auto field output of the field name at the add/edit form. 
			// $crud->callback_field('status',array($this,'_callback_dropdown'));
            
            // Callback Column 
            $crud->callback_column('gallery',array($this,'_callback_gallery'));
            
            // This callback escapes the default auto column output of the field name at the add form
			$crud->callback_column('added',array($this,'_callback_time'));
			$crud->callback_column('modified',array($this,'_callback_time'));  
			// Set callback before database set
            $crud->callback_before_insert(array($this,'_callback_url'));
            $crud->callback_before_update(array($this,'_callback_url'));
			
			// Sets the required fields of add and edit fields
			$crud->required_fields('subject','text','status'); 
            
            // Set callback after upload
            $crud->callback_after_upload(array($this,'_callback_after_upload'));
  
			$state = $crud->getState();
			$state_info = $crud->getStateInfo();
			//print_r($state);
			
			if ($state == 'add') {
				// GC Add Method
			} else if($state == 'edit') {
				// GC Edit Method. 
			} else if($state == 'detail') {
				// GC Edit Method. 
				// exit('asdf');
			} else if($state == 'read') {
				// GC Edit Method. 
				$crud->callback_field('media',array($this,'_callback_media'));
			} else {
				// GC List Method
				/*
					// Get languages from db
					foreach($this->Languages->getAllLanguage() as $lang) {
						//default is the default language
						if($lang->default != 1) {
							$crud->add_action($lang->name, base_url('assets/admin/img/flags/'.$lang->prefix.'.png'),'news/insert_and_redirect/'.$lang->id);
						}
					}
				 * 
				 */
			}
            
			// Unset action 
            //$crud->unset_delete();
            
            // Set upload field
            $crud->set_field_upload('media','uploads/news');
            
            $this->load($crud, 'news');
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }

	function detail($operation = '',$field_id='',$lang_id='') {
		
		/* Just make sure that you don't want to redirect him at the news_lang news but at newss */
		if($operation == '' || $operation == 'list') {
		   redirect(strtolower(__CLASS__).'/index');
		}
		
		$news_menu = $this->module_menu .' : '. $this->Languages->getLanguage($lang_id)->name;
		
		$crud = new grocery_CRUD();
	
		// Set query select
		$crud->where('field_id',$field_id);
		$crud->where('lang_id',$lang_id);
        $crud->where('table','tbl_news');
		
		// Set tables
        $crud->set_table('tbl_translations');
		
		// Set subject
		$crud->set_subject('Translation ' . $news_menu);  
		
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
		
		// Set callback before database set
		$crud->callback_before_insert(array($this,'_callback_url'));
		$crud->callback_before_update(array($this,'_callback_url'));
        
		// Sets the required fields of add and edit fields
		$crud->required_fields('subject','text','status'); 
		
		$state = $crud->getState();
		$state_info = $crud->getStateInfo();

		$crud->unset_list();
		
		$this->load($crud, 'news_detail');
		
	}
	
	function translate() {
		
		// URI segment for news id
		$field_id = $this->uri->segment(4);
		// URI segment for language id
		$lang_id = $this->uri->segment(5);
		
		$this->db->where('lang_id',$lang_id);
		$this->db->where('field_id',$field_id);
        $this->db->where('table','tbl_news');
		
		$news_db = $this->db->get('tbl_translations');

		if($news_db->num_rows() == 0)
		{
			$object['table']	= 'tbl_news';
            $object['lang_id']	= $lang_id;
			$object['field_id']	= $field_id;
			$object['user_id']  = $this->user->id;
            $object['added']	= time();
			$object['status']  	= 0;
			$this->db->insert('tbl_translations', $object);
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$this->db->insert_id());
		}
		else
		{
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$news_db->row()->id);
		}
		
	}
	
    public function _callback_after_upload($uploader_response,$field_info, $files_to_upload) {
        $this->load->library('image_moo');

        //Is only one file uploaded so it ok to use it with $uploader_response[0].
        $file_uploaded  = $field_info->upload_path.'/'.$uploader_response[0]->name; 
        
        $thumbnail[1]      = $field_info->upload_path.'/thumb__288x173'.$uploader_response[0]->name;
        $thumbnail[2]      = $field_info->upload_path.'/thumb__282x273'.$uploader_response[0]->name;
        $thumbnail[3]      = $field_info->upload_path.'/thumb__640x520'.$uploader_response[0]->name;
        
        $this->image_moo
        ->load($file_uploaded)
        ->save($file_uploaded,true)
        ->resize_crop(288,173)
        ->save($thumbnail[1])
        ->resize_crop(282,273)
        ->save($thumbnail[2])
        ->resize_crop(640,520)
        ->save($thumbnail[3]);
         
        if ($this->image_moo->error) print $this->image_moo->display_errors(); else return true;
        
    }
    
    public function _callback_translate ($value, $row) {
		$links = '';
		foreach($this->Languages->getAllLanguage(array('status'=>1))as $lang) {
			// Find other than the default languages
			if($lang->default != 1) {
				$links .= '<a href="'.base_url(ADMIN).'/news/translate/'.$row->id.'/'.$lang->id.'" class="fancyframe iframe" title="'.$lang->name.'"><img src="'.base_url('assets/admin/img/flags/'.$lang->prefix.'.png').'"/></a>&nbsp;';
			}
		}
		return $links;
	}
	
    public function _callback_update_detail($post, $primary_key) {
		// Unset status first and change to 1
        unset($post['status']);
		$post['status']  	= 1;
		// Return update database
		return $this->db->update('tbl_translations',$post,array('id' => $primary_key));
	}
    
    public function _callback_gallery ($value,$row) {
        if ($row->id) { 
            return '<a href="'.base_url(ADMIN).'/news_gallery/index/'.$row->id.'" class="fancyframe iframe"><span class="btn btn-default btn-mini glyphicon glyphicon-camera"></span></a>'; 
        } else { 
            return '-';
        }
    }
    
	public function _callback_media ($value,$row) {
	    if ($value) { 
            return '<a href="'.base_url('uploads/news').'/'.$value.'" class="fancyframe iframe"><img src="'.base_url('uploads/news').'/thumb__288x173'.$value.'"/></a>'; 
        } else { 
            return '-';
        }
    }
	
	public function _callback_url($value, $primary_key) {
        // Set url_title() function to set readable text
        $value['url'] = url_title($value['subject'],'-',true);
        // Return update database
        return $value; 
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
    
    public function _callback_total_image($value, $row) {
        $total = $this->user_model->total_image_submitted($row->participant_id);
        return $total;
    }
	
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set News Title 
            $output->news_title = 'News Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}

/* End of file news.php */
/* Location: ./application/module/news/controllers/news.php */