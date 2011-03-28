<?php

	list($view,$id,$action) = explode('/',$Painfree->route);

	$primary_file = 'templates/primary/' . $view . '.tpl';
        $primary_abs  = $Painfree->Root . $primary_file;
        if ( file_exists($primary_abs) ) {
                include $primary_file;
	} else {
		include 'templates/primary/unknown.tpl';
	}
