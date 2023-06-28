<?php

require_once "conexion.php";

class ModeloClientes
{

    /*=============================================
	MOSTRAR USUARIOS
	=============================================*/

    static public function mdlMostrarClientes($campos, $tabla, $item, $valor)
    {

        if ($item != null) {

            $stmt = Conexion::conectar()->prepare("SELECT $campos FROM $tabla WHERE $item = :$item");

            $stmt->bindParam(":" . $item, $valor, PDO::PARAM_STR);

            $stmt->execute();

            return $stmt->fetch();
        } else {

            $stmt = Conexion::conectar()->prepare("SELECT $campos FROM $tabla");

            $stmt->execute();

            return $stmt->fetchAll();
        }


        $stmt->close();

        $stmt = null;
    }

    /*=============================================
	REGISTRO DE CLIENTE
	=============================================*/

    static public function mdlIngresarCliente($tabla, $datos)
    {

        $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre_cliente, email_contacto,  idpais) VALUES (:nombre_cliente, :email_contacto, :idpais)");

        $stmt->bindParam(":nombre_cliente", $datos["nombre_cliente"], PDO::PARAM_STR);
        $stmt->bindParam(":email_contacto", $datos["email_contacto"], PDO::PARAM_STR);
        $stmt->bindParam(":idpais", $datos["idpais"], PDO::PARAM_INT);


        if ($stmt->execute()) {

            return "ok";
        } else {

            return "error";
        }

        $stmt->close();

        $stmt = null;
    }

    /*=============================================
	EDITAR CLIENTE
	=============================================*/

    static public function mdlEditarCliente($tabla, $datos)
    {

        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre_cliente = :nombre_cliente, email_contacto = :email_contacto, idpais = :idpais WHERE id = :id");

        $stmt->bindParam(":nombre_cliente", $datos["nombre_cliente"], PDO::PARAM_STR);
        $stmt->bindParam(":email_contacto", $datos["email_contacto"], PDO::PARAM_STR);
        $stmt->bindParam(":idpais", $datos["idpais"], PDO::PARAM_STR);
        $stmt->bindParam(":id", $datos["id"], PDO::PARAM_STR);

        if ($stmt->execute()) {

            return "ok";
        } else {

            return "error";
        }

        $stmt->close();

        $stmt = null;
    }

    /*=============================================
	ACTUALIZAR USUARIO
	=============================================*/

    /*  static public function mdlActualizarUsuario($tabla, $item1, $valor1, $item2, $valor2)
    {

        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

        $stmt->bindParam(":" . $item1, $valor1, PDO::PARAM_STR);
        $stmt->bindParam(":" . $item2, $valor2, PDO::PARAM_STR);

        if ($stmt->execute()) {

            return "ok";
        } else {

            return "error";
        }

        $stmt->close();

        $stmt = null;
    } */

    /*=============================================
	BORRAR USUARIO
	=============================================*/

    static public function mdlBorrarCliente($tabla, $datos)
    {

        $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

        $stmt->bindParam(":id", $datos, PDO::PARAM_INT);

        if ($stmt->execute()) {

            return "ok";
        } else {

            return "error";
        }

        $stmt->close();

        $stmt = null;
    }
}
