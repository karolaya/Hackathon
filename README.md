# Becas para el Futuro

*Provisto por el equipo Submerged Fish*

## Dependencias
La plataforma web fue desarrollada en Ruby usando el framework **rails**. Parte de la herramienta está escrita en Python para proveer funcionalidades de aprendizaje de máquina y predicciones. En particular las dependencias de este proyecto son:

    ruby version 2.4.1
    rails version 5.1.1
    python version 3.5
    
En caso del framework **rails**, se gemas adicionales instálelas a través del comando:

    bundle install
    
## Despliegue
Para iniciar la aplicación, dirigase a la subcarpeta `hackaton` e inicie el servidor de **rails**:

    $ cd hackaton
    $ rails server
    
## Documentación
La aplicación fue desarrollada en **rails**, por lo tanto centraremos la documentación en los archivos de las carpetas `/config` y `/app`. El diseño de las entidades se resume de la siguiente forma:

               1     *               1     *
    Ministerio ------> Instituciones ------> Estudiantes
    
Las relaciones son tal cual se muestran, el ministerio tiene múltiples instituciones bajo su mando, las instituciones pertenecen a una sola entidad; a su vez las instituciones tienen, cada una, múltiples estudiantes, y cada uno de estos pertenece a una sola institución.

### Representación en Base de Datos
Cada una de las entidades mencionadas (excepto el ministerio, que hasta ahora está como superuser) tiene una representación en base de datos y relaciones de dependencia (FOREIGN KEYS). La representación de la institución es la siguiente:

 |   ID  | NOMBRE | CIUDAD |            TIPO            | EXTRATO | 
 |-------|--------|--------|----------------------------|---------|
 |ENTERO | TEXTO  |  TEXTO | PUBLICO O PRIVADO (ENTERO) | ENTERO  |

La representación del estudiante en la base de datos es la siguiente:

|   ID  | CÓDIGO | NOMBRE | INSTITUCIÓN |   NOTAS   |
|-------|--------|--------|-------------|-----------|
|ENTERO | ENTERO |  TEXTO |    ENTERO   | FLOTANTES |

