<?php
#incluye el modelo
require_once 'model.php';

#Se extiende la clase model que hereda propiedades y metodos de Model
class NewsApiModel extends Model{
    #se borró private db porque ya esta definida en la clase Model
    #se borró la funcion construct
    public function getNews($column, $filtervalue, $orderBy, $order, $limit, $page)
    {

        $params = [];


        $offset = $page * $limit - $limit;

        $querySentence = "SELECT * FROM noticias ";

        if ($column != null) {
            $querySentence .= " WHERE  $column LIKE ? ";
            array_push($params, "$filtervalue%");
        }

        $querySentence .= " ORDER BY $orderBy $order LIMIT $limit OFFSET $offset";


        $query = $this->db->prepare($querySentence);
        $query->execute($params);
        $newss = $query->fetchAll(PDO::FETCH_OBJ);
        return $newss;
    }


    function insertNews($title, $content, $date, $hour, $id_section) {
        $query = $this->db->prepare('INSERT INTO noticias(titulo, contenido, fecha, hora, id_seccion) VALUES(?,?,?,?,?)');
        $query->execute([$title, $content, $date, $hour, $id_section]);
        return $this->db->lastInsertId();
    }

    function updateNews($id, $title, $content, $date, $hour, $sectionID){
        $query = $this->db->prepare('UPDATE noticias SET titulo = ?, contenido = ?, fecha = ?, hora = ?, id_seccion = ? WHERE id = ?');
        $query->execute([$title, $content, $date, $hour, $sectionID, $id]);
    }
        
    function getSectionByNews($id){
        $query = $this->db->prepare('SELECT seccion.nombre_seccion FROM seccion INNER JOIN noticias ON noticias.id_seccion = seccion.id_seccion WHERE noticias.id = ?');
        $query->execute([$id]);
        $filter = $query->fetchAll(PDO::FETCH_OBJ);
        return $filter;
    }

    function deleteNews($id) {
        $query = $this->db->prepare('DELETE FROM noticias WHERE id = ?');
        $query->execute([$id]);
    }


    function getNewsById($id) {
        $query = $this->db->prepare('SELECT * FROM noticias WHERE id = ?');
        $query->execute([$id]);    
        return $query->fetch(PDO::FETCH_OBJ);
    }

    public function getNewsBySectionId($sectionID){
        $query = $this->db->prepare('SELECT * FROM noticias WHERE id_seccion = ?');
        $query->execute([$sectionID]);

        return $query->fetchAll(PDO::FETCH_OBJ);
    }

}
