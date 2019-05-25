<?php require_once(dirname(__FILE__) . '/../setting/core.php' ); ?>
<!DOCTYPE html>
<html lang="es">
<head>



  <title><?= site_info('titulo') .' - '. page_info('titulo') ?></title>
</head>
<body>
	<!-- Navigation & Logo-->
	<?php include ("mainmenu.php");?>


 	 <?= page_info('contenido') ?>

	


</body>
</html>
