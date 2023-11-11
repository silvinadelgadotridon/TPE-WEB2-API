<?php

require_once 'config.php';

function base64url_encode($data){
    return rtrim(strtr(base64_encode($data), "+/", "-_"), "=");
}

class AuthHelper {
    function getAuthHeaders(){
        $header = "";
        if(isset($_SERVER['HTTP_AUTHORIZATION'])){
            $header = $_SERVER['HTTP_AUTHORIZATION'];
        } elseif(isset($_SERVER['REDIRECT_HTTP_AUTHORIZATION'])){
            $header = $_SERVER['REDIRECT_HTTP_AUTHORIZATION'];
        }

        return $header;
    }

    function createToken($payload){
        $header = array(
            "alg" => "HS256", 
            "typ" => "JWT" #token tipo json
        );

        # Determina el tiempo de vencimiento del token
        $payload ['exp'] = time() + JWT_EXP;

        # Se codifica en base 64 y luego en JSON string el pay y el head
        $header = base64url_encode(json_encode($header));
        $payload = base64url_encode(json_encode($payload));

        # Se crea el secreto con el que se firma el token
        $signature = hash_hmac('SHA256', '$header.$payload', JWT_KEY, true);
        $signature = base64url_encode($signature);

        # Creacion del token concatenando header, payload y firma
        $token = "$header.$payload.$signature";

        return $token;
    }

    function verify($token){
        # header.payload.signature

        # Se almacena en un array [header, payload, signature]
        $token = explode(".", $token);

        # Desglose del token
        $header = $token[0];
        $payload = $token[1];
        $signature = $token[2];

        # Se vuelve a firmar el token 
        $newSignature = hash_hmac("SHA256", "$header.$payload", JWT_KEY, true);
        $newSignature = base64url_encode(json_encode($newSignature));

        # Se verifica si la nueva firma es igual a la anterior
        if($signature != $newSignature){
            return false;
        }

        # Decodificacion del payload del token
        $payload = json_decode(base64_decode($payload));

        # Verificacion del tiempo de vencimiento del token
        if($payload->exp < time()){
            return false;
        }
        

        return $payload;
    }

    function currentUser(){

        # Devuelve bearer $token
        $auth = $this->getAuthHeaders();

        # Guarda en un arreglo la palabra clave y el token
        $auth = explode(" ", $auth);

        # Verificacion del modo de autenticacion
        if($auth[0] != "Bearer") {
            return false;
        }

        # Se verifica el token y en caso correcto se devuelve el payload
        return $this->verify($auth[1]);
    }
}