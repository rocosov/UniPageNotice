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


            <?php

            //Ejemplo aprenderaprogramar.com

            function mostrarDatos ($resultados) {

            if ($resultados !=NULL) {

            echo '          <div class="row">
                                <div class="col-md-7">
                                  <a href="'.$resultados['alias'].'">
                                    <img class="img-fluid rounded mb-3 mb-md-0" src="'.$resultados['urlimagen'].'" alt="">
                                  </a>
                                </div>
                                <div class="col-md-5">
                                  <h3>'.$resultados['titulo'].'</h3>
                                  <p>'.$resultados['resumen'].'</p>
                                  <a class="btn btn-primary" href="'.$resultados['alias'].'">Leer</a>
                                </div>
                              </div>

      <hr>     ';}
            else {echo "<br/>No hay más datos!!! <br/>";}
            }
          include("../php/conexion.php");

            $tildes = $mysqli->query("SET NAMES 'utf8'"); //Para que se muestren las tildes correctamente
            $result = mysqli_query($mysqli, "SELECT * from contenidos c where c.tipo='EVENTO' order by fecha_publicacion");
            while ($fila = mysqli_fetch_array($result)){
            mostrarDatos($fila);
            }
            mysqli_free_result($result);
            mysqli_close($mysqli);
            ?>
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
