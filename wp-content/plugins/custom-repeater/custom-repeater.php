<?php
/*
Plugin Name: Custom Repeater Field
Description: This premium Add-on adds a repeater field type for the Advanced Custom Fields plugin
Version: 1.0
Author: Tatva
Author URI: http://www.tatvasoft.com/
License: GPL
*/

// only include add-on once
if( !function_exists('crf_register_repeater_field') ):


// add action to include field
add_action('acf/register_fields', 'crf_register_repeater_field');

function crf_register_repeater_field()
{
	include_once('repeater.php');
}
endif;
?>
