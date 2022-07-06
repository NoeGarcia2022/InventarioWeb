
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">        
        <link href="css/estiloss.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
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
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict'

                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.querySelectorAll('.needs-validation')

                // Loop over them and prevent submission
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
