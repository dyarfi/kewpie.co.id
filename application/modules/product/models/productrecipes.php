<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Products
class ProductRecipes Extends CI_Model {
    
	// Table name for this model
	protected $table = 'product_recipes';
	
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
                $insert_data	= FALSE;
                
                $sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				. '`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, '
				. '`product_id` INT(11) UNSIGNED NULL, '
				. '`name` VARCHAR(255) NULL, '
				. '`subject` VARCHAR(255) NULL, '
                . '`url` VARCHAR(255) NULL, '
				. '`synopsis` TEXT NULL, '
				. '`text` TEXT NULL, '
                . '`media` VARCHAR(255) NULL, '
                . '`background` VARCHAR(255) NULL, '
                . '`cover` VARCHAR(255) NULL, '
				. '`attribute` TEXT NULL, '
				. '`allow_comment` TINYINT(1) NULL, '
                . '`favorited` ENUM( \'yes\', \'no\') NULL, '
                . '`served` VARCHAR(18) NULL, '
                . '`time` VARCHAR(18) NULL, '
				. '`tags` TEXT NULL, '
				. '`order` TINYINT(3) NULL, '
				. '`user_id` TINYINT(3) NULL , '
				. '`count` INT(11) NULL , '	
				. '`status` ENUM( \'publish\', \'unpublish\', \'deleted\' ) NULL DEFAULT \'publish\', '
				. '`added` INT(11) NULL, '
				. '`modified` INT(11) NULL, '
				. 'INDEX (`product_id`, `name`, `allow_comment`, `order`) '
				. ') ENGINE=MYISAM DEFAULT CHARSET=utf8;';

		$this->db->query($sql);
		
        if(!$this->db->query('SELECT * FROM `'.$this->table.'` LIMIT 0 , 1;'))
			$insert_data	= TRUE;
		
		if ($insert_data) {
			$sql	= '';

			$this->db->query($sql);
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
	
	public function getRecipe($id = null){
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
	
	public function getRecipeByName($name = null){
		if(!empty($name)){
			$data = array();
			$options = array('name' => $name,'status'=>'publish');
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}	
	
	public function getAllRecipe($admin=null){
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
	
	public function getAllRecipeByMenu($menu=null){
		$data = array();
		$this->db->order_by('added');
		$this->db->where('product_id',$menu);
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
	
	public function setRecipe($object=null){
		
		// Set Recipe data
		$data = array(			
			'product_id'       => $object['product_id'],
			'name'			=> $object['name'],
			'subject'		=> $object['subject'],
			'synopsis'		=> $object['synopsis'],
			'text'			=> $object['text'],
            'media'			=> $object['media'],
            'background'    => $object['background'],
			'cover'			=> $object['cover'],
			'attribute'		=> $object['attribute'],
			'publish_date'	=> $object['publish_date'],
			'unpublish_date' => $object['unpublish_date'],
			'allow_comment' => $object['allow_comment'],
			'tags'			=> $object['tags'],
			'order'			=> $object['order'],
			'user_id'		=> $object['user_id'],
			'count'			=> $object['count'],
			'status'		=> $object['status'],
			'added'			=> time(),	
			'modified'		=> $object['status']
		);
		
		// Insert Recipe data
		$this->db->insert($this->table, $data);
		
		// Return last insert id primary
		$insert_id = $this->db->insert_id();
			
		// Return last insert id primary
		return $insert_id;
		
	}	
	
	// Delete page
	public function deleteRecipe($id) {
		
		// Check page id
		$this->db->where('id', $id);
		
		// Delete page form database
		return $this->db->delete($this->table);		
	}	
}
