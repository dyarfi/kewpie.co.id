<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Content
class Content extends CI_Model {

	var $language = '';
	var $table = '';
	var $primary_key = '';
	
	public function __construct(){
	    // Call the Model constructor
	    parent::__construct();

	    // Set default db
	    $this->db = $this->load->database('default', true);		
		
		// Set inflector library	
		$this->load->helper('inflector');
		$this->load->helper('array');
		
        // Set language model
        //$this->load->model('Languages');
		
        
		// Get language default
		$this->lang_prefix = $this->session->userdata('language');
        
        // Get language id
		$this->lang_data = $this->Languages->getByUrl($this->lang_prefix);

	}
        
	public function find ($table='',$where_cond = '', $order_by = '', $limit = '', $offset = '') {
        
        /** Set table detail **/
        $tbl = $this->db->dbprefix($table);
        
        /** Set sql default **/
        $sql = '';
        
        /** Build where query **/
		if ($where_cond != '') {
            
            if (is_array($where_cond) && count($where_cond) != 0) {
				$buffers	= array();

				$operators	= array('LIKE',
									'IN',
									'!=',
									'>=',
									'<=',
									'>',
									'<',
									'=');

				foreach ($where_cond as $field => $value) {
					$operator	= '=';

					if (strpos($field, ' ') != 0)
						list($field, $operator)	= explode(' ', $field);

					if (in_array($operator, $operators)) {
						$field		= '`'.$field.'`';

						if ($operator == 'IN' && is_array($value))
							$buffers[]	= $field.' '.$operator.' (\''.implode('\', \'', $value).'\')';
						else
							$buffers[]	= $field.' '.$operator.' \''.$value.'\'';
					} else if (is_numeric($field)) {
						$buffers[]	= $value;
					} else {
						$buffers[]	= $field.' '.$operator.' \''.$value.'\'';
					}
				}

				$where_cond	= implode(' AND ', $buffers);
			}
		}
		
		$sql_order = ''; 
		if ($order_by != '') {
			$sql_order = 'ORDER BY '; 
			$i 	   = 1;
			foreach ($order_by as $order => $val) {
				$split = ($i > 1) ? ', ' : ''; 
				$sql_order .= ' '. $split .' `'. $order.'` '.$val.' ';
				$i++;
			}
			$order_by  = $sql_order;
		}
		
        $sql_limit = ''; 
		if ($limit != '' && $offset != '') {
			$offset    = $offset . ','; 
			$sql_limit = 'LIMIT '. $offset . $limit; 
		}
		else if ($limit != '') {
			$sql_limit = 'LIMIT '. $limit; 
		}
		$limit = $sql_limit;
        
		
		if ($where_cond != '') {
			$sql = 'SELECT * FROM `'.$tbl.'` WHERE '. $where_cond . $order_by . $limit;
		}
		else {
			$sql = 'SELECT * FROM `'.$tbl.'`' . $order_by . $limit;
        }
        
        // Main table
        $rows  = $this->db->query($sql);
        
        // Set data result
        $returns = array();
        $details = array();
        
        $p=1;
        foreach ($rows->result_array() as $row) {
            $key = $this->db->query('SELECT * FROM `tbl_translations` WHERE `table` = \''.$tbl.'\' AND `lang_id` = '.$this->lang_data->id.' AND `field_id` = '.$row['id'].' LIMIT 1;')->result_array();
            $details[$p] = $key[0];
            $returns[$p] = $row;
            $p++;
		}
        
		return ($this->lang_data->is_system == 1) ? $returns : array_replace_recursive($returns, $details);
	}
	
    public function findIdByUrl($table='',$url='') {
        
        // Set query for translations data
        $options = array('table' =>$this->db->dbprefix($table),'url'=>$url);
        $this->db->where($options,1);
        
        // Set default table data
        $data = array();
        $Q = $this->db->get('tbl_translations');
       
        if ($Q->num_rows() > 0){
			foreach ($Q->result_object() as $row) {
				$data = $row;
			}    
	    }
        // If translation is empty and check for main table data
        if (!$data) {
            // Set query
            $options = array('url'=>$url);
            $this->db->where($options,1);
            $Q = $this->db->get($this->db->dbprefix($table));
            if ($Q->num_rows() > 0){
                foreach ($Q->result_object() as $row) {
                    // Set return for field id
                    $row->field_id = $row->id;
                    $data = $row;
                }    
            }
        }
        // Free query result
        $Q->free_result();
        // Return data
        return $data;
        
    }
    
	public function getDBLanguage() {
		
		//$lang  = config_item('language');
		$language = $this->Languages->getByUrl($this->language);
		
		return $language;
	
	}
	
}