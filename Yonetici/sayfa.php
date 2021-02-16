 
<?php  
 


$dizi = array();
$db = new PDO("mysql:host=localhost;dbname=onyil_bilisim;","root","");

 

$query = $db->query('select * from sayfa where  SayfaID ="'.$_GET["id"].'"' , PDO::FETCH_ASSOC); 
if($query){
	foreach ($query as $row  => $value) {
	$dizi[$row] = $value;
} 

if ($_GET["id"]== 0) {
	$dizi[0]["SayfaID"]= 0;
	$dizi[0]["Title"]="";
	$dizi[0]["Keywords"]="";
	$dizi[0]["Description"]="";
	$dizi[0]["H1"]="";
	$dizi[0]["Icerik"]="";
} 


}
 
 
 ?>


<!DOCTYPE html>
<html>


<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>

   <?php include 'head.php'; ?>
</head>

<body>
    <div id="wrapper">
       
       <?php include 'header.php'; ?>

           <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
       

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Sayfa Ekle</h2> 
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
          	
            </div> 
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox "> 
                        <div class="ibox-content">
                            <form method="Post" action="/Onyil/Yonetici/sayfaekle?id=<?php echo $dizi[0]['SayfaID']; ?>&id2=<?php echo $_GET['id2']; ?>">
                                <div class="form-group  row"><label class="col-sm-2 col-form-label">Sayfa Adı</label>

                                    <div class="col-sm-10"><input type="text" name="Title" class="form-control" value="<?php echo $dizi[0]["Title"]; ?>" ></div>
                                </div> 
                                  <div class="form-group  row"><label class="col-sm-2 col-form-label">Keywords</label>

                                    <div class="col-sm-10"><input type="text" name="Keywords" class="form-control" value="<?php echo $dizi[0]["Keywords"]; ?>"></div>
                                </div> 
                                  <div class="form-group  row"><label class="col-sm-2 col-form-label">Description</label>

                                    <div class="col-sm-10"><input type="text" name="Description" class="form-control" value="<?php echo $dizi[0]["Description"]; ?>"></div>
                                </div> 
                                  <div class="form-group  row"><label class="col-sm-2 col-form-label">h1</label>

                                    <div class="col-sm-10"><input type="text" name="H1" class="form-control" value="<?php echo $dizi[0]["H1"]; ?>"></div>
                                </div> 
                                   
                                   
                                    <div class="wrapper wrapper-content">

							            <div class="row">
							                <div class="col-lg-12">
							                <div class="ibox ">
							                    <div class="ibox-title">
							                        <h5>Sayfa İçeriği</h5>
							                       
							                    </div>
							                    <div class="ibox-content no-padding">
 
							                        <textarea class="summernote" name="Icerik"> <?php echo $dizi[0]["Icerik"]; ?></textarea>

							                    </div>
							                </div>
							            </div>
							            </div> 

	          						</div>
                                  
                                    <div class="col-sm-4 col-sm-offset-2"> 
                                        <button class="btn btn-primary btn-sm" type="submit">Kaydet</button>
                                    </div> 
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
     

        </div>
    </div>

     <?php include 'footer.php'; ?>
       
</body>
 
</html>
