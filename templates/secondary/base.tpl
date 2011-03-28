<?php

	list($view,$id,$action) = explode('/',$Painfree->route);

	$secondary_file = 'templates/secondary/' . $view . '.tpl';
        $secondary_abs  = $Painfree->Root . $secondary_file;
        if ( file_exists($secondary_abs) ) {
                include $secondary_file;
	} else {
		include 'templates/secondary/unknown.tpl';
	}
