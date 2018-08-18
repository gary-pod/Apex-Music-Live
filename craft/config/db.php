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
		// 'database' => 'Apex-Music',
		'database' => 'Apex_Live',
		'user' => 'root',
		'password' => 'root'
	),

	'apex.refresh-digital.com' => array(
		'database' => 'refreshd_apex',
		'user' => 'refreshd_admin',
		'password' => 'subway08'
	),

	'apexmusic.co' => array(
		'server' => 'db723188642.db.1and1.com',
		'database' => 'db723188642',
		'user' => 'dbo723188642',
		'password' => 'Superfuckerbucker69!'
	)

);
