<?php

class ControladorPaises
{



    /*=============================================
	MOSTRAR USUARIO
	=============================================*/

    static public function ctrMostrarPaises($item, $valor)
    {

        $tabla = "tb_paises";

        $respuesta = ModeloPaises::mdlMostrarPaises($tabla, $item, $valor);

        return $respuesta;
    }
}
