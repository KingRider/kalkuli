<?php
// This file generated by Propel 1.5.4-dev convert-conf target
// from XML runtime conf file D:\www\money\propel-project\runtime-conf.xml
$conf = array (
	'datasources' => 
	array (
		'kalkuli' => 
		array (
			'adapter' => 'sqlite',
			'connection' => 
			array (
				'dsn' => 'mysql:host=' . DATABASE_HOST . ';dbname=' . DATABASE_NAME,
		'user' => DATABASE_USERNAME,
		'password' => DATABASE_PASSWORD,
				'classname' => (defined('PROPEL_USE_DEBUG') && PROPEL_USE_DEBUG === true) ? 'DebugPDO' : 'PropelPDO',
			),
		),
		'default' => 'kalkuli',
	),
	'log' => 
	array (
		'type' => 'file',
		'name' => './propel.log',
		'ident' => 'propel',
		'level' => PROPEL_DEBUG_LEVEL,
		'conf' => '',
	),
	'generator_version' => '1.5.4-dev',
);
$conf['classmap'] = include(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'classmap-kalkuli-conf.php');
return $conf;