<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Content
class Content extends CI_Model {

	var $language = '';
	var $table = '';
	var $primary_key = '';
	
	public function __construct(){
		// Call the Model constructor
		parent::__construct();
		
		// Set database library		
		$this->db = $this->load->database('default', true);		
		
		// Set inflector library	
		$this->load->helper('inflector');
		$this->load->helper('array');
		
		// Get language default
		$this->language = config_item('language');

		
	}
	
	public function getContent($table='',$where='',$order='',$limit='') {
	
		// Set default table
		$this->table = $this->db->dbprefix($table);
		
		// Set where query
		if ($where) {
			$this->db->where($where);
		}
		// Set order data
		if ($order) {
			$this->db->order_by($order);
		}
		// Set limit query
		if ($query) {
			$this->db->limit($query);
		}
		
		$result = $this->db->get($this->table);
		$results = $result->result_array();
		
		//print_r(self::getDBLanguage());
		$content = self::getDetails($results);
		
		//print_r($content);
		//exit();
		
		
		
		$data['title']  = 'DATA';
		$data['text']	= 'TEXT';
		
		
		$data1['title']  = 'DATA1';
		$data1['text']	= 'TEXT1';
		
		
		$basket = array_replace_recursive($data, $data1);
		
		
		//print_r($basket);
		
		
		/*
		$data = array();
		foreach($objects as $object) {
			$data
		}
		*/
		
		// print_r($objects->result_object());
		
		// $title = $this->getTitle();
				
		// print_r($this->table);
		
		//return $objects->result_object();
		
	}
	
	private function getTitle($table='',$id='') {
	
		// Set default table
		$this->table	= $this->db->dbprefix($table);
		
		// Set detail language
		$this->detail = $this->table . '_details'; 
		
		// $content = $this->
				
		//print_r($this->detail);
		
	}
	
	private function getDetails($results='') {
		
		// Get table language details
		$this->detail = singular($this->table) . '_details'; 
		
		$ids = element('id',$results);
		foreach ($results as $result) {
			//print_r($result['id']);
		
			$ids[] = element('id',$result);
			//print_r($result);
		}
		
				
		
		// $content = $this->
				
		//print_r($this->detail);
		
	}
	
	public function getDBLanguage() {
		
		//$lang  = config_item('language');
		$language = $this->Languages->getByUrl($this->language);
		
		return $language;
	
	}
	
}