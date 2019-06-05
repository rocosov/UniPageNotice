<?php
$path = dirname(__FILE__);
require_once( $path . '/../../../setting/config.php');
require_once( $path . '/../../../setting/mysql.php');

function cargar_datos_configuracion(){
   $mysql = new Mysql();
   $sql = <<<SQL
   SELECT * FROM configuracion LIMIT 1
SQL;
$res = $mysql->search($sql);
   $res  = $res[0];
   return $res;
}
function cargar_datos_categoria(){
	  $mysql = new Mysql();
	  $sql = <<<SQL
	  SELECT id,titulo FROM categoria
SQL;
  $options = $mysql->search($sql);
  return $options;
}

function retornar_tipo_contenido(){
  return ['POST' => 'Post','PAGE'=>'Página',  'EVENTO' => 'Evento'];
}
function retornar_tipo_categoria(){
  return ['1'=>'Educacion', '2' => 'Ciencias'];
}

function cargar_datos_contenidos(){

   $mysql = new Mysql();
   $sql = <<<SQL
   SELECT * FROM contenidos
SQL;
   $res = $mysql->search($sql);
   return $res;
   }
   function cargar_contenido($id){

    if($id > 0){
      $mysql = new Mysql();
      $sql = <<<SQL
      SELECT * FROM contenidos WHERE id = '$id'
SQL;
      $res = $mysql->search($sql);
      $res = $res[0];

      $type = $res['tipo'];

    }else{
      $res = array();
    }
    return $res;
    }
?>
