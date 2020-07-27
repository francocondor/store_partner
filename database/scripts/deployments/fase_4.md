Para la fase 4.1 es necesario realizar algunos cambios en la base de datos. Por lo que se debe ejecutar los siguientes scripts sql. 

- Agregar campo product_description_postpaid. Ejecutar el script ubicado en:

````
2_hu07TblProducts/agrega-columna-product-description-postpaid.sql
````

- Modifica procedimiento almacenado que implementa mejor contrato/plan
````
3_hu5bestVariation/3-modifica-PA_productSearchPostpago.sql
````

- Cambiar variable de entorno CONTRACT_ID a 0 del archivo "/path-del-proyecto/.env". El valor debe verse asi.

````
CONTRACT_ID=0
````

- Agregar variable de entorno que permite definir el identificador del contrato "Sin contrato". Es utilizado para mostrar el tipo de contrato en el cat'alogo de productos
````
CATALOG_WITHOUT_CONTRACT_ID=2
````