<?php
/**
 * Archivo de configuracion V0.1
 */
/** Boolean. Constante usada para mostrar u ocultar errores en la ejecución de cosultas. */
define('SHOW_ERROR_SQL',false);

/** Boolean. Incluye el archivo donde se encuentra las herramientas de depuracion y desarrollo. */
define('DEBUG',false);

/** Array. Parámetros de las bases de datos */
$db_configs = array(
				'default' => array(
					'host' => 'localhost',
					'login' => 'root',
					'password' => '',
					'database' => 'frut'),
				
				'default2' => array(
					'host' => 'localhost',
					'login' => 'root',
					'password' => '',
					'database' => 'edmultim_dbedmfw'),
					
				'default3' => array(
					'host' => 'localhost',
					'login' => 'root',
					'password' => '',
					'database' => 'hemosa'),
					
				'produccion' => array(
					'host' => 'localhost',
					'login' => 'edmultim_uedmfw',
					'password' => '08112016P',
					'database' => 'edmultim_dbedmfw'));

define('DB_CHARSET','utf8');
define('DB_CONFIG',  serialize($db_configs));
define('DB_SELECT','produccion');

/* Arreglo con las rutas */
$cfgPath = array('libs/','../libs/', 'cdpanel/libs/','../cdpanel/libs/');
$cfgPathA = array('./','../', 'cdpanel/','../cdpanel/');

foreach ($cfgPath as $key => $value) {
	if (@file_exists($value . 'dev_utilities.php')) {
			define('BASE_PATH',$cfgPathA[$key]);
		break;
	}
}

if (DEBUG) {
	include_once BASE_PATH.'libs/dev_utilities.php';
}
?>