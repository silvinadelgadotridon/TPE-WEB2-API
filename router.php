<?php
    require_once 'libs/router.php';

    require_once 'app/controller/news.api.controller.php';

    $router = new Router();

    #                 endpoint      verbo     controller           método
    $router->addRoute('noticias',     'POST',   'NewsApiController', 'createNews');
    $router->addRoute('noticias',     'GET',    'NewsApiController', 'getAll'   ); # NewsApiController->get($params)
    $router->addRoute('noticias/:ID', 'GET',    'NewsApiController', 'get'   );
    $router->addRoute('noticias/:ID', 'PUT',    'NewsApiController', 'update');
    
   
    
    #               del htaccess resource=(), verbo con el que llamo GET/POST/PUT/etc
    $router->route($_GET['resource']        , $_SERVER['REQUEST_METHOD']);
