<?php

class PageController extends Controller {

    public function index(){

      $images = Page::DisplayOnlyBasicImage();

        $template = $this->twig->loadTemplate('/Page/index.html.twig');
        echo $template->render(array(
          'images'  => $images
        ));
    }

    public function help(){
        $template = $this->twig->loadTemplate('/Page/help.html.twig');
        echo $template->render(array());
    }
}
