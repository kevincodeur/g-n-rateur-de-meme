<?php

error_reporting(E_ALL ^ E_NOTICE | E_WARNING);
ini_set('display_errors', 'ON');

class Upload extends Model {

    public static function saveMeme(){
        if(!empty($_FILES)){
            $file_name = $_FILES['imgupload']['name'];
            $file_tmp_name = $_FILES['imgupload']['tmp_name'];
            $file_dest = 'assets/imgupload/' .$file_name;
            $file_extension = strrchr($file_name, ".");
            $extension_autorisees = array('.jpg', '.JPG', '.png', '.PNG', '.jpeg', '.JPEG', '.img', '.IMG');

            if(in_array($file_extension, $extension_autorisees)) {
                if(move_uploaded_file($file_tmp_name, $file_dest)) {
                    $db = Database::getInstance();
                    $req = $db->prepare('INSERT INTO filesupload (name,file_url) VALUES (?,?)');
                    $req->execute(array($file_name, $file_dest));
                    return $db->lastInsertID();
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }
}
?>