<?php 
	date_default_timezone_set('America/New_York');
	//Establish the Local IP and DTS time for hidden form submission
	$remoteIP= @$_SERVER["LOCAL_ADDR"];
	
	$dts = date("Y-m-d H:i:s");
?>
<!doctype html>  

<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ --> 
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame 
       Remove this if you use the .htaccess -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">


		<title><?php echo $Sokoban->title(); ?></title>
		<meta name="description" content="NSAG SOKOBAN">
		<meta name="author" content="Marc B. Stroz">

		<link rel="stylesheet" type="text/css" href="css/boilerplate.css" />
		<link rel="stylesheet" type="text/css" href="css/styles.css" />
		<link rel="stylesheet" type="text/css" href="css/jquery.rating.css" />
	        <link rel="stylesheet" type="text/css" href="css/960.css" />
	        <link rel="stylesheet" type="text/css" href="css/demo_table.css" />
       
		
		<!-- All JavaScript at the bottom, except for Modernizr which enables HTML5 elements & feature detects -->
		<script src="js/modernizr-1.6.min.js"></script>


	</head>
	<body>

		<?php include 'templates/header.tpl'; ?>
 
<div id="content" class="container_12">
<?php
	list($view,$id,$action) = explode("/", $Painfree->route);
	if ( $view == 'main' ) {
?>
        	<div id="left" class="grid_8">
			<?php include 'templates/primary/base.tpl'; ?>
		</div>
        
		<div id="right" class="grid_3 push_1">
			<?php include 'templates/secondary/base.tpl'; ?>
		</div>
<?php
	} else {
?>
		<div id="left" class="grid_12">
			<?php include 'templates/primary/base.tpl'; ?>
		</div>
<?php
	}
?>
        
        </div>

	 <?php include 'templates/footer.tpl'; ?>
 
		<!--
                	 -->

	  <!-- Javascript at the bottom for fast page loading -->

	  <!-- Grab Google CDN's jQuery. fall back to local if necessary 
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.js"></script>-->

	  <script>!window.jQuery && document.write(unescape('%3Cscript src="js/jquery.js"%3E%3C/script%3E'))</script>
	  
	  
	  <!-- scripts concatenated and minified via ant build script-->
	  <script src="js/plugins.js"></script>
	  <script src="js/script.js"></script>
	  <script src="js/jquery.simplemodal.1.4.1.min.js"></script>
      <script src="js/jquery.dataTables.js"></script>
			  
	  <script type="text/javascript" language="javascript">		
		$(document).ready(function() {	
			//select all the a tag with name equal to modal
			$('a[name=modal]').click(function(e) {
				$.modal("<span style='text-align:center;'><pre>NSAG SOKOBAN<br />Sokoban (warehouse keeper) is a type of transport puzzle,<br />in which the player pushes boxes around a maze, viewed from above, and<br />tries to put them in predetermined areas<br /><br />Programmers: Marc Stroz<br />Eric Harrison<br />Andrew Sullivan<br />Date: 02/16/2011</pre></span>");
			});		
			
			$.extend($.modal.defaults, {
			closeClass: "modalClose",
			closeHTML: "<a href='#' style='color:red;'>Close</a>",
			opacity: 80,
			overlayCss: {backgroundColor: "#FFFFFC"},
			height:600,
			width: 600,
			maxWidth: 600
			});
	
		});

	</script>

	  <!-- end concatenated and minified scripts-->
	  
	  
	  <!--[if lt IE 7 ]>
		<script src="js/libs/dd_belatedpng.js"></script>
		<script> DD_belatedPNG.fix('img, .png_bg'); //fix any <img> or .png_bg background-images </script>
	  <![endif]-->

	  
	</body>

</html>
