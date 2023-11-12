<?php
require_once 'app/controller/api.controller.php';
require_once 'app/model/news.api.model.php';
require_once 'app/helper/api.helper.php';
class NewsApiController extends ApiController
{
    private $model;
    private $helper;

    function __construct()
    {
        parent::__construct();
        $this->model = new NewsApiModel();
        $this->view = new ApiView();
        $this->helper = new AuthHelper();
    }

    function getAll($params = null)
    {

        try {
            $column =  $_GET["column"] ?? null;
            $filtervalue = $_GET["filtervalue"] ?? null;
            $orderBy = $_GET["orderBy"] ?? "id";
            $order = $_GET["order"] ?? "desc";
            $limit = $_GET["limit"] ?? 4;
            $page =  $_GET["page"] ?? 1;


            $newss = $this->model->getNews($column, $filtervalue, $orderBy, $order, $limit, $page);


            if ($newss) {
                $this->view->response($newss, 200);
            } else {
                $this->view->response("No se encontraron noticias.", 204);
                $this->view->response("Puede realizar una nueva busqueda.", 205);
                return;
            }
        } catch (Exception $e) {
            $this->view->response($e->getMessage(), 500);
        }
    }

    public function get($params = null)
    {
        $id = $params[':ID'];
        $news = $this->model->getNewsById($id);

        if ($news)
            # se agrego el codigo de estado a la respuesta
            $this->view->response($news, 200);
        else {
            $this->view->response("La noticia solicitada con id= $id no existe", 404);
            return;
        }
    }



    public function createNews($params = null)
    {
        # Verificacion de usuario, permisos para hacer POST
        $user = $this->helper->currentUser();
        if (!$user) {
            $this->view->response("Unauthorized", 401);
            return;
        }

        if ($user->rol != "1") {
            $this->view->response("Forbidden", 403);
            return;
        }

        $news = $this->getData();


        if (empty($news->titulo) || empty($news->contenido) || empty($news->fecha) || empty($news->hora) || empty($news->id_seccion)) {
            $this->view->response("Debe completar todos los datos", 400);
            return;
        } else {

            $id = $this->model->insertNews($news->titulo, $news->contenido, $news->fecha, $news->hora, $news->id_seccion);
            $this->view->response($id, 201);
        }
    }


    function update($params = [])
    {
        # Verificacion de usuario, permisos para hacer POST
        $user = $this->helper->currentUser();
        if (!$user) {
            $this->view->response("Unauthorized", 401);
            return;
        }

        if ($user->rol != "1") {
            $this->view->response("Forbidden", 403);
            return;
        }

        $id = $params[':ID'];
        $news = $this->model->getNewsById($id);

        if ($news) {
            $body = $this->getData();
            $titulo = $body->titulo;
            $contenido = $body->contenido;
            $fecha = $body->fecha;
            $hora = $body->hora;
            $idSeccion = $body->id_seccion;
            $this->model->updateNews($id, $titulo, $contenido, $fecha, $hora, $idSeccion);

            $this->view->response('La noticia ha sido actualizada. Número de id=' . $id, 200);
        } else {
            $this->view->response('La noticia no existe.', 404);
            return;
        }
    }
}
