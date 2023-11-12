<?php

# Requerir modelos, controladores y helpers
require_once 'app/controller/api.controller.php';
require_once 'app/helper/api.helper.php';
require_once 'app/model/user.model.php';

class UserApiController extends ApiController {
    private $model;
    private $helper;

    function __construct(){
        parent::__construct();
        $this->model = new UserModel();
        $this->helper = new AuthHelper();
    }

    function getToken($params = []){

        # Entrega el header de la request
        $basic = $this->helper->getAuthHeaders();

        # Verificacion del contenido del header
        if(empty($basic)){
            $this->view->response('No se enviaron encabezados', 401);
            return;
        }

        # Separacion de la palabra clave del par user y pass
        $basic = explode(" ", $basic);

        # Verificacion del modo de autenticacion
        if($basic[0] != "Basic"){
            $this->view->response('Los encabezados de autenticacion son incorrectos', 401);
            return;
        }

        # Decodificacion
        $userpass = base64_decode($basic[1]);
        # Desglose de user y pass
        $userpass = explode(":", $userpass);

        # Asignacion de user y pass a cada variable
        $user = $userpass[0];
        $pass = $userpass[1];


        # Datos del usuarios traidos de la base de datos
        $userdata = $this->model->get_user_by_username($user);
        //$userdata = [ "name" => $user, "id" => 123, "role" => 'ADMIN' ]; // Llamar a la DB

        if($user == $userdata->nombre && password_verify($pass, $userdata->password)) {
            // Usuario es válido
            $userdataObject = json_decode(json_encode($userdata), true);
            
            $token = $this->helper->createToken($userdataObject);
            $this->view->response($token, 200);
        } else {
            $this->view->response('El usuario o contraseña son incorrectos.', 401);
            return;
        }

    }
}