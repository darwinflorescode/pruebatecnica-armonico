<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/usuarios.controlador.php";
require_once "controladores/clientes.controlador.php";
require_once "controladores/paises.controlador.php";


require_once "modelos/usuarios.modelo.php";
require_once "modelos/Clientes.modelo.php";
require_once "modelos/Paises.modelo.php";


$plantilla = new ControladorPlantilla();
$plantilla->ctrPlantilla();
