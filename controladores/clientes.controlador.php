<?php

class ControladorClientes
{



    /*=============================================
	MOSTRAR CLIENTES
	=============================================*/

    static public function ctrMostrarClientes($item, $valor)
    {
        if ($item > 0) {
            $tabla = "tb_clientes ";
            $campos = "*";
        } else {
            $tabla = "tb_clientes inner join tb_paises on tb_clientes.idpais = tb_paises.id";
            $campos = "tb_clientes.*, tb_paises.iso, tb_paises.nombre";
        }


        $respuesta = ModeloClientes::MdlMostrarClientes($campos, $tabla, $item, $valor);

        return $respuesta;
    }


    /*=============================================
	REGISTRO DE CLIENTE
	=============================================*/

    static public function ctrCrearCliente()
    {

        if (isset($_POST["nuevoNombreCliente"])) {

            if (
                preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevoNombreCliente"])
                && !empty($_POST['nuevoPais'])
            ) {


                $tabla = "tb_clientes";


                $datos = array(
                    "nombre_cliente" => $_POST["nuevoNombreCliente"],
                    "email_contacto" => $_POST["nuevoEmailContacto"],
                    "idpais" => $_POST["nuevoPais"],
                );

                $respuesta = ModeloClientes::mdlIngresarCliente($tabla, $datos);

                if ($respuesta == "ok") {

                    echo '<script>

					swal({

						type: "success",
						title: "¡El cliente ha sido guardado correctamente!",
						showConfirmButton: true,
						confirmButtonText: "Cerrar"

					}).then(function(result){

						if(result.value){
						
							window.location = "clientes";

						}

					});
				

					</script>';
                }
            } else {

                echo '<script>

					swal({

						type: "error",
						title: "¡El nombre del cliente y/o Pais no puede ir vacío o llevar caracteres especiales!"
						showConfirmButton: true,
						confirmButtonText: "Cerrar"

					}).then(function(result){

						if(result.value){
						
							window.location = "clientes";

						}

					});
				

				</script>';
            }
        }
    }



    /*=============================================
	EDITAR  CLIENTE
	=============================================*/

    static public function ctrEditarCliente()
    {

        if (isset($_POST["editarNombreCliente"])) {

            if (
                preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editarNombreCliente"])
                && !empty($_POST['editarPais'])
            ) {


                $tabla = "tb_clientes";


                $datos = array(
                    "nombre_cliente" => $_POST["editarNombreCliente"],
                    "email_contacto" => $_POST["editarEmailContacto"],
                    "idpais" => $_POST["editarPais"],
                    "id" => $_POST["editaridCliente"]
                );

                $respuesta = ModeloClientes::mdlEditarCliente($tabla, $datos);

                if ($respuesta == "ok") {

                    echo '<script>

					swal({

						type: "success",
						title: "¡El cliente ha sido modificado correctamente!",
						showConfirmButton: true,
						confirmButtonText: "Cerrar"

					}).then(function(result){

						if(result.value){
						
							window.location = "clientes";

						}

					});
				

					</script>';
                }
            } else {

                echo '<script>

					swal({

						type: "error",
						title: "¡El nombre del cliente y/o Pais no puede ir vacío o llevar caracteres especiales!"
						showConfirmButton: true,
						confirmButtonText: "Cerrar"

					}).then(function(result){

						if(result.value){
						
							window.location = "clientes";

						}

					});
				

				</script>';
            }
        }
    }



    /*=============================================
	BORRAR CLIENTE
	=============================================*/

    static public function ctrBorrarCliente()
    {

        if (isset($_GET["idCliente"])) {

            $tabla = "tb_clientes";
            $datos = $_GET["idCliente"];


            $respuesta = ModeloClientes::mdlBorrarCliente($tabla, $datos);

            if ($respuesta == "ok") {

                echo '<script>

				swal({
					  type: "success",
					  title: "El usuario ha sido borrado correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar",
					  closeOnConfirm: false
					  }).then(function(result) {
								if (result.value) {

								window.location = "clientes";

								}
							})

				</script>';
            }
        }
    }
}
