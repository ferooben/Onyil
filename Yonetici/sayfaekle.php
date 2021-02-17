 <?php 
 


$db = new PDO("mysql:host=localhost;dbname=onyil_bilisim;","root","");
$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); 
 
if ($_GET["id"] != 0) {

	$query = $db->query('update sayfa set Title="'.$_POST["Title"].'", Keywords = "'.$_POST["Keywords"].'", Description = "'.$_POST["Description"].'", H1="'.$_POST["H1"].'" where SayfaID ="'.$_GET["id"].'"',PDO::FETCH_ASSOC);
 
}
elseif ($_GET["id"]== 0) {
 
	$query = $db->prepare('insert into sayfa(Title,Keywords,Description,H1,Icerik,Tarih,Kullanici_ID,SayfaTipi_ID) values(:Title,:Keywords,:Description,:H1,:Icerik,:Tarih,:Kullanici_ID,:SayfaTipi_ID)');
	$query->bindValue('Title',$_POST["Title"],PDO::PARAM_STR);
	$query->bindValue('Keywords',$_POST["Keywords"], PDO::PARAM_STR);
	$query->bindValue('Description',$_POST["Description"], PDO::PARAM_STR);
	$query->bindValue('H1',$_POST["H1"],PDO::PARAM_STR);
	$query->bindValue('Icerik',$_POST["Icerik"], PDO::PARAM_STR);
	$query->bindValue('Tarih',date("m.d.y"),PDO::PARAM_STR);
	$query->bindValue('Kullanici_ID',intval("1"),PDO::PARAM_STR); 
	$query->bindValue('SayfaTipi_ID',$_GET["id2"],PDO::PARAM_STR);  
 	$query->execute();
} 
 
 
  ?>