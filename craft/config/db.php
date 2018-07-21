<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

return array(

	'*' => array(
		'server' => 'localhost',
		'tablePrefix' => 'craft',
	),
	
	'apex.local' => array(
		'database' => 'Apex-Music',
		'user' => 'root',
		'password' => 'root'
	),

	'apex.refresh-digital.com' => array(
		'database' => 'refreshd_apex',
		'user' => 'refreshd_admin',
		'password' => 'subway08'
	)

);
