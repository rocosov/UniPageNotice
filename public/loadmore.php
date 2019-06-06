<?php
include('config.php');

?>
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


<link href="frame.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/
libs/jquery/1.3.0/jquery.min.js"></script>

<script type="text/javascript">
$(function() {
//More Button
$('.more').live("click",function()
{
var ID = $(this).attr("id");
if(ID)
{
$("#more"+ID).html('<img src="moreajax.gif" />');

$.ajax({
type: "POST",
url: "ajax_more.php",
data: "lastmsg="+ ID,
cache: false,
success: function(html){
$("ol#updates").append(html);
$("#more"+ID).remove();
}
});
}
else
{
$(".morebox").html('The End');

}


return false;


});
});

</script>
<style>
body
{
font-family:Arial, 'Helvetica', sans-serif;
color:#000;
font-size:15px;

}
a { text-decoration:none; color:#0066CC}
a:hover { text-decoration:underline; color:#0066cc }
*
{ margin:0px; padding:0px }
ol.timeline
	{ list-style:none}ol.timeline li{ position:relative;border-bottom:1px #dedede dashed; padding:8px; }ol.timeline li:first-child{}
	.morebox
	{
	font-weight:bold;
	color:#333333;
	text-align:center;
	border:solid 1px #333333;
	padding:8px;
	margin-top:8px;
	margin-bottom:8px;
	-moz-border-radius: 6px;-webkit-border-radius: 6px;
	}
	.morebox a{ color:#333333; text-decoration:none}
	.morebox a:hover{ color:#333333; text-decoration:none}
	#container{margin-left:60px; width:580px }

</style>
</head>

<body>
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

							<ol class="timeline" id="updates">
							<?php


							$sql=mysqli_query($bd,"SELECT * from contenidos where tipo='POST' ORDER BY id,fecha_publicacion DESC LIMIT 3");
							while($row=mysqli_fetch_array($sql))
							{
								$msg_id=$row['id'];
								$message=$row['resumen'];
								?>
								<!-- <li> -->
								<?php echo'   <div class="row">
		                                <div class="col-md-7">
		                                  <a href="'.$row['alias'].'">
		                                    <img class="img-fluid rounded mb-3 mb-md-0" src="'.$row['urlimagen'].'" alt="">
		                                  </a>
		                                </div>
		                                <div class="col-md-5">
		                                  <h3>'.$row['titulo'].'</h3>
		                                  <p>'.$row['resumen'].'</p>
		                                  <a class="btn btn-primary" href="'.$row['alias'].'">Leer más..</a>
		                                </div>
		                              </div>

		      <hr> ';
								 ?>

								<!-- </li> -->
							<?php
							} ?>
							</ol>
		<div id="more<?php echo $msg_id; ?>" class="morebox">
		<a href="#" class="more" id="<?php echo $msg_id; ?>">more</a>
		</div>
	</div>
</div>
<?php include("panel_lateral.php")?>
</div>
</div>
</div>
<?php include("footer.php")?>

</body>
</html>
