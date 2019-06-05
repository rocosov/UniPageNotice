<?php require_once(dirname(__FILE__) . '/../setting/core.php' ); ?>
<?php

require_once("header.php");

 ?>

	<!-- Home -->

	<!-- <div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(../../images/news_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1> <?=page_info('titulo') ?></h1>
		</div>
	</div> -->
  <!-- Home -->

   	<div class="home">

   		<!-- Hero Slider -->
   		<div class="hero_slider_container">
   			<div class="hero_slider owl-carousel">

          <!-- Hero Slide -->
          <div class="hero_slide">
            <div class="hero_slide_background" style="background-image:url(../images/uni.png)"></div>
            <div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
              <div class="hero_slide_content text-center">
              </div>
            </div>
          </div>

   				<!-- Hero Slide -->
   				<div class="hero_slide">
   					<div class="hero_slide_background" style="background-image:url(../images/slider_background.jpg)"></div>
   					<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
   						<div class="hero_slide_content text-center">
   						</div>
   					</div>
   				</div>

   				<!-- Hero Slide -->
   				<div class="hero_slide">
   					<div class="hero_slide_background" style="background-image:url(../images/bg.jpg)"></div>
   					<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
   						<div class="hero_slide_content text-center">
   						</div>
   					</div>
   				</div>



   			</div>

   			<div class="hero_slider_left hero_slider_nav trans_200"><span class="trans_200">prev</span></div>
   			<div class="hero_slider_right hero_slider_nav trans_200"><span class="trans_200">next</span></div>
   		</div>

   	</div>

   	<div class="hero_boxes">
   		<div class="hero_boxes_inner">
   			<div class="container">
   				<div class="row">

   					<div class="col-lg-4 hero_box_col" >
   						<div class="hero_box d-flex flex-row align-items-center justify-content-start" >
   							<img  src="../images/earth-globe.svg" class="svg" alt="">
   							<div class="hero_box_content">
   								<h2 class="hero_box_title">Noticias</h2>
   								<a href="noticias.php" class="hero_box_link">Ver más..</a>
   							</div>
   						</div>
   					</div>

   					<div class="col-lg-4 hero_box_col">
   						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
   							<img src="../images/books.svg" class="svg" alt="">
   							<div class="hero_box_content">
   								<h2 class="hero_box_title">Nuestra Biblioteca</h2>
   								<a href="courses.html" class="hero_box_link">Ver más..</a>
   							</div>
   						</div>
   					</div>

   					<div class="col-lg-4 hero_box_col">
   						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
   							<img src="../images/professor.svg" class="svg" alt="">
   							<div class="hero_box_content">
   								<h2 class="hero_box_title">Carreras</h2>
   								<a href="teachers.html" class="hero_box_link">Ver más..</a>
   							</div>
   						</div>
   					</div>

   				</div>
   			</div>
   		</div>
   	</div>

   	<!-- Popular -->

   	<div class="popular page_section">
   		<div class="container">
   			<div class="row">
   				<div class="col">
   					<div class="section_title text-center">
   						<h1>Ultimas Noticias</h1>
   					</div>
   				</div>
   			</div>

   			<div class="row course_boxes">

   				<!-- Popular Course Item -->


          <?php
          //Ejemplo aprenderaprogramar.com
          function mostrarDatos ($resultados) {
          if ($resultados !=NULL) {
          echo '

          <div class="col-lg-4 course_box">

            <div class="card">
              <img class="card-img-top" src="'.$resultados['urlimagen'].'" alt="">
              <div class="card-body text-center">
                <div class="card-title"><a href="'.$resultados['alias'].'">'.$resultados['titulo'].'</a></div>
                <div class="card-text">'.$resultados['resumen'].'</div>
              </div>
                <a class="btn btn-outline-primary btn-block" href="'.$resultados['alias'].'">Leer mas..</a>
            </div>
          </div>



               ';}
          else {echo "<br/>No hay más datos!!! <br/>";}
          }
        include("../php/conexion.php");

          $tildes = $mysqli->query("SET NAMES 'utf8'"); //Para que se muestren las tildes correctamente
          $result = mysqli_query($mysqli, "SELECT  * from contenidos c where c.tipo='POST' ORDER BY c.fecha_publicacion desc limit 3");
          while ($fila = mysqli_fetch_array($result)){
          mostrarDatos($fila);
          }
          mysqli_free_result($result);
          mysqli_close($mysqli);
          ?>
        </div>
      </div>




   			</div>
   		</div>
   	</div>


   	<!-- Events -->

   	<div class="events page_section">
   		<div class="container">

   			<div class="row">
   				<div class="col">
   					<div class="section_title text-center">
   						<h1>Ultimos Eventos</h1>
   					</div>
   				</div>
   			</div>

   			<div class="event_items">

   				<!-- Event Item -->
   				<div class="row event_item">
   					<div class="col">
   						<div class="row d-flex flex-row align-items-end">

   							<div class="col-lg-2 order-lg-1 order-2">
   								<div class="event_date d-flex flex-column align-items-center justify-content-center">
   									<div class="event_day">07</div>
   									<div class="event_month">January</div>
   								</div>
   							</div>

   							<div class="col-lg-6 order-lg-2 order-3">
   								<div class="event_content">
   									<div class="event_name"><a class="trans_200" href="#">Student Festival</a></div>
   									<div class="event_location">Grand Central Park</div>
   									<p>In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor.</p>
   								</div>
   							</div>

   							<div class="col-lg-4 order-lg-3 order-1">
   								<div class="event_image">
   									<img src="../images/event_1.jpg" alt="https://unsplash.com/@theunsteady5">
   								</div>
   							</div>

   						</div>
   					</div>
   				</div>



   			</div>

   		</div>
   	</div>


 <?php include("footer.php")?>

</body>
</html>
