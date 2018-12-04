<?php

class Meme extends Model {

  public $id, $img, $imgmemes;

    public static function displayLastMemes(){

      $db = Database::getInstance();
      //Requete SQL
    }

    public static function getMeme($id){
      $db = Database::getInstance();
      $sql = $db->prepare("select * from filesupload
              where id = :id");
      $sql->bindValue(':id', $id, PDO::PARAM_INT);
      $sql->execute();

      return $sql->fetch(PDO::FETCH_ASSOC);
    }


}
