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

                    Agregar usuario

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
                            <th>Acciones</th>

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
                        
                      <button class="btn btn-warning btnEditarUsuario" idCliente="' . $value["id"] . '" data-toggle="modal" data-target="#modalEditarUsuario"><i class="fa fa-pencil"></i></button>

                  

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
MODAL AGREGAR USUARIO
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

                                <input type="text" class="form-control input-lg" name="nuevoNombreContacto" placeholder="Nombre Contato" required>

                            </div>

                        </div>
                        <!-- ENTRADA PARA EL EMAIL -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>

                                <input type="email" class="form-control input-lg" name="nuevoEmailContacto" placeholder="Email Contato" required>

                            </div>

                        </div>



                        <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-list"></i></span>

                                <select class="selectpicker form-control" name="nuevoPais" data-show-subtext="true" data-live-search="true">
                                    <!--      <select class="form-control input-lg" name="nuevoPerfil"> -->

                                    <option value="">Selecionar Pais</option>

                                    <?php
                                    $item = null;
                                    $valor = null;
                                    $paises = ControladorPaises::ctrMostrarPaises($item, $valor);

                                    foreach ($paises as $key => $value) {

                                        echo "<option data-subtext='" . $value['iso'] . "'>" . $value['nombre'] . "</option>";
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

                    <button type="submit" class="btn btn-primary">Guardar Cliente</button>

                </div>

                <?php

                /* $crearUsuario = new ControladorUsuarios();
                $crearUsuario->ctrCrearUsuario(); */

                ?>

            </form>

        </div>

    </div>

</div>

<!--=====================================
MODAL EDITAR USUARIO
======================================-->

<div id="modalEditarUsuario" class="modal fade" role="dialog">

    <div class="modal-dialog">

        <div class="modal-content">

            <form role="form" method="post" enctype="multipart/form-data">

                <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

                <div class="modal-header" style="background:#3c8dbc; color:white">

                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                    <h4 class="modal-title">Editar usuario</h4>

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

                                <input type="text" class="form-control input-lg" id="editarNombre" name="editarNombre" value="" required>

                            </div>

                        </div>

                        <!-- ENTRADA PARA EL DOCUMENTO -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-id-card"></i></span>

                                <input type="text" class="form-control input-lg" pattern="[0-9]{8}[\-]{1}[0-9]{1}" name="editarDocumento" id="editarDocumento" placeholder="Documeno (DUI)" required>

                            </div>

                        </div>

                        <!-- ENTRADA PARA EL USUARIO -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-key"></i></span>

                                <input type="text" class="form-control input-lg" id="editarUsuario" name="editarUsuario" value="" readonly>

                            </div>

                        </div>

                        <!-- ENTRADA PARA LA CONTRASEÑA -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>

                                <input type="password" class="form-control input-lg" name="editarPassword" placeholder="Escriba la nueva contraseña">

                                <input type="hidden" id="passwordActual" name="passwordActual">

                            </div>

                        </div>

                        <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

                        <div class="form-group">

                            <div class="input-group">

                                <span class="input-group-addon"><i class="fa fa-users"></i></span>

                                <select class="form-control input-lg" name="editarPerfil">

                                    <option value="" id="editarPerfil"></option>

                                    <option value="Administrador">Administrador</option>

                                    <option value="Especial">Especial</option>

                                    <option value="Vendedor">Vendedor</option>

                                </select>

                            </div>

                        </div>

                        <!-- ENTRADA PARA SUBIR FOTO -->

                        <div class="form-group">

                            <div class="panel">SUBIR FOTO</div>

                            <input type="file" class="nuevaFoto" name="editarFoto">

                            <p class="help-block">Peso máximo de la foto 2MB</p>

                            <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizarEditar" width="100px">

                            <input type="hidden" name="fotoActual" id="fotoActual">

                        </div>

                    </div>

                </div>

                <!--=====================================
        PIE DEL MODAL
        ======================================-->

                <div class="modal-footer">

                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

                    <button type="submit" class="btn btn-primary">Modificar usuario</button>

                </div>

                <?php

                /*   $editarUsuario = new ControladorUsuarios();
                $editarUsuario->ctrEditarUsuario(); */

                ?>

            </form>

        </div>

    </div>

</div>

<?php

/* $borrarUsuario = new ControladorUsuarios();
$borrarUsuario->ctrBorrarUsuario(); */

?>