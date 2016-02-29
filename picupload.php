<?php
error_reporting(E_ALL); // or E_STRICT
ini_set("display_errors",1);

$target_dir = 'pics/';
require_once('functions.php');
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        print 'File is an image - '. $check["mime"] . '.';
        $uploadOk = 1;
    } else {
       print 'File is not an image.';
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    print 'Sorry, file already exists.';
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 5000000) {
    print 'Sorry, your file is too large.';
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    print 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.';
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    alert('Hiba történt.');
// if everything is ok, try to upload file
} else {
	//print_r($_FILES);
	//print $target_file;
	
	//$i=move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);
	//print_r($i);
	
	
	if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        //echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.<br>";
		
		$t=time();
		$ujname='pics/'.$_GET['id'].'_'.$t.'.'.$imageFileType;
		rename($target_file,$ujname);
		$command='insert into pics (url,carid) values("'.$ujname.'",'.$_GET['id'].');';
		//print $command;
		sql($command);
		
		alert('Képfeltöltés sikeres!');
		load($_SERVER['HTTP_REFERER']);
    } else {
	//	print 'hiba '.$uploadOk;
		
		alert('Hiba történt.');
		load($_SERVER['HTTP_REFERER']);
		
    }
}
?>