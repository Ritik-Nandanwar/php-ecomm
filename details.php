<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$con = mysqli_connect("localhost" , "root" , "","blog_samples");
if(mysqli_connect_error()){
    die("Connection Fail: " . mysqli_conect_error());
}
    if(isset($_GET['id'])){
        $id = mysqli_real_escape_string($con , $_GET['id']);
        $sql = "SELECT * FROM tblproduct WHERE id = $id";
        $results = mysqli_query($con , $sql);
        $album = mysqli_fetch_assoc($results);
        mysqli_free_result($results);
        mysqli_close($con);
        // print_r($album);

    }
?>
<?php

?>
<html><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Details Page</title>
</head>
    <body>
        <div class="detailsPageMain" style="  display: flex !important;
  align-items: center !important;
  justify-content: center !important;
  flex-direction: column !important;">
            <img style="margin-left:30%; margin:20px" width="400px" height="400px" src="<?php echo $album["image"]; ?>">
            <div class=""><?php echo $album["code"]; ?></div>

			<!-- <div class="product-tile-footer"> -->
			    <div class=""><?php echo $album["name"]; ?></div>
			    <div class=""><?php echo $album["price"]; ?></div>
		    <!-- </div> -->
			<a style="background-color: #ffffff;
				border: #d00000 1px solid;
				padding: 5px 10px;
				color: #d00000;
				text-decoration: none;
				border-radius: 3px;
				margin: 50px; " href="index.php" class="viewDetsBtn">Buy!</a>
        </div>
    </body>
</html>