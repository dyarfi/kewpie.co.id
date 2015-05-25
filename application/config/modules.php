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
						// Page Menu functions
						'pagemenu/index/add'	=> 'Add Page Menu',
						'pagemenu/index/view'	=> 'View Page Menu',
						'pagemenu/index/edit'	=> 'Edit Page Menu',
						'pagemenu/index/delete'	=> 'Delete Page Menu',
						'pagemenu/index/change'	=> 'Change Page Menu Status',
						'pagemenu/index/export'	=> 'Export Page Menu',
						'pagemenu/index/print'	=> 'Print Page Menu'
					    ),
	)
);


/* End of file modules.php */
/* Location: ./application/config/modules.php */