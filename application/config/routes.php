<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

/*
| -------------------------------------------------------------------------
| MODULE ADMIN PANEL ROUTING - [START]
| ------------------------------------------------------------------------- 
*/

$admin = (ADMIN) ? str_replace('/', '', ADMIN) : '';

$route[$admin]						= "admin/authenticate";
$route[$admin.'/authenticate']		= "admin/authenticate/index";
$route[$admin.'/authenticate/(:any)']	= "admin/authenticate/$1";

/***** Administrator module menu mandatory [start] *****/
$route[$admin.'/dashboard/(:any)']	= 'admin/dashboard/$1';
$route[$admin.'/user/(:any)']		= 'admin/user/$1';
$route[$admin.'/usergroup/(:any)']	= 'admin/usergroup/$1';
$route[$admin.'/language/(:any)']	= 'admin/language/$1';
$route[$admin.'/modulelist/(:any)']	= 'admin/modulelist/$1';
$route[$admin.'/setting/(:any)']	= 'admin/setting/$1'; 
$route[$admin.'/serverlog/(:any)']	= 'admin/serverlog/$1';
/***** Administrator module menu mandatory [end] *****/

$route[$admin.'/news/(:any)']           = 'news/$1';
$route[$admin.'/news_gallery/(:any)']   = 'news/news_gallery/$1';

$route[$admin.'/page/(:any)']		= 'page/$1';
$route[$admin.'/pagemenu/(:any)']	= 'page/pagemenu/$1';
$route[$admin.'/page_gallery/(:any)']  = 'page/page_gallery/$1';


$route[$admin.'/product/(:any)']		= 'product/$1';
$route[$admin.'/product_category/(:any)']	= 'product/product_category/$1';
$route[$admin.'/product_gallery/(:any)']    = 'product/product_gallery/$1';
$route[$admin.'/product_recipe/(:any)']     = 'product/product_recipe/$1';
$route[$admin.'/product_recipe_gallery/(:any)']    = 'product/product_recipe_gallery/$1';

/*
| -------------------------------------------------------------------------
| MODULE ADMIN PANEL ROUTING - [END]
| ------------------------------------------------------------------------- 
*/


//$route['default_controller'] = 'coming_soon';
$route['default_controller'] = 'home';
$route['404_override']		 = '';

$route['download/(:num)']	 = 'download';
$route['language/(:any)']    = "language";
$route['search']			 = 'search';

$route['read/news/detail/(:any)']       = "front_news/detail/$1";
$route['read/news']                     = "front_news";

$route['read/recipe/detail/(:any)']     = "front_recipe/detail/$1";
$route['read/recipe/(:any)']            = "front_recipe/view/$1";
$route['read/recipe']                   = "front_recipe";


$route['read/product/category/(:any)']  = "front_product/category/$1";
$route['read/product/detail/(:any)']    = "front_product/detail/$1";
$route['read/product']                  = "front_product";

$route['read/page/detail/(:any)']       = "front_page/detail/$1";
$route['read/page/(:any)']              = "front_page/view/$1";



/* End of file routes.php */
/* Location: ./application/config/routes.php */