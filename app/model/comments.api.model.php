<?php
#incluye el modelo
require_once 'model.php';

#Se extiende la clase model que hereda propiedades y metodos de Model
class CommentsApiModel extends Model{
    #se borró private db porque ya esta definida en la clase Model
    #se borró la funcion construct

    public function createComment($comment, $id) {
        $query = $this->db->prepare('INSERT INTO comentarios(contenido, id_noticia) VALUES(?,?)');
        $query->execute([$comment, $id]);
        return $this->db->lastInsertId();
    }

}
