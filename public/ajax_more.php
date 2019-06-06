
 <?php
include("config.php");


if(isSet($_POST['lastmsg']))
{
$lastmsg=$_POST['lastmsg'];
// $sql=mysqli_query($bd,"SELECT * from contenidos ORDER BY 1 DESC LIMIT 9");
// while($row=mysqli_fetch_array($sql))----

$result=mysqli_query($bd,"SELECT * from contenidos where id<'$lastmsg' AND TIPO='POST' order by 1 desc limit 3");
$count=mysqli_num_rows($result);
while($row=mysqli_fetch_array($result))
{
$msg_id=$row['id'];
$message=$row['resumen'];

?>


<li>
<?php echo $message;
 ?>

</li>


<?php
}


?>

<div id="more<?php echo $msg_id; ?>" class="morebox">
<a href="#" id="<?php echo $msg_id; ?>" class="more">more</a>
</div>

<?php
}
?>
