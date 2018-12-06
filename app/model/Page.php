<?php

class Page extends Model {

  public $id, $img;
  public static function DisplayOnlyBasicImage(){
      $db = Database::getInstance();
      $sql = "SELECT * FROM `filesupload` ORDER BY `id` DESC";
      $images = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
      return $images ;
  }
}

