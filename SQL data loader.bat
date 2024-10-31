@echo off
setlocal

rem Define variables
set SERVER=localhost           rem Cambia esto si tu servidor no es local
set DATABASE=AirBnB             rem Nombre de la base de datos
set USER=usuario                rem Usuario de SQL Server (si es necesario)
set PASSWORD=contraseña         rem Contraseña del usuario (si es necesario)

rem Usar autenticación de Windows (comenta o elimina las líneas USER y PASSWORD si usas autenticación Windows)
rem sqlcmd -S %SERVER% -i "ruta-relativa\1 Creacion BD AirBnB.sql"

rem Ejecutar el script para crear la base de datos
sqlcmd -S %SERVER% -d master -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\1 Creacion BD AirBnB.sql"
if errorlevel 1 (
    echo Error al ejecutar el script de creación de la base de datos.
    exit /b 1
)

rem Ejecutar el resto de los scripts para cargar los datos
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.1 Carga datos host.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.2 Carga datos Propiedades.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.3 Carga datos paises.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.4 Carga datos ciudades.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.5 Carga datos Reviews - parte 1.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.5 Carga datos Reviews - parte 2.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.5 Carga datos Reviews - parte 3.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.5 Carga datos Reviews - parte 4.sql"
sqlcmd -S %SERVER% -d %DATABASE% -U %USER% -P %PASSWORD% -i ".\2 SQL Database y Queries para carga\2.5 Carga datos Reviews - parte 5.sql"

echo "Todos los scripts han sido ejecutados con éxito."
endlocal
