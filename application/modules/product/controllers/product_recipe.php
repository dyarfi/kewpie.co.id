<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_Recipe extends Admin_Controller {

    /**
     * Index Product for this controller.
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
			
            // Load Products model
            $this->load->model('Products');
            $this->load->model('ProductRecipes');

            // Load ProductMenu model
            $this->load->model('ProductCategories');

            // Load Grocery CRUD
            $this->load->library('grocery_CRUD');
			      
    }
	
    public function index() {
        try {
            // Set our Grocery CRUD
            $crud = new grocery_CRUD();
            // Set tables
            $crud->set_table('tbl_product_recipes');
            // Set CRUD subject
            $crud->set_subject('Product Recipe');                   
            // Set table relation
            $crud->set_relation('product_id','tbl_products','subject');
            // Set columns
            $crud->columns('subject','product_id','synopsis','text','gallery','background','status','added','modified');			
			// The fields that user will see on add and edit form
			$crud->fields('subject','url','product_id','background','synopsis','text','messages','cover','media','video','attribute','favorited','served','time','status');
            // Set column display 
            $crud->display_as('product_id','Product');
            $crud->display_as('media','Image');
            $crud->display_as('video','Video (embed code):');
			$crud->display_as('attribute','Tips');
            $crud->display_as('messages','Instructions');
			$crud->display_as('cover','Instruction Cover');
            $crud->display_as('text','Ingredients');
			// Changes the default field type
            //$crud->field_type('video', 'text');
            $crud->field_type('served', 'integer');
            $crud->field_type('time', 'integer');
			$crud->field_type('url', 'hidden');
			$crud->field_type('added', 'hidden');
			$crud->field_type('modified', 'hidden');
			
			if ($this->Languages->getActiveCount() > 1) {
				// Default column of multilanguage
				$crud->columns('subject','product_id','synopsis','text','attribute','favorited','gallery','media','status','translate');			
				// Callback_column translate
				$crud->callback_column('translate',array($this,'_callback_translate'));
			}
			
			// This callback escapes the default auto field output of the field name at the add and edit form
			$crud->callback_field('video',array($this,'_callback_video'));
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
			
            // Set callback after upload
            $crud->callback_after_upload(array($this,'_callback_after_upload'));
 
			// Sets the required fields of add and edit fields
			$crud->required_fields('subject','text','in_front','media','status'); 
			 
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
			} else {
				// GC List Method
				/*
					// Get languages from db
					foreach($this->Languages->getAllLanguage() as $lang) {
						//default is the default language
						if($lang->default != 1) {
							$crud->add_action($lang->name, base_url('assets/admin/img/flags/'.$lang->prefix.'.png'),'product/insert_and_redirect/'.$lang->id);
						}
					}
				 * 
				 */
			}
            
			// Unset action 
            $crud->unset_delete();
            
            // Set upload field
            $crud->set_field_upload('cover','uploads/recipes');
            $crud->set_field_upload('background','uploads/recipes');
            $crud->set_field_upload('media','uploads/recipes');
            
            $this->load($crud, 'product_recipe');
            
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }

	function detail($operation = '',$field_id='',$lang_id='') {
		
		/* Just make sure that you don't want to redirect him at the product_lang product but at products */
		if($operation == '' || $operation == 'list') {
		   redirect(strtolower(__CLASS__).'/index');
		}
		
		$product_menu = $this->module_menu .' : '. $this->Languages->getLanguage($lang_id)->name;
		
		$crud = new grocery_CRUD();
	
		// Set query select
		$crud->where('field_id',$field_id);
		$crud->where('lang_id',$lang_id);
        $crud->where('table',$table);
		
		// Set tables
        $crud->set_table('tbl_translations');
		
		// Set subject
		$crud->set_subject('Translation ' . $product_menu);  
		
		// The fields that user will see on add and edit form
		$crud->fields('table','field_id','lang_id','subject','url','synopsis','text','messages','attribute','added','modified');
		
        $crud->display_as('attribute','Tips');
        $crud->display_as('text','Ingredients');
        $crud->display_as('messages','Instructions');
        
		// Changes the default field type
        $crud->field_type('table', 'hidden');
		$crud->field_type('added', 'hidden');
		$crud->field_type('modified', 'hidden');
        $crud->field_type('url', 'hidden');
		$crud->field_type('field_id', 'hidden', $id);
        $crud->field_type('lang_id', 'hidden', $lang_id);
		
		// This callback escapes the default auto field output of the field name at the add form
		$crud->callback_add_field('added',array($this,'_callback_time_added'));
		// This callback escapes the default auto field output of the field name at the edit form
		$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
		
		// Set callback before database set
		$crud->callback_before_insert(array($this,'_callback_url'));
		$crud->callback_before_update(array($this,'_callback_url'));
		$crud->callback_before_update(array($this,'_callback_modified'));
        
		// Sets the required fields of add and edit fields
		$crud->required_fields('subject','text','status'); 
		
		$state = $crud->getState();
		$state_info = $crud->getStateInfo();

		$crud->unset_list();
		
		$this->load($crud, 'product_detail');
		
	}
	
	function translate() {
		
		// URI segment for product id
		$field_id = $this->uri->segment(4);
		// URI segment for language id
		$lang_id = $this->uri->segment(5);
		
		$this->db->where('lang_id',$lang_id);
		$this->db->where('field_id',$field_id);
        $this->db->where('table','tbl_product_recipes');
		
		$product_db = $this->db->get('tbl_translations');

		if($product_db->num_rows() == 0)
		{
            $object['table']	= 'tbl_product_recipes';
			$object['lang_id']	= $lang_id;
			$object['field_id']	= $field_id;
			$object['user_id']  = $this->user->id;
            $object['added']	= time();
			$object['status']  	= 1;
			$this->db->insert('tbl_translations', $object);
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$this->db->insert_id());
		}
		else
		{
			redirect(ADMIN.strtolower(__CLASS__).'/detail/edit/'.$product_db->row()->id);
		}
		
	}
	
    public function _callback_after_upload($uploader_response,$field_info, $files_to_upload) {
        $this->load->library('image_moo');

        //Is only one file uploaded so it ok to use it with $uploader_response[0].
        $file_uploaded  = $field_info->upload_path.'/'.$uploader_response[0]->name; 
        
        $thumbnail[1]      = $field_info->upload_path.'/thumb__200x200'.$uploader_response[0]->name;
        $thumbnail[2]      = $field_info->upload_path.'/thumb__304x182'.$uploader_response[0]->name;
        $thumbnail[3]      = $field_info->upload_path.'/thumb__385x232'.$uploader_response[0]->name;
        
        $this->image_moo
        ->load($file_uploaded)
        ->save($file_uploaded,true)
        ->resize_crop(200,200)
        ->save($thumbnail[1])
        ->resize_crop(304,182)
        ->save($thumbnail[2])
        ->resize_crop(385,232)
        ->save($thumbnail[3]);
         
        if ($this->image_moo->error) print $this->image_moo->display_errors(); else return true;
        
    }
    
    public function _callback_gallery ($value,$row) {
        if ($row->id) { 
            return '<a href="'.base_url(ADMIN).'/product_gallery/index/'.$row->id.'" class="fancyframe iframe"><span class="btn btn-default btn-mini glyphicon glyphicon-camera"></span></a>'; 
        } else { 
            return '-';
        }
    }
    
    public function _callback_url_detail($value, $primary_key) {
        // Set url_title() function to set readable text
        $value['url'] = url_title($value['subject'],'-',true);
        // Return update database
        return $value;
    }
	
	public function _callback_url($value, $primary_key) {
        // Set url_title() function to set readable text
        $value['url'] = url_title($value['subject'],'-',true);
        // Return update database
        return $value; 
    }
	
	public function _callback_modified($value, $primary_key) {
        // Return update database
        return time(); 
    }
	
	public function _callback_translate ($value, $row) {
		$links = '';
		foreach($this->Languages->getAllLanguage(array('status'=>1))as $lang) {
			// Find other than the default languages
			if($lang->default != 1) {
				$links .= '<a href="'.base_url(ADMIN).'/product_recipe/translate/'.$row->id.'/'.$lang->id.'" class="fancyframe iframe" title="'.$lang->name.'"><img src="'.base_url('assets/admin/img/flags/'.$lang->prefix.'.png').'"/></a>&nbsp;';
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
    
    public function _callback_total_image($value, $row) {
        $total = $this->user_model->total_image_submitted($row->participant_id);
        return $total;
    }
    
	public function _callback_update_detail($post, $primary_key) {
		// Unset status first and change to 1
        unset($post['status']);
		$post['status']  	= 1;
		// Return update database
		return $this->db->update('tbl_translations',$post,array('id' => $primary_key));
	}
	
	function _callback_video($value = '', $primary_key = null) {
		preg_match('/src="([^"]+)"/', $value, $match);
		$url = $match[1];
		$return  = '<textarea name="video" style="width:462px">'.$value.'</textarea>';
		$return .= $value ? '<a href="'.$url.'" class="fancybox-video iframe"> Preview</a>' : '';
		return $return;
	}
	
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set Product Title 
            $output->product_title = 'Product Recipe Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}

/* End of file product.php */
/* Location: ./application/module/product/controllers/product.php */