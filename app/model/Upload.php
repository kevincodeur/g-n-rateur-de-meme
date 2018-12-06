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
                    
                    $image = imagecreatefromjpeg($file_tmp_name);

                    $texttop = strtoupper($_POST['txthaut']);
                    $textbot = strtoupper($_POST['txtbas']);
                    $font = './assets/impact.ttf';                         
                    $ext = '';


                    $boxtop = imagettfbbox(45, 0,$font, $texttop);
                    $text_widthtop = abs($boxtop[2]) - abs($boxtop[0]);
                    $text_heighttop = abs($boxtop[5]) - abs($boxtop[3]);
                    $image_widthtop = imagesx($image);
                    $image_heighttop = imagesy($image);
                    $xt = ($image_widthtop - $text_widthtop) / 2;
                    $yt = ($image_heighttop/6 + $text_heighttop) / 2;
                
                    $boxbot = imagettfbbox(45, 0,$font, $textbot);
                    $text_widthbot = abs($boxbot[2]) - abs($boxbot[0]);
                    $text_heightbot = abs($boxbot[6]) - abs($boxbot[3]);
                    $image_widthbot = imagesx($image);
                    $image_heightbot = imagesy($image);
                    $xb = ($image_widthbot - $text_widthbot) / 2;
                    $yb = ($image_heightbot*1.9 + $text_heightbot) / 2;

                    $noir = imagecolorallocate($image, 0, 0, 0);
                    $blanc = imagecolorallocate($image,255,255,255);
                    imagettftext($image,45,0,$xt,$yt,$blanc,$font,$texttop);
                    imagettftext($image,45,0,$xb,$yb,$blanc,$font,$textbot);
 
                    $memeFileName = 'assets/imgupload/mememodif-'.$file_name;
                    imagejpeg($image, $memeFileName);
                    imagedestroy($image);

                    $db = Database::getInstance();
                    $req = $db->prepare('INSERT INTO filesupload (name,file_url,file_url_modif) VALUES (?,?,?)');
                    $req->execute(array($file_name, $file_dest, $memeFileName));
                    return $db->lastInsertID();                    
               
            } else {
                return false;
            }
        }
    }
    
    
}
?>