<?php

class ControladorClientes
{



    /*=============================================
	MOSTRAR USUARIO
	=============================================*/

    static public function ctrMostrarClientes($item, $valor)
    {

        $tabla = "tb_clientes inner join tb_paises on tb_clientes.idpais = tb_paises.id";
        $campos = "tb_clientes.*, tb_paises.iso, tb_paises.nombre";

        $respuesta = ModeloClientes::MdlMostrarClientes($campos, $tabla, $item, $valor);

        return $respuesta;
    }
}
