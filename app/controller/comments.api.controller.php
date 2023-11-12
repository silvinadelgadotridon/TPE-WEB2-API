<?php
require_once 'app/controller/api.controller.php';
require_once 'app/model/comments.api.model.php';

class CommentsApiController extends ApiController
{
    private $model;

    function __construct()
    {
        parent::__construct();
        $this->model = new CommentsApiModel();
        $this->view = new ApiView();
    }

    public function createComment(){
        $body = $this->getData();

        # Compruebo que no esta vacio
        if(!empty($body->contenido) && !empty($body->id_noticia)){
            $this->model->createComment($body->contenido, $body->id_noticia);
            $this->view->response('Comentario insertado correctamente', 201);
        } else {
            $this->view->response('Faltan campos por completar', 400);
            return;
        }
    }

}


