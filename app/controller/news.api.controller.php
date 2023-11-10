<?php
    require_once 'app/controller/api.controller.php';
    require_once 'app/model/news.model.php';

    class NewsApiController extends ApiController {
        private $model;

        function __construct() {
            parent::__construct();
            $this->model = new NewsModel();
        }

        function get($params = []) {
            
            if (empty($params)){
                $news = $this->model->getNews();
                $this->view->response($news, 200);
            } else {
                $news = $this->model->getNewsById($params[':ID']);
                if(!empty($news)) {
                    $this->view->response($news, 200);
                }else{
                    $this->view->response(
                        'La tarea con el id='.$params[':ID'].' no existe.'
                        , 404);
                }
                
            }
        }


        function create($params = []) {
    
        }

        function update($params = []) {
            $id = $params[':ID'];
            $news = $this->model->getNewsById($id);

            if($news) {
                $body = $this->getData();
                $titulo = $body->titulo;
                $contenido = $body->contenido;
                $fecha = $body->fecha;
                $hora = $body->hora;
                $idSeccion = $body->id_seccion;
                $this->model->updateNews($id, $titulo, $contenido, $fecha, $hora, $idSeccion);

                $this->view->response('La noticia ha sido actualizada. Número de id='.$id , 200);
            } else {
                $this->view->response('La noticia no existe.', 404);
            }
        }
    }
