<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for PageMenus
class ProductCategories Extends CI_Model {
	
	// Table name for this model
	protected $table = 'product_categories';
	
	public function __construct(){
		// Call the Model constructor
		parent::__construct();
		
		$this->db = $this->load->database('default', true);	
		
		// Set default table
		$this->table = $this->db->dbprefix($this->table);
				
	}
	public function install() {
		
		$insert_data	= FALSE;

		if (!$this->db->table_exists($this->table))
                    $insert_data	= TRUE;
                
                $sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				. '`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY , '
				. '`parent_id` INT(11) UNSIGNED NULL , '
				. '`name` VARCHAR(128) NULL , '
				. '`subject` VARCHAR(255) NULL , '
				. '`description` TEXT NULL , '
				. '`url` VARCHAR(255) NULL , '		
				. '`media` VARCHAR(255) NULL , '
                . '`cover` VARCHAR(255) NULL , '	
				. '`color` VARCHAR(8) NULL , '	
				. '`position` VARCHAR(255) NULL , '
				. '`sub_level` TINYINT(3) NULL , '
				. '`order` TINYINT(3) NULL , '
				. '`is_system` TINYINT(3) NULL, '
				. '`has_child` TINYINT(3) NULL, '				
				. '`user_id` TINYINT(3) NULL , '
				. '`count` INT(11) NULL , '
				. '`status` ENUM( \'publish\', \'unpublish\', \'deleted\' ) NULL DEFAULT \'publish\', '
				. '`added` INT(0) NULL , '
				. '`modified` INT(0) NULL , '
				. 'INDEX (`parent_id`, `name`, `sub_level`, `order`, `status`) '
				. ') ENGINE=MYISAM DEFAULT CHARSET=utf8;';

		$this->db->query($sql);
		
        if(!$this->db->query('SELECT * FROM `'.$this->table.'` LIMIT 0 , 1;'))
                $insert_data	= TRUE;
		
		if ($insert_data) {
                $sql	= '';
                if($sql) $this->db->query($sql);
		}

		return $this->db->table_exists($this->table);
		
	}
	public function getCount($status = null){
		$data = array();
		$options = array('status' => $status);
		$this->db->where($options,1);
		$this->db->from($this->table);
		$data = $this->db->count_all_results();
		return $data;
	}
	
	public function getCategory($id = null){
		if(!empty($id)){
			$data = array();
			$options = array('id' => $id);
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}
	
	public function getCategoryByUrl($category=null){
		if(!empty($category)){
			$data = array();
			$options = array('url' => $category,'status' => 'publish');
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}
	
	public function getProductsByCategory($menu = null){
		if(!empty($menu)){
			$_menu = self::getCategory($menu);
			$data = array();
			$options = array('category_id' => $_menu->id,'status'=>'publish');
			$Q = $this->db->get_where('products',$options);
			if ($Q->num_rows() > 0){
				$data = $Q->result_object();
			}
			$Q->free_result();
			return $data;
		}
	}
    
    public function getAllProductCategory($options = null, $limit=''){
	    if(!empty($options)){
		$data = array();
		$options = ($options) ? $options : array();
		$Q = $this->db->get_where($this->table,$options,'2000');
		if ($Q->num_rows() > 0){
            foreach ($Q->result_array() as $row){
                $data[] = $row;
            }
		}
		$Q->free_result();
		return $data;
	    }
	}	
    
	public function getAllCategory($admin=null){
		$data = array();
		$this->db->order_by('added');
		$Q = $this->db->get($this->table);
			if ($Q->num_rows() > 0){
				//foreach ($Q->result_object() as $row){
					//$data[] = $row;
				//}
				$data = $Q->result_object();
			}
		$Q->free_result();
		return $data;
	}
	public function setProductCategory($object=null){
		
		// Set PageMenu data
		$data = array(
			'page_menuname'	=> $object['page_menuname'],
			'email'		=> $object['email'],			
			'password'	=> sha1($object['page_menuname'].$object['password']),	
			'group_id'	=> @$object['group_id'],			
			'added'		=> time(),	
			'status'	=> $object['status']
		);
		
		// Insert PageMenu data
		$this->db->insert($this->table, $data);
		
		// Return last insert id primary
		$insert_id = $this->db->insert_id();
			
		// Check if last is existed
		if ($insert_id) {
				
			// Unset previous data
			unset($data);
			
			// Set PageMenu Profile data
			$data = array(
					'page_menu_id'		=> $insert_id,
					'gender'		=> @$object['gender'],				
					'first_name'	=> @$object['first_name'],
					'last_name'		=> @$object['last_name'],				
					'birthday'		=> @$object['birthday'],
					'phone'			=> @$object['phone'],	
					'mobile_phone'	=> @$object['mobile_phone'],				
					'fax'			=> @$object['fax'],
					'website'		=> @$object['website'],
					'about'			=> @$object['about'],
					'division'		=> @$object['division'],
					'added'		=> time(),	
					'status'	=> 1);
			
			// Insert PageMenu Profile 
			$this->db->insert('page_menu_profiles', $data);
					
		}
			
		// Return last insert id primary
		return $insert_id;
		
	}	
	public function deleteCategory($id) {
		
		// Check page_menu id
		$this->db->where('id', $id);
		
		// Delete page_menu form database
		if ($this->db->delete($this->table)) {
			
			// Check page_menu profile id
			$this->db->where('page_menu_id', $id);
			
			// Delete page_menu profile form database		
			return $this->db->delete('page_menu_profiles');
			
		}		
	}	
}
