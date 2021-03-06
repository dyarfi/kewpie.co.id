<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
				
//======================== Administrator Access - start config - ========================//

$config['module_list.models']		= array('admin/ModuleLists');
$config['module_list.module_menu']	= array('modulelist/index'  => 'Modules List');
$config['module_list.module_function']	= array(
											'modulelist/edit'   => 'Edit Module',
											'modulelist/trash'	=> 'Delete User Permission'
											);

/* MODULE MENU 
 * 
 * Current MENU is only set to user and setting
 * Accessed by administrators only
 * 
 */

// Module Menu List
$config['admin_list.module_menu']	= array(
						'userhistory/index' => 'User Histories',
						'dashboard/index'   => 'Dashboard Panel',
						'user/index'	    => 'Users',
						'usergroup/index'   => 'User Groups',
						'language/index'    => 'Languages',
						'setting/index'	    => 'Settings'
						);
									
/* MODULE FUNCTION
 * 
 * Current FUNCTION is only set to user and setting
 * Accessed by administrators only
 */

// Module Function Menu List
$config['admin_list.module_function']	= array(
						'dashboard/add'	    => 'Add New Dashboard',
						'dashboard/view'    => 'View Dashboard',
						'dashboard/edit'    => 'Edit Dashboard',
						'dashboard/delete'  => 'Delete Dashboard',
						);

//======================== Administrator Access - end config - ========================//

// Default modules
$config['modulelist'] = array(	
	// Admin module
	'Admin' => array(
		// Admin Models list
		'models'	=> array(
					'admin/Users',
					'admin/UserProfiles',
					'admin/UserHistories',
					'admin/ModulePermissions',
					'admin/UserGroupPermissions',
					'admin/Languages',
					'admin/Settings',
					'admin/ServerLogs',
					'admin/Sessions'
					),
		// Admin module menus
		'module_menu'	=> array(
					// Dashboard index
					'dashboard/index'   => 'Dashboard Panel',
					// User index
					'user/index'	    => 'Users',
					// User Group index
					'usergroup/index'   => 'User Groups',
					// Language index
					'language/index'     => 'Languages',
					// Setting index
					'setting/index'     => 'Settings',
					// Server Log index
					'serverlog/index'   => 'Server Logs'
					),
		// Admin module functions
		'module_function'	=> array(
						// Dashboard functions
						'dashboard/add'	    => 'Add New Dashboard',
						'dashboard/view'    => 'View Dashboard',
						'dashboard/edit'    => 'Edit Dashboard',
						'dashboard/delete'  => 'Delete Dashboard',
						'dashboard/change'  => 'Change Dashboard Status',
						// User functions
						'user/add'	    => 'Add User',
						'user/view'	    => 'View User',
						'user/edit'	    => 'Edit User',
						'user/delete'	=> 'Delete User',
						'user/change'	=> 'Change User Status',
						'user/image'	=> 'Change User Image', /** Upload temp user image **/
						'user/upload'	=> 'Upload User Image', /** Upload user image **/
						// User Group functions
						'usergroup/add'	    => 'Add User Group',
						'usergroup/view'    => 'View User Group',
						'usergroup/edit'    => 'Edit User Group',
						'usergroup/delete'  => 'Delete User Group',
						'usergroup/change'  => 'Change User Group Status',
						// Language functions
						'language/add'	    => 'Add Language',
						'language/view'	    => 'View Language',
						'language/edit'	    => 'Edit Language',
						'language/delete'   => 'Delete Language',
						'language/change'   => 'Change Language Status',
						// Setting functions
						'setting/add'	    => 'Add Setting',
						'setting/view'	    => 'View Setting',
						'setting/edit'	    => 'Edit Setting',
						'setting/delete'    => 'Delete Setting',
						'setting/change'    => 'Change Setting Status',
						// Server Log functions
						'serverlog/view'	=> 'View Server Log',
						'serverlog/edit'	=> 'Edit Server Log',
						'serverlog/delete'	=> 'Delete Server Log',
						'serverlog/trash'	=> 'Trash Server Log'
						)
	),
	// Page module
	'Page' => array (
		// Page Models list
		'models'		=> array('page/Pages','page/PageMenus'),
		// Page module menus
		'module_menu'	=> array(
						'page/index'		=> 'Pages',
						'pagemenu/index'	=> 'Page Menus'),
		// Page module functions
		'module_function'	=> array(
						// Page functions
						'page/index/add'	=> 'Add Page',							
						'page/index/view'	=> 'View Page',
						'page/index/edit'	=> 'Edit Page',
						'page/index/delete'	=> 'Delete Page',
						'page/detail'		=> 'Detail Page',
						'page/translate'	=> 'Translate Page',
						'page/index/change'	=> 'Change Page Status',
						'page/index/export'	=> 'Export Page',
						'page/index/print'	=> 'Print Page',
            
                        // Pages Gallery functions
                        'page_gallery/index'        => 'Gallery',
                        'page_gallery/index/add'	=> 'Add Gallery',
                        'page_gallery/index/view'	=> 'View Gallery',			
                        'page_gallery/index/edit'	=> 'Edit Gallery',			
                        'page_gallery/index/delete' => 'Delete Gallery',
                        'page_gallery/index/change' => 'Change Gallery',
                        'page_gallery/index/export' => 'Export Gallery',
                        'page_gallery/index/print'	=> 'Print Gallery',
            
						// Page Menu functions
						'pagemenu/index/add'	=> 'Add Page Menu',
						'pagemenu/index/view'	=> 'View Page Menu',
						'pagemenu/index/edit'	=> 'Edit Page Menu',
						'pagemenu/index/delete'	=> 'Delete Page Menu',
                        'pagemenu/detail'		=> 'Detail Page Menu',
						'pagemenu/translate'	=> 'Translate Page Menu',
						'pagemenu/index/change'	=> 'Change Page Menu Status',
						'pagemenu/index/export'	=> 'Export Page Menu',
						'pagemenu/index/print'	=> 'Print Page Menu'
					    ),
	),
    // Product module
	'Product' => array (
		// Page Models list
		'models'		=> array('product/Products','product/ProductCategories','product/ProductRecipes','product/ProductImages','product/ProductRecipeImages'),
		// Page module menus
		'module_menu'	=> array(
						'product/index'             => 'Product',
						'product_category/index'	=> 'Product Categories',
						'product_recipe/index'      => 'Product Recipes'),
		// Page module functions
		'module_function'	=> array(
						// product functions
						'product/index/add'	=> 'Add Product',							
						'product/index/view'	=> 'View Product',
						'product/index/edit'	=> 'Edit Product',
						'product/index/delete'	=> 'Delete Product',
						'product/detail'		=> 'Detail Product',
						'product/translate'	=> 'Translate Product',
						'product/index/change'	=> 'Change Product Status',
						'product/index/export'	=> 'Export Product',
						'product/index/print'	=> 'Print Product',
            
                        // Products Gallery functions
                        'product_gallery/index'        => 'Gallery',
                        'product_gallery/index/add'	=> 'Add Gallery',
                        'product_gallery/index/view'	=> 'View Gallery',			
                        'product_gallery/index/edit'	=> 'Edit Gallery',			
                        'product_gallery/index/delete' => 'Delete Gallery',
                        'product_gallery/index/change' => 'Change Gallery',
                        'product_gallery/index/export' => 'Export Gallery',
                        'product_gallery/index/print'	=> 'Print Gallery',
            
						// Product Category functions
						'product_category/index/add'	=> 'Add Category',
						'product_category/index/view'	=> 'View Category',
						'product_category/index/edit'	=> 'Edit Category',
						'product_category/index/delete'	=> 'Delete Category',
                        'product_category/detail'		=> 'Detail Category',
						'product_category/translate'	=> 'Translate Category',
						'product_category/index/change'	=> 'Change Category Status',
						'product_category/index/export'	=> 'Export Category',
						'product_category/index/print'	=> 'Print Category',
            
                        // Product Recipes functions
						'product_recipe/index/add'	=> 'Add Recipe',
						'product_recipe/index/view'	=> 'View Recipe',
						'product_recipe/index/edit'	=> 'Edit Recipe',
						'product_recipe/index/delete'	=> 'Delete Recipe',
                        'product_recipe/detail'		=> 'Detail Recipe',
						'product_recipe/translate'	=> 'Translate Recipe',
						'product_recipe/index/change'	=> 'Change Recipe Status',
						'product_recipe/index/export'	=> 'Export Recipe',
						'product_recipe/index/print'	=> 'Print Recipe',
            
                        // Product Recipe Gallery functions
                        'product_recipe_gallery/index'        => 'Recipe Gallery',
                        'product_recipe_gallery/index/add'	=> 'Add Recipe Gallery',
                        'product_recipe_gallery/index/view'	=> 'View Recipe Gallery',			
                        'product_recipe_gallery/index/edit'	=> 'Edit Recipe Gallery',			
                        'product_recipe_gallery/index/delete' => 'Delete Recipe Gallery',
                        'product_recipe_gallery/index/change' => 'Change Recipe Gallery',
                        'product_recipe_gallery/index/export' => 'Export Recipe Gallery',
                        'product_recipe_gallery/index/print'	=> 'Print Recipe Gallery',
					    ),
	),
    // News module
	'News' => array (
		// News Models list
		'models'		=> array('news/News'),
		// News module menus
		'module_menu'	=> array(
                'news/index'		=> 'News'),
		// News module functions
		'module_function'	=> array(
                // News functions
                'news/index/add'	=> 'Add News',							
                'news/index/view'	=> 'View News',
                'news/index/edit'	=> 'Edit News',
                'news/index/delete'	=> 'Delete News',
                'news/detail'		=> 'Detail News',
                'news/translate'	=> 'Translate News',
                'news/index/change'	=> 'Change News Status',
                'news/index/export'	=> 'Export News',
                'news/index/print'	=> 'Print News',

                // News Gallery functions
                'news_gallery/index'        => 'Gallery',
                'news_gallery/index/add'	=> 'Add Gallery',
                'news_gallery/index/view'	=> 'View Gallery',			
                'news_gallery/index/edit'	=> 'Edit Gallery',			
                'news_gallery/index/delete' => 'Delete Gallery',
                'news_gallery/index/change' => 'Change Gallery',
                'news_gallery/index/export' => 'Export Gallery',
                'news_gallery/index/print'	=> 'Print Gallery'
                ),
	)
);


/* End of file modules.php */
/* Location: ./application/config/modules.php */