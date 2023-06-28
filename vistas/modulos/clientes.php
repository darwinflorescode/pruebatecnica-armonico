<?php

if ($_SESSION["perfil"] == "Especial" || $_SESSION["perfil"] == "Vendedor") {

    echo '<script>

    window.location = "inicio";

  </script>';

    return;
}

?>
<div class="content-wrapper">



    <section class="content">

        <div class="box">

            <div class="box-header with-border">

                <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarCliente">

                    <span class="fa fa-plus-square"></span> Agregar cliente

                </button>

            </div>


            <div class="box-body">

                <table class="table table-bordered table-striped dt-responsive tablas" id="tablas" width="100%">

                    <thead>

                        <tr>

                            <th style="width:10px">#</th>
                            <th>Nombre Cliente</th>
                            <th>Email Contacto</th>
                            <th>Pais</th>
                            <th width="12">Acciones</th>

                        </tr>

                    </thead>

                    <tbody>

                        <?php

                        $item = null;
                        $valor = null;

                        $usuarios = ControladorClientes::ctrMostrarClientes($item, $valor);

                        foreach ($usuarios as $key => $value) {

                            echo ' <tr>
                  <td>' . ($key + 1) . '</td>
                  <td>' . $value["nombre_cliente"] . '</td>
                  <td>' . $value["email_contacto"] . '</td>
                  <td>' . $value["nombre"] . ' - ' . $value["iso"] . '</td>';


                            echo '<td>

                    <div class="btn-group">
                        
                      <button class="btn btn-warning btnEditarCliente" idCliente="' . $value["id"] . '" data-toggle="modal" data-target="#modalEditarCliente"><i class="fa fa-pencil"></i></button>
                        <button class="btn btn-danger btnEliminarCliente" idCliente="' . $value["id"] . '" nombreCliente="' . $value["nombre_cliente"] . '"><i class="fa fa-times"></i></button>
                  

                    </div>  

                  </td>

                </tr>';
                        }


                        ?>

                    </tbody>

                </table>

            </div>

        </div>

    </section>

</div>

<!--=====================================
MODAL AGREGAR CLIENTE
======================================-->

<div id="modalAgregarCliente" class="modal fade" role="dialog">

    <div class="modal-dialog">

        <div class="modal-content">

            <form role="form" method="post" enctype="multipart/form-data">

                <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

                <div class="modal-header" style="background:#3c8dbc; color:white">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Agregar Cliente</h4>

                </div>

                <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

                <div class="modal-body">

                    <div class="box-body">

                        <!-- ENTRADA PARA EL NOMBRE -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                                <input type="text" class="form-control input-lg" name="nuevoNombreCliente" placeholder="Nombre cliente" required>

                            </div>

                        </div>
                        <!-- ENTRADA PARA EL EMAIL -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>

                                <input type="email" class="form-control input-lg" name="nuevoEmailContacto" placeholder="Email contato" required>

                            </div>

                        </div>



                        <!-- ENTRADA PARA SELECCIONAR EL PAIS -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                <!-- selectpicker -->
                                <select class="form-control input-lg" name="nuevoPais" data-show-subtext="true" required data-live-search="true">
                                    <!--      <select class="form-control input-lg" name="nuevoPerfil"> -->

                                    <option value="">Selecionar Pais</option>

                                    <?php
                                    $item = null;
                                    $valor = null;
                                    $paises = ControladorPaises::ctrMostrarPaises($item, $valor);

                                    foreach ($paises as $key => $value) {

                                        echo "<option value='" . $value['id'] . "' data-subtext='" . $value['iso'] . "'>" . $value['nombre'] . "</option>";
                                    }
                                    ?>

                                </select>

                            </div>

                        </div>



                    </div>

                </div>

                <!--=====================================
        PIE DEL MODAL
        ======================================-->

                <div class="modal-footer">

                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

                    <button type="submit" class="btn btn-primary">Guardar cliente</button>

                </div>

                <?php

                $crearCliente = new ControladorClientes();
                $crearCliente->ctrCrearCliente();

                ?>

            </form>

        </div>

    </div>

</div>

<!--=====================================
MODAL EDITAR CLIENTE
======================================-->

<div id="modalEditarCliente" class="modal fade" role="dialog">

    <div class="modal-dialog">

        <div class="modal-content">

            <form role="form" method="post" enctype="multipart/form-data">

                <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

                <div class="modal-header" style="background:#3c8dbc; color:white">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Editar cliente</h4>

                </div>

                <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

                <div class="modal-body">

                    <div class="box-body">

                        <!-- input type hidden -->
                        <input type="hidden" name="editaridCliente" id="editaridCliente" value="">
                        <!-- ENTRADA PARA EL NOMBRE -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                                <input type="text" class="form-control input-lg" name="editarNombreCliente" id="editarNombreCliente" placeholder="Nombre cliente" required>

                            </div>

                        </div>
                        <!-- ENTRADA PARA EL EMAIL -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>

                                <input type="email" class="form-control input-lg" name="editarEmailContacto" id="editarEmailContacto" placeholder="Email contato" required>

                            </div>

                        </div>



                        <!-- ENTRADA PARA SELECCIONAR EL PAIS -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-list"></i></span>
                                <!-- selectpicker -->
                                <select class="form-control input-lg" name="editarPais" id="editarPais" required data-live-search="true">
                                    <!--      <select class="form-control input-lg" name="nuevoPerfil"> -->

                                    <option value="">Selecionar Pais</option>

                                    <?php
                                    $item = null;
                                    $valor = null;
                                    $paises = ControladorPaises::ctrMostrarPaises($item, $valor);

                                    foreach ($paises as $key => $value) {

                                        echo "<option value='" . $value['id'] . "' data-subtext='" . $value['iso'] . "'>" . $value['nombre'] . "</option>";
                                    }
                                    ?>

                                </select>

                            </div>

                        </div>

                    </div>

                </div>

                <!--=====================================
        PIE DEL MODAL
        ======================================-->

                <div class="modal-footer">

                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

                    <button type="submit" class="btn btn-primary">Modificar cliente</button>

                </div>

                <?php

                $editarCliente = new ControladorClientes();
                $editarCliente->ctrEditarCliente();

                ?>

            </form>

        </div>

    </div>

</div>

<?php

$borrarUsuario = new ControladorClientes();
$borrarUsuario->ctrBorrarCliente();

?>