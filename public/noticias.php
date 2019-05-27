<?php require_once(dirname(__FILE__) . '/../setting/core.php' ); ?>
<?php

require_once("header.php");

 ?>
 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
       <title><?= site_info('titulo') .' - Noticias' ?></title>
		 <link rel="stylesheet" type="text/css" href="../styles/news_post_styles.css">
		 <link rel="stylesheet" type="text/css" href="../styles/news_post_responsive.css">
   </head>
   <body>

   </body>
 </html>
	<!-- Home -->

	<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(../images/news_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1> Noticias</h1>
		</div>
	</div>

	<!-- News -->
	<div class="news">
		<div class="container">
			<div class="row">

				<!-- News Post Column -->

        <div class="col-lg-8">

					<div class="news_post_container">
             	<p> Contenido aqui</p>
					</div>
				</div>

				<!-- Sidebar Column -->

	    <?php include("panel_lateral.php")?>
			</div>
		</div>
	</div>
 <?php include("footer.php")?>

</body>
</html>
