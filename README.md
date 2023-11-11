# TPE-WEB2

## Integrantes: 
Delgado, Silvina Bibiana (silvinadelgadotridon@gmail.com)  
Diaz, Diego Saúl (sauldiazdiegodiaz@gmail.com)  

## Temática del TPE
Portal de noticias  

## Descripción 
Se generó un servicio que permite consultar, agregar y editar diferentes registros de la base de datos db_diario. Asimismo, es posible realizar consultas filtrando por diversos campos, con posibilidad de realizar un paginado y un ordenamiento de forma ascendente o descendente.

## API 
La API es RESTful, la cual utiliza el protocolo de transferencia de hipertexto (HTTP), con formato de transferencia JSON. 

### Endpoints 
| Request           | Método | Endpoint                                      | Status |
|-------------------|--------|-----------------------------------------------|--------|
| Listar noticias   | GET    | http://localhost/TPE-WEB2-API/api/noticias    | 200    |
| Obtener noticia   | GET    | http://localhost/TPE-WEB2-API/api/noticias/:ID| 200    |
| Crear noticia     | POST   | http://localhost/TPE-WEB2-API/api/noticias    | 201    |
| Editar noticia    | PUT    | http://localhost/TPE-WEB2-API/api/noticias/:ID| 201    |

#### Listar noticias 
Retorna la lista de todas las noticias de la base de datos. 

#### Obtener noticia 
Devuelve una única noticia con el id indicado. 

#### Crear noticia 
Agrega una nueva noticia y la almacena en la base de datos. Para cargar los datos, se utiliza una salida en formato JSON escribiendo en el body de la solicitud. 
Ejemplo: 

#### Editar noticia 
Edita una nueva noticia y la almacena en la base de datos. Para cargar los datos, se utiliza una salida en formato JSON escribiendo en el body de la solicitud. 
Ejemplo: 

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
| 400    | "Bad request"           |
| 404    | "Not found"             |
| 500    | "Internal server error" |
