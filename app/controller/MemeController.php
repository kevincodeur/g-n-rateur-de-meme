<?php

class MemeController extends  Controller {
  public function displayLastMemes(){
      $template = $this->twig->loadTemplate('/Page/meme.html.twig');
      echo $template->render(array());
  }
}
