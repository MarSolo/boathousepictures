<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.colorbox.js"></script>
        
        <?php if(isset($colorbox)){ ?>
			<script type="text/javascript">
			$(document).ready(function(){
				
			$('.videoplay').colorbox({iframe:true, innerWidth:500, innerHeight:281});
			
			});
			</script>
            
		<?php } ?>
		<title><?php if(isset($titlePage)){ echo $titlePage; }?>Roadwork Ahead | Official Movie Site</title>
     
     		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
            <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
            <link rel="stylesheet" href="css/colorbox.css" type="text/css" media="screen" />
            
        
	</head>
    
	<body id="top">
            
            <div id="container">
             <nav id="nav">
                <ul id="navigation">
                    <li><a href="index.php">HOME</a></li>
                    <li><a href="about.php">ABOUT</a></li>
                    <li><a href="media.php">MEDIA</a></li>
                    <li><a href="cast.php">CAST & CREW</a></li>
                </ul>
            </nav>