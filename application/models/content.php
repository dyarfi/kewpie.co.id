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
        $this->load->model('language/Languages');
        
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
				$_fields ='';
				foreach ($where_cond as $field => $value) {
					$operator	= '=';

					if (strpos($field, ' ') != 0)
						list($field, $operator)	= explode(' ', $field);


					if (in_array($operator, $operators)) {
						$field		= '`'.$field.'`';
						
						if($operator == 'LIKE') {
							$_fields = TRUE;
							$buffers[]	= $field.' '.$operator.' \'%'.$value.'%\'';
						} else if ($operator == 'IN' && is_array($value)) {
							$buffers[]	= $field.' '.$operator.' (\''.implode('\', \'', $value).'\')';
						} else {
							$buffers[]	= $field.' '.$operator.' \''.$value.'\'';
						}
						
					} else if (is_numeric($field)) {
						$buffers[]	= $value;
					} else {
						$buffers[]	= $field.' '.$operator.' \''.$value.'\'';
					}
				}
				
				$where_cond	= ($_fields) ? implode(' OR ', $buffers) : implode(' AND ', $buffers);

			} else {

				$where_cond	= $where_cond;
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
        $key = array();
        foreach ($rows->result_array() as $row) {        	
            $row['field_id'] = $row['id'];
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
		$language = $this->Languages->getByUrl($this->lang_prefix);
		
		return $language;
	
	}
		
	public function search_bak($table='',$query=array()){
		
		/** Set table detail **/
        $tbl = $this->db->dbprefix($table);
		
		$default_lang_id = $this->Languages->getDefault()->id;
		$current_lang_id = $this->getDBLanguage()->id;
						
		$c = count($query);
		if ($c > 1) {
			$this->db->or_like($query,'both');	
		} else {
			$this->db->like($query,'both');
		}		
		
		if ($current_lang_id !== $default_lang_id) {
			
			$this->db->where('table', $tbl);
			$this->db->where('lang_id',$current_lang_id);
			
			$tbl = 'tbl_translations';
		}
		
		//print_r($tbl);
			
		$query = $this->db->get($tbl);
		
		print_r( $this->db->last_query() );
		exit;
		return $query->result();
		
	}

	public function search($table='',$query=array()){
				
		return $this->find($table,$query);
		
	}

	public function sitemap ($xml='') {

		// Page menus 		
		$menus 			= $this->find('page_menus',['status'=>'publish'],['id'=>'asc']);
		// Inside kewpie sitemap
		$inside_kewpie 	= $this->find('page_menus',['status'=>'publish','id'=>3],['id'=>'asc']);
		// About sitemap
		$_about_kewpie 	= $this->find('pages',['status'=>'publish','menu_id'=>5],['id'=>'desc']);		
		$about_kewpie 	= array();
		foreach ($_about_kewpie as $about) {
			$about_kewpie[$about['subject']] = base_url('read/page/'.$about['url']);
		}
		// Product sitemap
		$_products 	= $this->find('products',['status'=>'publish'],['id'=>'asc']);
		$products 	= array();
		foreach ($_products as $product) {
			$products[$product['subject']] = base_url('read/product/'.$product['url']);
		}
		// Recipes sitemap
		$_recipes 	= $this->find('product_recipes',['status'=>'publish'],['id'=>'desc']);
		$recipes 	= array();
		foreach ($_recipes as $recipe) {
			$recipes[$recipe['subject']] = base_url('read/recipe/'.$recipe['url']);
		}
		// News sitemap
		$_news 		= $this->find('news',['status'=>'publish'],['id'=>'desc']);
		$news 	= array();
		foreach ($_news as $new) {
			$news[$new['subject']] 	= base_url('read/news/detail/'.$new['url']);
		}
		// Set the array of sitemap
		$sitemap 	= array();
		$sitemap_xml = array();
		
		foreach ($menus as $menu) {	
			
			// Set for home url
			$menu['url'] = ($menu['url'] == 'home' || $menu['url'] == 'beranda') ? '' : $menu['url'];	

			// Check if request is xml or not
			if ($xml !== 1) {						
				// Flex the menu for product
				if ($menu['url'] == 'produk-kami' || $menu['url'] == 'our-product') {
					$sitemap[$menu['subject']][base_url('read/product')] = $products;
				}
				// Flex the menu inside kewpie
				if ($menu['url'] == 'di-dalam-kewpie' || $menu['url'] == 'inside-kewpie') {
					$sitemap[$menu['subject']] = base_url('read/page/'.$menu['url']);
				}
				// Flex the menu recipes
				if ($menu['url'] == 'resep' || $menu['url'] == 'recipes') {
					$sitemap[$menu['subject']][base_url('read/recipe')] = $recipes;
				}
				// Flex the pages about kewpie
				if ($menu['url'] == 'tentang-kewpie' || $menu['url'] == 'about-kewpie') {
					$sitemap[$menu['subject']][base_url('read/page/'.$menu['url'])] = $about_kewpie;
				}
				// Flex the menu latest news
				if ($menu['url'] == 'berita-terbaru' || $menu['url'] == 'latest-news') {
					$sitemap[$menu['subject']][base_url('read/news/'.$menu['url'])] = $news;
				}		

			} else {

				// Flex the menu for product
				if ($menu['url'] == 'produk-kami' || $menu['url'] == 'our-product') {
					$sitemap[] = base_url('read/product');
				}
				// Flex the menu inside kewpie
				if ($menu['url'] == 'di-dalam-kewpie' || $menu['url'] == 'inside-kewpie') {
					$sitemap[] = base_url('read/page/'.$menu['url']);
				}
				// Flex the menu recipes
				if ($menu['url'] == 'resep' || $menu['url'] == 'recipes') {
					$sitemap[] = base_url('read/recipe');
				}
				// Flex the pages about kewpie
				if ($menu['url'] == 'tentang-kewpie' || $menu['url'] == 'about-kewpie') {
					$sitemap[] = base_url('read/page/'.$menu['url']);
				}
				// Flex the menu latest news
				if ($menu['url'] == 'berita-terbaru' || $menu['url'] == 'latest-news') {
					$sitemap[] = base_url('read/news');
				}
				// Set menu
				$sitemap = $sitemap;		

			}	
		}

		// Set merge from menu to content
		$sitemap = array_merge($sitemap,array_values($products));
		$sitemap = array_merge($sitemap,array_values($recipes));
		$sitemap = array_merge($sitemap,array_values($about_kewpie));		
		$sitemap = array_merge($sitemap,array_values($news));
		
		return $sitemap;
	}

}