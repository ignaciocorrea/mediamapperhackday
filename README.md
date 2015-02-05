# mediamapperhackday
Creando formas para ver el esqueleto de la industria de medios. Nuestro objetivo más ambicioso es fomentar y apoyarnos para crear y mantener mapas locales de todos los medios de América Latina y porqué no, del mundo ;)

En este repositorio está el proyecto completo de mediamapper hecho en django-python. Se puede revisar el modelo de datos y como está estructurado el admin de las aplicaciones, medioschile y medioscolombia. Con un poco de experiencia en django se puede instalar el proyecto. La base de datos utilizada es MySQL. A veces el autodiscover de modelos de django no anda bien con MySQL, por lo que les recomiendo que en ese caso creen las tablas directo en la base de datos. Al mismo tiempo, si tienen el sistema corriendo en un apache2, a veces hay que reiniciarlo para que lea los cambios del admin. Más adelante, con más tiempo, subiré una guía para explicar paso a paso a quienes no tienen experiencia en django como correr el proyecto.

En el directorio dbs hay tres versiones de la base de datos: mysql, csv y json, las dos últimas por si quieren hacer experimentos con visualizaciones.

