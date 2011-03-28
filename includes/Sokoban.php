<?php
/* This is a generic template for PHPainfree. It doesn't really do much */
	$Sokoban = new Sokoban();
	$Sokoban->prepare();
	
	class Sokoban {
		private $__title = 'Sokoban';

		public function title($title=null, $prepend=false) {
			if ( $title === null ) {
				if ( $prepend ) {
					$title = $title . $this->__title;
				}
				$this->__title = $title;
			}

			return $this->__title; 
		}

		public function prepare() {
			list($view,$id,$action) = explode('/',$this->route);
			switch($view) {
				case 'view':
					// example "view" record view. Retrieve the record here
					// and set the title and such
					break;
				case 'main':
				default:
					// do something here
					break;
			}
		}
	
		public function __construct() {
			global $Painfree;
			
			// $this->db = $Painfree->db;
			$this->route = $Painfree->route;
		}
	}
	
