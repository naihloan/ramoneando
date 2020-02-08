> git log -S "some_string_you_know"

## Section 3 | Terminal UNIX

##### 13. Búsqueda de texto y ficheros (archivos)

    grep ^root /etc/passwd
    grep root:/bin/bash$ /etc/passwd
    grep -n error /var/log/* [línea de coincidencia]
    grep -n error /var/log/auth.log
    grep -c error /var/log/* [cantidad de coincidencias]
    ls -lh / | grep bin
    find /etc -name "*.conf"
    find . -iname "prueba.*"

## Section 4 | Git

##### 17. Configurar Usuario

    git config --global user.name "nilon"
    git config --global user.email "<nilon@nilon.com>"

##### 19. Crear un repositorio

    ls -lh
    git init

##### 20. Clonar repositorios

    git status
    git clone https://github.com/victorobs proyectoclonadonube
    ls -lha

##### 21. Espacio de trabajo

    git add cadaarchivo.html
    git add .
    git rm --cached paginatal.html


##### 22. Status, add y diff

    para omitir cambios (archivo vuelve a estado original si recargo):
    git checkout algunapagina.html
    para revisar cambios:
    git diff algunapagina.html

##### 23. Gitignore

    touch basededatos.sql
    touch .gitignore
    nano .gitignore
    [agregamos una línea al archivo .gitignore: ./basededatos.sql]

##### 24. Commit y versiones

    git log --oneline
    git commit -am "cambios en texto de la página"
    git diff númerotal númerotalotro

##### 25. Reset y checkout

    volver atrás cambios:
    git reset .
    o bien:
    git reset HEAD index.html
    o bien:
    git checkout index.html

##### 26. Deshacer commit

    eliminar último commit:
    git reset (--hard) HEAD(~0--999)
    para verificar:
    git status / git log

##### 27. Volver a un commit anterior

    git log --oneline
    revisar a qué numero de commit para volver y:
    git checkout 2472347
    ... si quiero mezclar con commit actual, entonces generar otra rama de desarrollo

##### 28. Buscar commits

    

##### 2X

##### 2X

##### 2X




