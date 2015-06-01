/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
};
CKEDITOR.editorConfig = function(config) {

   config.filebrowserBrowseUrl 		=  base_URL+'assets/grocery_crud/texteditor/kcfinder/browse.php?type=files';
   config.filebrowserImageBrowseUrl =  base_URL+'assets/grocery_crud/texteditor/kcfinder/browse.php?type=images';
   config.filebrowserFlashBrowseUrl =  base_URL+'assets/grocery_crud/texteditor/kcfinder/browse.php?type=flash';
   config.filebrowserUploadUrl		=  base_URL+'assets/grocery_crud/texteditor/kcfinder/upload.php?type=files';
   config.filebrowserImageUploadUrl =  base_URL+'assets/grocery_crud/texteditor/kcfinder/upload.php?type=images';
   config.filebrowserFlashUploadUrl =  base_URL+'assets/grocery_crud/texteditor/kcfinder/upload.php?type=flash';
};
