<?php

include_once 'admin/classes/cls_general.php';
$can_seccion0 = new General('can_secciones');	
$can_seccion0->qrWhere ['id_can_secciones'] ="81";
$can_seccion = $can_seccion0->select(); 

$cont_inicio0 = new General('can_inicio');	
$cont_inicio0->qrWhere ['id_can_inicio'] ="1";
$cont_inicio = $cont_inicio0->select();

 if (!empty($cont_inicio [0]["paralax1"])) {  $paralax1 = $cont_inicio [0]["paralax1"]; } else   {$paralax1 = "";}
 if (!empty($cont_inicio [0]["contenido1"])) {  $contenido1 = $cont_inicio [0]["contenido1"]; }else {$contenido1 = "";}
 if (!empty($cont_inicio [0]["paralax2"])) {  $paralax2 = $cont_inicio [0]["paralax2"]; }else {$paralax2 = "";}
 if (!empty($cont_inicio [0]["contenido2"])) {  $contenido2 = $cont_inicio [0]["contenido2"]; }else {$contenido2 = "";}
 if (!empty($cont_inicio [0]["paralax3"])) {  $paralax3 = $cont_inicio [0]["paralax3"]; }else {$paralax3 = "";}
 if (!empty($cont_inicio [0]["titulo3"])) {  $titulo3 = $cont_inicio [0]["titulo3"]; }else {$titulo3 = "";}
 if (!empty($cont_inicio [0]["contenido3"])) {  $contenido3 = $cont_inicio [0]["contenido3"]; }else {$contenido3 = "";}
 if (!empty($cont_inicio [0]["titulo4"])) {  $titulo4 = $cont_inicio [0]["titulo4"]; }else {$titulo4 = "";}
 if (!empty($cont_inicio [0]["titulo5"])) {  $titulo5 = $cont_inicio [0]["titulo5"]; }else {$titulo5 = "";}
  
 if (!empty($can_seccion [0]["descripcion"])) {  $descripcion = $can_seccion [0]["descripcion"]; } else   {$descripcion = "";}
 if (!empty($can_seccion [0]["metatags"])) {  $metatags = $can_seccion [0]["metatags"]; }else {$metatags = "";}
 if (!empty($can_seccion [0]["content"])) {  $content = $can_seccion [0]["content"]; }else {$content = "";}


             

?><html lang="es">
	<head>
	  <script type="text/javascript">
   if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["jquery-1.8.3.min.js", "museutils.js", "jquery.musepolyfill.bgsize.js", "webpro.js", "musewpslideshow.js", "jquery.museoverlay.js", "touchswipe.js", "jquery.musemenu.js", "jquery.watch.js",   "index.css"], "outOfDate":[]};
</script>
 
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="En frutas Candil podrás encontrar una amplia variedad de productos saludables y recetas que te harán que comer fruta sea todo un placer para el paladar, para pequeños y mayores.">
		<meta name="author" content="candil">
		<meta name="keywords" content="frutas candil agricultura cultivo valor nutricional">

		<title><?php echo $descripcion;?></title>
		<link rel="shortcut icon" href="images/favicon.ico">

		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<script src="js/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	 


		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link rel="stylesheet" type="text/css" href="css/index_00.css?329046681" id="pagesheet"/>
		<link rel="stylesheet" href="css/fuentes/stylesheet.css">		
		<link rel="stylesheet" href="css/add_css.css">		
		
		
		
 <?php

$galeria0 = new General('can_galerias');	
$galeria0->qrWhere ['titulo'] =$paralax1;
$galeria0->qrWhere ['id_categorias'] ="81";
$galeria = $galeria0->select();
if (!empty($galeria)) {$paralax01 = $galeria[0]["img_galerias"];}else{$paralax01 = "";}

$galeria0 = new General('can_galerias');	
$galeria0->qrWhere ['titulo'] =$paralax2;
$galeria0->qrWhere ['id_categorias'] ="81";
$galeria = $galeria0->select();
if (!empty($galeria)) {$paralax02 = $galeria[0]["img_galerias"];}else{$paralax02 = "";}

$galeria0 = new General('can_galerias');	
$galeria0->qrWhere ['titulo'] =$paralax3;
$galeria0->qrWhere ['id_categorias'] ="81";
$galeria = $galeria0->select();
if (!empty($galeria)) {$paralax03 = $galeria[0]["img_galerias"];} else{$paralax03 = "";}
$menuactive = "1";
?>
 
  
<style>
 

.parallax2 {
    /* The image used */
    background-image: url("images/img_contenido/<?php echo $paralax01;?>");

    /* Set a specific height */
    min-height: 500px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size:  100% auto;
}
.parallax3 {
    /* The image used */
    background-image: url("images/img_contenido/<?php echo $paralax02;?>");

    /* Set a specific height */
    min-height: 500px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: 100% auto;
 
}
.parallax4 {
    /* The image used */
    background-image: url("images/img_contenido/<?php echo $paralax03;?>");

    /* Set a specific height */
    min-height: 500px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: top;
    background-repeat: no-repeat;
    background-size:  100% auto;
}

.navbar.navbar-inverse{
    margin-top: 400px;
}


@media (min-width: 900px) and (max-width: 10000px) {#u4813{ left: 45% !important;} } 
@media (min-width: 800px) and (max-width:900px)  {#u4813{ left: 40% !important;}}
@media (min-width: 600px) and (max-width:800px)  {#u4813{ left: 35% !important;}}
@media (min-width: 500px) and (max-width:600px)  {#u4813{ left: 30% !important;}}
@media (min-width:  450px) and (max-width:500px)  {#u4813{ left: 25% !important;}}
@media (min-width:  350px) and (max-width:450px)  {#u4813{ left: 20% !important;}}
@media (min-width:  0px) and (max-width:350px)  {#u4813{ left: 15% !important;}}
 
 


 
.not_txt_h{
    max-width: 244px  !important;
    margin: auto;
}
.text_green {
    margin-top: -20px;
}

#u4710{ display:none !important;}
.overflow_h{ overflow: hidden; height: 200px;}
#u4854 { top: -183px !important;}
#u4876 {    top: -251px !important;}
#u3670 {display:none;}

#where-am-i0{
    font-size: 55;
    text-align: center;
    font-weight: bold;
    color: red;
}

@media (min-width:  0px) and (max-width:900px)  {
 
}

.u186_img.fruta2.img-responsive {display: block;}
.u186_img.camion0{display: block;}

@media (min-width:  0px) and (max-width:400px)  {
	.camion0 {
  
    margin-left: 10%!important;
	}
}
@media (min-width: 400px) and (max-width:600px)  {
	.camion0 {
  
    margin-left: 20%!important;
	}
}
@media (min-width: 600px) and (max-width:990px)  {
	.camion0 {
  
    margin-left: 30%!important;
	}
}
@media (min-width: 600px) and (max-width:990px)  {
	.camion0 {
  
    margin-left: 30%!important;
	}
}
@media (min-width: 990px) and (max-width:1200px)  {
	.camion0 {
  
    margin-left: -80px !important;
	}
}
@media (min-width:  1200px) and (max-width:1400px)  {
	.camion0 {
     margin-left: -50px !important;
	}
}

 
@media (min-width:  500px) and (max-width:700px)  {
	.u186_img.fruta2.img-responsive  {
		margin-left: 55% !important;
	}
} 
@media (min-width:  0px) and (max-width:500px)  {
	.u186_img.fruta2.img-responsive  {
		margin-left: 45% !important;
	}
	 .camion0 {
		margin-left: 20%!important;
	}
} 
@media (min-width:  0px) and (max-width:986px)  {
.u186_img.camion0.fruta3{margin-top: 0px;}
}
.container {
    width: 100%;
}

 .text_green {
  
    font-size: 20px;
 
}
.tx002aq	{    display: block; width: 100%; }
.tx000aq	{    display: block; margin-top: -30px !important;}
@media (min-width:  1400px) and (max-width:20000px)  {.tx000aq	{width: 70%;} .tx002aq	{  width: 70%; }}
@media (min-width:  1200px) and (max-width:1400px)  {.tx000aq	{width: 80%;}}
.tx000aq	{    display: block; margin-top: -30px !important;}

</style>
  
  
  
	</head>

	<body>

  <div id="where-am-i0">
  <?php 
  $user_agent = $_SERVER['HTTP_USER_AGENT']; 
  

if(strstr($SERVER['HTTP_USER_AGENT'],'iPhone') || strstr($SERVER['HTTP_USER_AGENT'],'iPod')){

?>
<style>

@media (min-width: 0px) and (max-width: 1030px) {
	.parallax2 {
		background-attachment: inherit;
		background-size: 100% auto !important;
	}	
	.parallax3 {
		background-attachment: inherit;
		background-position: top;
	}	
	.parallax4 {
		background-attachment: inherit;
		background-size: 100% auto !important;
	}	
	#frutas0_h {
		background-image: url("images/frutas0_h.jpg");
		background-position: top;
		background-repeat: no-repeat;
		background-size: auto 100%;
		height: 100%;
	}
	#frutas1_h{display:none !important;}
	#frutas1_h{display:block !important;}
	#menu000{ margin-top: 0 !important;}
		
} 


@media (min-width: 0px) and (max-width: 550px){#frutas0_h{ height: 40% !important;}}
@media (min-width: 550px) and (max-width: 800px){#frutas0_h{ height: 60% !important;}}
@media (min-width: 800px) and (max-width: 900px){#frutas0_h{ height: 70% !important;}}
@media (min-width: 900px) and (max-width: 1024px){#frutas0_h{ height: 80% !important;}}
</style>
<?php 
	
	}
if(strstr($_SERVER['HTTP_USER_AGENT'],'iPod') || strstr($_SERVER['HTTP_USER_AGENT'],'iPhone') || strstr($_SERVER['HTTP_USER_AGENT'],'iPad')) { 

?>
<style>

@media (min-width: 0px) and (max-width: 1200px) {
	.parallax2 {
		background-attachment: inherit;
		background-size: 100% auto !important;
	}	
	.parallax3 {
		background-attachment: inherit;
		background-position: top;
	}	
	.parallax4 {
		background-attachment: inherit;
		background-size: 100% auto !important;
	}		
	#frutas0_h {
		background-image: url("images/frutas0_h.png");
		background-position: top;
		background-repeat: no-repeat;
		background-size: auto 100%;
		height: 100%;
	}
	#frutas1_h{display:none !important;}
	#frutas0_h{display:block !important;}
	#menu000{ margin-top: 0 !important;}
		
} 


@media (min-width: 0px) and (max-width: 550px){#frutas0_h{ height: 40% !important;}}
@media (min-width: 550px) and (max-width: 800px){#frutas0_h{ height: 60% !important;}}
@media (min-width: 800px) and (max-width: 900px){#frutas0_h{ height: 70% !important;}}
@media (min-width: 900px) and (max-width: 1024px){#frutas0_h{ height: 80% !important;}}


</style>
<?php 

}

	
?>
</div>

<div class="container-fluid text-center">    
  <div class="row content">
  
  </div>
</div>  
<div class="container-fluid text-center">    
  <div class="row content">
	<div class="col-sm-12" id="frutas0_h"   >
	</div>
 
    <div class="col-sm-12  overflow_h" id="frutas1_h"   >
   <div class="clearfix" id="page"><!-- column -->
   <div class="position_content" id="page_position_content">
    <div class="clearfix colelem" id="pu3670"><!-- group -->
     <div class="museBGSize ose_pre_init grpelem" id="u3670" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=0.9703,M12=-0.2419,M21=0.2419,M22=0.9703,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-79" data-mu-ie-matrix-dy="-143"><!-- simple frame --></div>
     <div class="museBGSize grpelem" id="u4710"><!-- simple frame --></div>
     <div class="clip_frame grpelem" id="u260"><!-- image -->
      <img class="block" id="u260_img" src="images/062.png" alt="" width="143" height="140"/>
     </div>
 
    </div>
    <div class="clearfix colelem" id="pu4843"><!-- group -->
     <div class="museBGSize mse_pre_init" id="u4843"><!-- simple frame --></div>
     <div class="clip_frame mse_pre_init" id="u242"><!-- image -->
      <img class="block" id="u242_img" src="images/081.png" alt="" width="147" height="160"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u248" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=0.891,M12=-0.454,M21=0.454,M22=0.891,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-53" data-mu-ie-matrix-dy="-21"><!-- image -->
      <img class="block" id="u248_img" src="images/naranja.png" alt="" width="172" height="200"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u250"><!-- image -->
      <img class="block" id="u250_img" src="images/026.png" alt="" width="225" height="163"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u252"><!-- image -->
      <img class="block" id="u252_img" src="images/043.png" alt="" width="139" height="140"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u254" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=0.829,M12=-0.5592,M21=0.5592,M22=0.829,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-54" data-mu-ie-matrix-dy="-30"><!-- image -->
      <img class="block" id="u254_img" src="images/lechuga.png" alt="" width="199" height="180"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u256"><!-- image -->
      <img class="block" id="u256_img" src="images/093%20copia-desenfocado.png" alt="" width="142" height="140"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u258" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=0.9397,M12=-0.342,M21=0.342,M22=0.9397,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-23" data-mu-ie-matrix-dy="-21"><!-- image -->
      <img class="block" id="u258_img" src="images/096%20copia-desenfocado.png" alt="" width="210" height="150"/>
     </div>
     <div class="clip_frame mse_pre_init" id="u264" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=0.9397,M12=0.342,M21=-0.342,M22=0.9397,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-14" data-mu-ie-matrix-dy="-11"><!-- image -->
      <img class="block" id="u264_img" src="images/093%20copia-desenfocado.png" alt="" width="79" height="94"/>
     </div>
     <div class="museBGSize mse_pre_init" id="u4813"><!-- simple frame --></div>
     <div class="museBGSize mse_pre_init" id="u4854" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=-0.0872,M12=0.9962,M21=-0.9962,M22=-0.0872,SizingMethod='auto expand')" data-mu-ie-matrix-dx="-8" data-mu-ie-matrix-dy="-3"><!-- simple frame --></div>
     <div class="museBGSize mse_pre_init" id="u4876" data-mu-ie-matrix="progid:DXImageTransform.Microsoft.Matrix(M11=-0.2756,M12=0.9613,M21=-0.9613,M22=-0.2756,SizingMethod='auto expand')" data-mu-ie-matrix-dx="27" data-mu-ie-matrix-dy="-73"><!-- simple frame --></div>
    </div>
  
	
   </div>
  </div>
    </div>
 
  </div>
</div>
<?php  include 'includes/header.php'; ?>


<div class="container-fluid text-center">    
  <div class="row content">
	<div class="parallax2"></div> 
	<div class="frutas00"><img class="u186_img frutas0 img-responsive" title="frutas-candil" src="images/inicio-frutas-candil-enlaces.png" alt="nuestros productos - especialistas en hosteleria" title="nuestros productos - especialistas en hosteleria"></div>
<div style="width: 80%;position: relative;top: -480px;margin: auto;">
	<a href="producto.php" style="width: 40%;height: 150px;float: left;margin-bottom: -150px;"></a>
	<a href="hosteleria.php" style="width: 50%;height: 150px; float: right;margin: auto;margin-bottom: -150px;"></a>
</div>
  </div>
</div> 

<div class="container-fluid text-center">    
  <div class="container">
  <div class="row content">
    <div class=" col-sm-12 col-md-2 col-lg-1">
        <img class="u186_img  fruta1 img-responsive" src="images/inicio-frutas-candil-platanos.png" alt="platanos" title="platanos">
    </div>
    <div class=" col-sm-12 col-md-8 col-lg-10 text-left padding40 paddingindex"> 
        <p class="text_index5 text_green tx000aq"><?php echo $contenido1;?></p>
    </div>
    <div class=" col-sm-12 col-md-2 col-lg-1 ">
    </div>
  </div>
  </div>
</div>

<div class="container-fluid text-center">    
  <div class="row content">
      <img class="u186_img fruta2 img-responsive" src="images/inicio-frutas-candil-logo-europeo.png" alt="agricultura ecologica" title="agricultura ecologica">
	    <div class="parallax3"></div><img src="images/img_contenido/<?php echo $paralax02;?>" title="recetasdefrutas"  alt="recetasdefrutas" style="display:none;">
  </div>
</div>

<div class="container-fluid text-center">    
  <div class="container">
  <div class="row content">
    <div class=" col-sm-12 col-md-2 col-lg-1 ">
    </div>
    <div class=" col-sm-12 col-md-8 col-lg-10 text-left padding40 paddingindex"> 
        <p class="text_index5 text_green tx002aq"><?php echo $contenido2;?></p>
    </div>
    <div class=" col-sm-12 col-md-2 col-lg-1 ">
    </div>
  </div>
  </div>
</div>

<div class="container-fluid text-center">    
  <div class="row content">
	     <div class="parallax4"></div><img src="images/img_contenido/<?php echo $paralax03;?>" title="huerto"  alt="huerto" style="display:none;">
  </div>
</div>


<div class="container-fluid text-center">    
  <div class="row content">
    <div class=" col-sm-12 col-md-2 col-lg-2 ">
	 
    </div>
    <div class=" col-sm-12 col-md-8 col-lg-8 text-center">
	
<div class="row content">
    <div class=" col-sm-12 col-md-2 col-lg-2 ">
		    <img class="u186_img  camion0" title="Camion Frutas Candil" src="images/inicio-frutas-candil-camion.png" alt="Camion Frutas Candil" title="Camion Frutas Candil">
    </div>
	  <div class=" col-sm-12 col-md-8 col-lg-8 text-center"> 
	      <h2 class="espacio_50 letter_10 rotar_4"><?php echo $titulo3;?></h2>
	      <p class="text_green text_index6"><?php echo $contenido3;?></p>
    </div>
	  <div class=" col-sm-12 col-md-2 col-lg-2 ">
	      <img class="u186_img  camion0 fruta3" src="images/inicio-frutas-candil-naranja.png" alt="naranja" title="naranja">
    </div>
</div>

	<div class="row">
		<div class="col-sm-6">
			<h4  class="espacio_50 rotar_6"><?php echo $titulo4;?></h4>
		</div>
		<div class="col-sm-6"> 
			<h4  class="espacio_50  rotar_menos6"><?php echo $titulo5;?></h4>  
		</div>

	</div>	 
	<div class="espacio_menu50"></div>
	 <a href="noticias.php" class="not_fres10"><h2>Noticias Frescas</h2></a>
      <p  class="text_green"> </p>
	  
	  <?php 
		
		$cont_inicio0 = new General('can_noticias');
		$cont_inicio0->qrWhere ['estatus'] ="1";	
		$can_noticias = $cont_inicio0->select();
	  ?>
	  
	 <div class="espacio_menu100"></div>
	  
  <div class="container">
    <div class="row">
  	<?php 	  $cont = 0;  ?>
   	  <?php foreach ($can_noticias as $data) { ?>
  		<?php if ( $cont <  3) {?>
  		<?php 
  			$galeria0 = new General('can_galerias');	 
  			$galeria0->qrWhere ['titulo'] = $data["imagen1"];
  			$galeria0->qrWhere ['id_categorias'] = $data["id_can_noticias"];
  			$galeria = $galeria0->select();  
  			if (!empty($galeria)) {$imagen01 = $galeria[0]["img_galerias"];}else{$imagen01 = "";}
  		?>
  	  <div class="col-sm-4 col-md-4 col-lg-4">
      		<div class="img_hid">
      			<img src="images/img_noticias/Thumb/Thumb_<?php echo $imagen01;?>" class="pro_img_0 " style=" width: 245px; height: 180px;"  alt="<?php echo $data["titulo1"];?>" title="<?php echo $data["titulo1"];?>">
      		</div>			
    			<div class="not_txt_h"> 
    				<p class="not_txt_t"><?php echo $data["titulo1"];?></p>
    				<div class="not_txt_c"><?php echo $data["contenido1"];?></div>
    				<a href="noticias_detalle.php?id=<?php echo $data["id_can_noticias"];?>"><p class="not_txt_b">VER</p></a>
    			</div>
          <div class="espacio_menu"></div>
  		</div>
   
  			<?php } ?>
  			<?php 	  $cont = $cont +1;  ?>
  		  <?php } ?>
    </div>
	</div> 
	  
	  
    </div>
    <div class=" col-sm-12 col-md-2 col-lg-2 ">
 
    </div>
  </div>
</div>
 
 <div class="espacio_50"></div>
<?php  include 'includes/footer.php'; ?>


<?php /* movimiento de frutas */ ?>
<!-- JS includes -->
  <script type="text/javascript">
   if (document.location.protocol != 'https:') document.write('\x3Cscript src="http://musecdn.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script type="text/javascript">
   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script src="scripts/museutils.js?4190794036" type="text/javascript"></script>

  <script src="scripts/jquery.museoverlay.js?3898476799" type="text/javascript"></script>

  <script src="scripts/jquery.watch.js?349565855" type="text/javascript"></script>

<?php 
  $user_agent = $_SERVER['HTTP_USER_AGENT']; 
  

if(strstr($SERVER['HTTP_USER_AGENT'],'iPhone') || strstr($SERVER['HTTP_USER_AGENT'],'iPod')){
 
	
	}
else if(strstr($_SERVER['HTTP_USER_AGENT'],'iPod') || strstr($_SERVER['HTTP_USER_AGENT'],'iPhone') || strstr($_SERVER['HTTP_USER_AGENT'],'iPad')) { 

 
} else {
?> 	
<script src="scripts/jquery.scrolleffects.js?3837774061" type="text/javascript"></script>
<?php	
}

	
?> 
	
	
	
	
  <!-- Other scripts -->
  <script type="text/javascript">
   $(document).ready(function() { try {
(function(){var a={},b=function(a){if(a.match(/^rgb/))return a=a.replace(/\s+/g,"").match(/([\d\,]+)/gi)[0].split(","),(parseInt(a[0])<<16)+(parseInt(a[1])<<8)+parseInt(a[2]);if(a.match(/^\#/))return parseInt(a.substr(1),16);return 0};(function(){$('link[type="text/css"]').each(function(){var b=($(this).attr("href")||"").match(/\/?css\/([\w\-]+\.css)\?(\d+)/);b&&b[1]&&b[2]&&(a[b[1]]=b[2])})})();(function(){$("body").append('<div class="version" style="display:none; width:1px; height:1px;"></div>');
for(var c=$(".version"),d=0;d<Muse.assets.required.length;){var f=Muse.assets.required[d],g=f.match(/([\w\-\.]+)\.(\w+)$/),k=g&&g[1]?g[1]:null,g=g&&g[2]?g[2]:null;switch(g.toLowerCase()){case "css":k=k.replace(/\W/gi,"_").replace(/^([^a-z])/gi,"_$1");c.addClass(k);var g=b(c.css("color")),h=b(c.css("background-color"));g!=0||h!=0?(Muse.assets.required.splice(d,1),"undefined"!=typeof a[f]&&(g!=a[f]>>>24||h!=(a[f]&16777215))&&Muse.assets.outOfDate.push(f)):d++;c.removeClass(k);break;case "js":k.match(/^jquery-[\d\.]+/gi)&&
typeof $!="undefined"?Muse.assets.required.splice(d,1):d++;break;default:throw Error("Unsupported file type: "+g);}}c.remove();if(Muse.assets.outOfDate.length||Muse.assets.required.length)c="Puede que determinados archivos falten en el servidor o sean incorrectos. Limpie la cache del navegador e inténtelo de nuevo. Si el problema persiste, póngase en contacto con el administrador del sitio web.",(d=location&&location.search&&location.search.match&&location.search.match(/muse_debug/gi))&&Muse.assets.outOfDate.length&&(c+="\nOut of date: "+Muse.assets.outOfDate.join(",")),d&&Muse.assets.required.length&&(c+="\nMissing: "+Muse.assets.required.join(","))})()})();
/* body */
 
$('#u3670').registerOpacityScrollEffect([{"fade":9,"in":[-Infinity,-122.12],"opacity":0},{"in":[-122.12,-122.12],"opacity":100},{"fade":649,"in":[-122.12,Infinity],"opacity":0}]);/* scroll effect */
$('#u4843').registerPositionScrollEffect([{"speed":[0,0.5],"in":[-Infinity,0]},{"speed":[0,0.6],"in":[0,Infinity]}]);/* scroll effect */
$('#u242').registerPositionScrollEffect([{"speed":[0,-0.1],"in":[-Infinity,62]},{"speed":[0,1],"in":[62,Infinity]}]);/* scroll effect */
$('#u248').registerPositionScrollEffect([{"speed":[0,-0.5],"in":[-Infinity,117.1]},{"speed":[0,0.5],"in":[117.1,Infinity]}]);/* scroll effect */
$('#u250').registerPositionScrollEffect([{"speed":[0.1,0],"in":[-Infinity,0]},{"speed":[-0.1,1],"in":[0,Infinity]}]);/* scroll effect */
$('#u252').registerPositionScrollEffect([{"speed":[0,-0.5],"in":[-Infinity,123]},{"speed":[0,0.5],"in":[123,Infinity]}]);/* scroll effect */
$('#u254').registerPositionScrollEffect([{"speed":[0,-0.3],"in":[-Infinity,1.6]},{"speed":[0,1.1],"in":[1.6,Infinity]}]);/* scroll effect */
$('#u256').registerPositionScrollEffect([{"speed":[-0.1,1],"in":[-Infinity,0]},{"speed":[0,1],"in":[0,Infinity]}]);/* scroll effect */
$('#u258').registerPositionScrollEffect([{"speed":[1,0],"in":[-Infinity,395]},{"speed":[0,1],"in":[395,Infinity]}]);/* scroll effect */
$('#u264').registerPositionScrollEffect([{"speed":[0,-0.7],"in":[-Infinity,345.69]},{"speed":[0,1],"in":[345.69,Infinity]}]);/* scroll effect */
$('#u4813').registerPositionScrollEffect([{"speed":[1.1,0],"in":[-Infinity,-38]},{"speed":[0,1],"in":[-38,Infinity]}]);/* scroll effect */
$('#u4854').registerPositionScrollEffect([{"speed":[1,0],"in":[-Infinity,503.63]},{"speed":[0,1],"in":[503.63,Infinity]}]);/* scroll effect */
$('#u4876').registerPositionScrollEffect([{"speed":[0,-0.5],"in":[-Infinity,2]},{"speed":[0,0.5],"in":[2,Infinity]}]);/* scroll effect */
$('#u891').registerBackgroundPositionScrollEffect([{"speed":[0,0],"in":[-Infinity,2222]},{"speed":[0,0],"in":[2222,Infinity]}]);/* scroll effect */
$('#u911').registerBackgroundPositionScrollEffect([{"speed":[0,0],"in":[-Infinity,3034.9]},{"speed":[0,0],"in":[3034.9,Infinity]}]);/* scroll effect */
$('#u962').registerBackgroundPositionScrollEffect([{"speed":[0,0],"in":[-Infinity,1226.9]},{"speed":[0,0],"in":[1226.9,Infinity]}]);/* scroll effect */
$('#u1010').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1011').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1013-4').registerOpacityScrollEffect([{"fade":482,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1014-4').registerOpacityScrollEffect([{"fade":459,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u981').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u970').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u988-4').registerOpacityScrollEffect([{"fade":482,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u994-4').registerOpacityScrollEffect([{"fade":459,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1040').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1041').registerOpacityScrollEffect([{"fade":276.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1043-4').registerOpacityScrollEffect([{"fade":482,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1044-4').registerOpacityScrollEffect([{"fade":459,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u984').registerOpacityScrollEffect([{"fade":544.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1012').registerOpacityScrollEffect([{"fade":544.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u1042').registerOpacityScrollEffect([{"fade":544.9,"in":[-Infinity,3690],"opacity":0},{"in":[3690,3690],"opacity":100},{"fade":0,"in":[3690,Infinity],"opacity":100}]);/* scroll effect */
$('#u939').registerPositionScrollEffect([{"speed":[1,0],"in":[-Infinity,0]},{"speed":[0,1],"in":[0,Infinity]}]);/* scroll effect */
$('#u928').registerPositionScrollEffect([{"speed":[1,0],"in":[-Infinity,0]},{"speed":[0,1],"in":[0,Infinity]}]);/* scroll effect */
 
} catch(e) { if (e && 'function' == typeof e.notify) e.notify(); else Muse.Assert.fail('Error calling selector function:' + e); }});

 





</script>

		<script src="bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>



