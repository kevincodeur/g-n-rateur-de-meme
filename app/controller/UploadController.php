<?php

class UploadController extends Controller {

    public function saveMeme(){
        $image = '';

        if(isset($_FILES['imgupload'])){
            if($saveMeme = Upload::saveMeme()){
                $image = Meme::getMeme($saveMeme);
            }
        }

        $template = $this->twig->loadTemplate('/Meme/index.html.twig');
        echo $template->render(array(
          'image'  => $image
        ));
    }

    
}
?>