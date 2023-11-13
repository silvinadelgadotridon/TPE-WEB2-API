# TPE-WEB2

------------  

## Integrantes: 
*Delgado, Silvina Bibiana (silvinadelgadotridon@gmail.com)*
*Diaz, Diego Saúl (sauldiazdiegodiaz@gmail.com)*  

## Temática del TPE
Portal de noticias  

## Descripción 
Se generó un servicio que permite consultar, agregar y editar diferentes registros de la base de datos db_diario. Asimismo, es posible realizar consultas filtrando por diversos campos, con posibilidad de realizar un paginado y un ordenamiento de forma ascendente o descendente. 

## API 
La API es RESTful y utiliza el protocolo de transferencia de hipertexto (HTTP), con formato de transferencia JSON. 

### Endpoints 
| Request            | Método | Endpoint                                        | Status |
|------------------- |--------|-------------------------------------------------|--------|
| Listar noticias    | GET    | http://localhost/TPE-WEB2-API/api/noticias    | 200    |
| Obtener noticia    | GET    | http://localhost/TPE-WEB2-API/api/noticias/:ID| 200    |
| Crear noticia      | POST   | http://localhost/TPE-WEB2-API/api/noticias    | 201    |
| Editar noticia     | PUT    | http://localhost/TPE-WEB2-API/api/noticias/:ID| 201    |
| Crear comentario   | POST   | http://localhost/TPE-WEB2-API/api/comentarios | 201    |
| Obtener token      | GET    | http://localhost/TPE-WEB2-API/api/user/token  | 200    | 


---

#### *Listar noticias* 
Retorna la lista de todas las noticias de la base de datos. 

#### *Obtener noticia* 
Devuelve una única noticia con el id indicado. 

#### *Crear noticia* 
Agrega una nueva noticia y la almacena en la base de datos. Para cargar los datos, se utiliza una salida en formato JSON escribiendo en el body de la solicitud. 
- **Ejemplo:**  
```json
{
    "id": 29,
    "titulo": "titulo nuevo",
    "contenido": "Contenido nuevo.",
    "fecha": "11/10/23",
    "hora": "15:37:00",
    "id_seccion": 7
}
```
#### *Editar noticia* 
Edita una nueva noticia y la almacena en la base de datos. Para cargar los datos, se utiliza una salida en formato JSON escribiendo en el body de la solicitud. 

- **Ejemplo:** 
```json
{
    "id": 29,
    "titulo": "titulo actualizado",
    "contenido": "Contenido actualizado.",
    "fecha": "11/10/23",
    "hora": "15:37:00",
    "id_seccion": 7
}
```

#### *Crear comentario* 
Agrega un nuevo comentario y lo almacena en la base de datos. Para cargar los datos, se utiliza una salida en formato JSON escribiendo en el body de la solicitud. 
- **Ejemplo:**
```json
 {
     "contenido":"Nuevo comentario",
     "id_noticia":29   
    }
```
#### *Obtener token* 
Dentro de la plataforma Postman, en la pestaña "Authorization", seleccionar la opción Type-> Basic Auth y colocar el usuario y contraseña: 


| Usuario      | Contraseña  |
|-------------|---------------|
| webadmin | admin           |
| webuser     | user             |


Al enviar la consulta utilizando GET, se generan los token. 
Luego de generar un token, se deberá copiar y pegar  en la ventana "Authorization", Type->Bearer Token. Para el caso del administrador, se autorizan las acciones de agregar y modificar noticias.


---


### Parámetros 

| Parámetro    | Descripción                                     | Valor por Defecto |
|--------------|-------------------------------------------------|-------------------|
| column       | Columna por la que se filtran los datos.        | -                 |
| filtervalue  | Valor por el cual se realiza el filtrado.       | -                 |
| orderBy      | Columna por la cual se ordenan los datos.       | id                |
| order        | Tipo de ordenamiento (ascendente o descendente). | desc              |
| page         | Número de página que se desea observar.         | 1                 |
| limit        | Cantidad de registros mostrados por página.     | 4                 |


### Respuestas 
| Status | Código                  |
|--------|-------------------------|
| 200    | "OK"                    |
| 201    | "Created"               |
| 204    | "No content"            |
| 400    | "Bad request"           |
| 401    | "Unauthorized"          |
| 403    | "Forbidden"             |
| 404    | "Not found"             |
| 500    | "Internal server error" |
