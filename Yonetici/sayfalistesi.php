 <?php 

 
    $dizi = array();
    $db = new PDO("mysql:host=localhost;dbname=onyil_bilisim;","root","");
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); 

    $query = $db->query('select * from sayfa where SayfaTipi_ID="'.$_GET["id"].'"' , PDO::FETCH_ASSOC); 

     foreach ($query as $key => $value) {
        $dizi[$key] = $value;
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
                    <h2>Sayfa Listesi</h2> 
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
          	
            </div> 
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                          <div class="ibox-title">
                            <h5><a href="/Onyil/Yonetici/Sayfa?id=0&id2=<?php echo $_GET["id"]; ?>" >Sayfa Ekle  <i class="fa fa-plus  "></i></a></h5> 
                        </div> 
                        <div class="ibox-content"> 
                            <div class="table-responsive"> 
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Sayfa ID</th>
                                        <th>Sayfa Adı </th> 
                                        <th>Tarih</th> 
                                        <th>İşlemler</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php  

                                       
                                            foreach ($dizi as $key => $value) { 
                                                echo "<tr> 
                                                    <td>".$dizi[$key]["SayfaID"]."</td>
                                                    <td>".$dizi[$key]["Title"]."</td>
                                                    <td>".$dizi[$key]["Tarih"]."</td>
                                                    <td><a href='/Onyil/Yonetici/Sayfa?id=".$dizi[$key]["SayfaID"]."'><i class='fa fa-pencil'></i></a> | <a href='/Onyil/Yonetici/sayfalistesi?id=".$dizi[$key]["SayfaID"]."'><i class='fa fa-edit'></i></a></td>

                                                </tr>"; 
                                            } 
                                         ?>    
                                    </tbody>
                                </table>
                            </div>

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
