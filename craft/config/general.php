<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(
	'*' => array(
		'devMode' => true,
		'environmentVariables' => array(
			'assetsBaseUrl' => '/assets',
			'assetsBasePath' => './assets',
		)
	),

	// Give CodeKit a custom site URL
	'.local' => array(
		'siteUrl' => "http://{$_SERVER['SERVER_NAME']}",
	),

	// Give CodeKit a custom site URL
	'apex.refresh-digital.com' => array(
		'useCompressedJs' => true,
		'siteUrl' => "http://apex.refresh-digital.com",
	),	

	// Give CodeKit a custom site URL
	'apexmusic.co' => array(
		'useCompressedJs' => true,
		'siteUrl' => "http://apexmusic.co",
		'omitScriptNameInUrls' => true,
	)

);
