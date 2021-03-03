
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
#con este comando se buscará desde la linea 123 deñ archivo file.txt hasta la linea 1234 , es necesario colocar la p
sed -n '123,1234p' file.txt
