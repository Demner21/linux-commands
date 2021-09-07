
#GREP
#usando grep para busqueda con regex de hora por ejemplo
#notese que se usa \ para separar el uso del caracter [
grep -rnw '\[02-03-2021 17:41:[[:digit:]]\{2\}\.[[:digit:]]\{1,3\}\] (Handler.java:55)*' * | head -10

#buscara por ejemplo
#SERVER: osbServer_01 [DEBUG] [02-03-2021 17:41:25.260] (Handler.java:55) - [ID: 202103020541242605] 
#SERVER: osbServer_01 [DEBUG] [02-03-2021 17:41:32.867] (Handler.java:55) - [ID: 6ec0d543-695e-4652-b447-8d01c4e96590] 
#SERVER: osbServer_01 [DEBUG] [02-03-2021 17:41:32.868] (Handler.java:55) - [ID: 6ec0d543-695e-4652-b447-8d01c4e96590] 
#SERVER: osbServer_01 [DEBUG] [02-03-2021 17:41:46.388] (Handler.java:55) - [ID: 6d994c6e-b9bd-43db-8389-955301b8f868] 
#SERVER: osbServer_01 [DEBUG] [02-03-2021 17:41:46.388] (Handler.java:55) - [ID: 6d994c6e-b9bd-43db-8389-955301b8f868] 


#SED
#con este comando se buscará desde la linea 123 deL archivo file.txt hasta la linea 1234 , es necesario colocar la p
sed -n '123,1234p' file.txt

#para reemplazar en un archivo los espacios en blanco junto a un caracter, por ejemplo:
# abc      ;1233     ;4     ;09/08/56
#se convertirá a
# abc;1233;4;09/08/56
sed  -i 's/\s*;/;/g' file.txt

#FIND CON SED
#CON ESTE COMANDO SE BUSCARÁ EN LA CARPETA ACTUAL TODOS LOS ARCHIVOS pom.xml  Y DENTRO DE ELLOS SE BUSCARÁ EL STRING ${buildReleaseVersion}
#EL CUAL SERÁ REEMPLAZADO POR 1.0.0
find .  -name 'pom.xml' -exec sed -i -e 's/${buildReleaseVersion}/1.0.0/g' {} \;

#en vim: reemplazar un string:
:%s/<search_string>/<replace_string>/g

#REEMPLAZAR TEXTO EN UN ARCHIVO CON EL COMANDO SED
#con este comando se reemplazará el texto TEXTO_A con TEMP
sed -i -e 's/TEXTO_A/TEMP/g' name_file


#
#DOCKER commands
#First delete containers that are not used.
docker ps -a | grep -v Up | awk '{ print $1; }' | xargs docker rm

#Delete all containers with none tags.
docker images | grep none | awk '{ print $3; }' | xargs docker rmi


#Listar los directorios y archivos en la carpeta actual
find . -type f -follow -print

