<?php

class Router {

    public static function analyse($request){
        $result = array(
            'controller'    => 'Error',
            'action'        => 'error404',
            'params'        => array()
        );

        if($request === '' || $request === '/'){ // Route vers la page d'accueil
            $result['controller']   = 'Page';
            $result['action']       = 'index';
        } else {
            $parts = explode('/', $request);
            if($parts[0] == 'meme' && (count($parts) == 1 || $parts[1] == '')){

              $result ['controller'] = "Meme";
              $result ['action'] = "displayLastMemes";
              $result ['params']['limit'] = 10;
            } else if($parts[0] == 'saveMeme' && (count($parts) == 1 || $parts[1] == '')){ // Route vers la page de connexion
                $result['controller']       = 'Upload';
                $result['action']           = 'saveMeme';
            }
        }

        return $result;
    }

}
