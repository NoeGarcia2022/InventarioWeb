
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">        
        <link href="css/estiloss.css" rel="stylesheet" type="text/css"/>
        <title>Inicio de Session</title>
        <style>
            body{
                background-color: #000000;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 1600 800'%3E%3Cg %3E%3Cpolygon fill='%23220000' points='1600 160 0 460 0 350 1600 50'/%3E%3Cpolygon fill='%23440000' points='1600 260 0 560 0 450 1600 150'/%3E%3Cpolygon fill='%23660000' points='1600 360 0 660 0 550 1600 250'/%3E%3Cpolygon fill='%23880000' points='1600 460 0 760 0 650 1600 350'/%3E%3Cpolygon fill='%23A00' points='1600 800 0 800 0 750 1600 450'/%3E%3C/g%3E%3C/svg%3E");
                background-attachment: fixed;
                background-size: cover;
                padding-top: 175px;
            }
        </style>
    </head>
    <body>

        <div class="container col-lg-3">
            <form action="Controlador" method="POST" class="needs-validation" novalidate>
                <div class="form-group text-center">
                    <img src="assets/img/loginUser.png" height="80" width="80"/>
                    <p><strong>Bienvenidos al Sistema de Login</strong></p>
                </div>
                <div class="form-group">
                    <label>Usuario:</label>
                    <input class="form-control" type="text" name="txtuser" placeholder="Ingrese su usuario" required>
                </div>
                <div class="valid-feedback">
                    Todo bien!
                </div>
                <div class="invalid-feedback">
                    Por favor, digite usuario correcto!
                </div>
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input class="form-control" type="password" name="txtpass" placeholder="Ingrese su contraseña" required>
                </div>
                <div class="valid-feedback">
                    Todo bien!
                </div>
                <div class="invalid-feedback">
                    Por favor, digite su contraseña!
                </div><br>
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar"><br>
                <a class="small text-muted" href="#!">¿Se te olvidó tu contraseña?</a>
                <p class="mb-2 pb-lg-2" style="color: #393f81;">¿No tienes una cuenta? <a href="<%= request.getContextPath()%>/registroo?opcion=crear" class ="btn btn-primary btn-sm glyphicon glyphicon-pencil" role="button">
                        Registrarse
                    </a></p>
                <!--<a href="#!" class="small text-muted">Términos de Uso.</a>
                <a href="#!" class="small text-muted">Política de privacidad</a-->
            </form>
            <br>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>    </body>
    <script>
        (function () {
            'use strict'

            var forms = document.querySelectorAll('.needs-validation')

            Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault()
                                event.stopPropagation()
                            }

                            form.classList.add('was-validated')
                        }, false)
                    })
        })()
    </script>
</html>
