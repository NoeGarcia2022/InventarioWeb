
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="empleado" scope="session" class="Model.Empleado" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script type="text/javascript">
             function regresar(url){
                 location.href = url;
             }
         </script>
    </head>
    <body>
        <!-- Section: Design Block -->
        <section class="background-radial-gradient overflow-hidden">
            <style>
                .background-radial-gradient {
                    background-color: hsl(218, 41%, 15%);
                    background-image: radial-gradient(650px circle at 0% 0%,
                        hsl(218, 41%, 35%) 15%,
                        hsl(218, 41%, 30%) 35%,
                        hsl(218, 41%, 20%) 75%,
                        hsl(218, 41%, 19%) 80%,
                        transparent 100%),
                        radial-gradient(1250px circle at 100% 100%,
                        hsl(218, 41%, 45%) 15%,
                        hsl(218, 41%, 30%) 35%,
                        hsl(218, 41%, 20%) 75%,
                        hsl(218, 41%, 19%) 80%,
                        transparent 100%);
                }

                #radius-shape-1 {
                    height: 220px;
                    width: 220px;
                    top: -60px;
                    left: -130px;
                    background: radial-gradient(#44006b, #ad1fff);
                    overflow: hidden;
                }

                #radius-shape-2 {
                    border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
                    bottom: -60px;
                    right: -110px;
                    width: 300px;
                    height: 300px;
                    background: radial-gradient(#44006b, #ad1fff);
                    overflow: hidden;
                }

                .bg-glass {
                    background-color: hsla(0, 0%, 100%, 0.9) !important;
                    backdrop-filter: saturate(200%) blur(25px);
                }
            </style>

            <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
                <div class="row gx-lg-5 align-items-center mb-5">
                    <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                        <h1 class="my-5 display-5 fw-bold ls-tight text-center" style="color: hsl(218, 81%, 95%)">
                            Formulario <br />
                            <span style="color: hsl(218, 81%, 75%)">de Registro</span>
                        </h1>

                    </div>

                    <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
                        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
                        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

                        <div class="card bg-glass">
                            <div class="card-body px-4 py-5 px-md-5">
                                <form>
                                        <input type="hidden" name="id_empleado" id="id_categoria" value="<%= empleado.getId() %>" >
                                    <!-- 2 column grid layout with text inputs for the first and last names -->
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="txtnombre" value="<%= empleado.getNom() %>" placeholder="ingrese su nombre">
                                                <label for="nombre">Nombres</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="txtapellidos" value="<%= empleado.getApell() %> "placeholder="ingrese su apellido">
                                                <label for="apellidos">Apellidos</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="number" class="form-control" name="numbertipo" value="<%= empleado.getTipo() %>" placeholder="ingrese su nombre">
                                                <label for="tipo">Tipo</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="number" class="form-control" name="numberEstado" value="<%= empleado.getEstado() %>" placeholder="ingrese su apellido">
                                                <label for="estado">Estado</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="txtdui" value="<%= empleado.getDui() %>" placeholder="ingrese su dui">
                                                <label for="dui">DUI</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="txtTel" value="<%= empleado.getTel() %>" placeholder="ingrese su telefono">
                                                <label for="telefono">Telefono</label>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Email input -->
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" name="txtemail" value="<%= empleado.getEmail() %>" placeholder="ingrese su correo">
                                        <label for="email">Correo Electronico</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" name="txtUser" value="<%= empleado.getUser() %>" placeholder="ingrese un nombre de usuario">
                                        <label for="usuario">Usuario</label>
                                    </div>

                                    <!-- Password input -->
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="txtClave" value="<%= empleado.getClave() %>" placeholder="ingrese un contraseña">
                                        <label for="clave">Contraseña</label>
                                    </div>



                                    <input type="submit" class="btn btn-outline-info btn-sm" value="Guardar" name="btnGuardar"/>
                                    <input type="button" class="btn btn-outline-dark btn-sm" name="btnRegresar" value="Regresar" onclick="regresar('<%= request.getContextPath() %>Login.jsp')"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Design Block -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
