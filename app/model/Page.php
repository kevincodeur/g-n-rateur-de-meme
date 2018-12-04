<?php

class Page extends Model {

  public $id, $img;
  public static function DisplayOnlyBasicImage(){
      $db = Database::getInstance();
      $sql = "SELECT * FROM `image`";
      $images = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
      return $images ;
  }
}

