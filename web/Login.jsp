
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <section class="vh-100" style="background-color: #9A616D;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                         alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form action="Validar" method="POST" class="needs-validation" novalidate>

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                <span class="h1 fw-bold mb-0">Bienvenid@s</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Iniciar sesión en su cuenta</h5>

                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="form2Example17">Ingrese su Usuario</label>
                                                <input type="text" id="form2Example17" class="form-control form-control-lg" name="txtuser" required/>
                                                <div class="valid-feedback">
                                                    Todo bien!
                                                </div>
                                                <div class="invalid-feedback">
                                                    Por favor, digite su usuario!
                                                </div>

                                                <div class="form-outline mb-4">
                                                    <label class="form-label" for="form2Example27">Ingrese su Contraseña</label>
                                                    <input type="password" id="form2Example27" class="form-control form-control-lg" name="txtpass" required/>
                                                </div>
                                                <div class="valid-feedback">
                                                    Todo bien!
                                                </div>
                                                <div class="invalid-feedback">
                                                    Por favor, digite su contraseña!
                                                </div>

                                                <div class="pt-1 mb-4">
                                                    <input type="submit" name="accion" value="Ingresar" class="btn btn-outline-dark btn-b">
                                                </div>

                                                <a class="small text-muted" href="#!">¿Se te olvidó tu contraseña?</a>
                                                <p class="mb-5 pb-lg-2" style="color: #393f81;">¿No tienes una cuenta? <a href="<%= request.getContextPath()%>/registroo?opcion=crear" class ="btn btn-primary btn-sm glyphicon glyphicon-pencil" role="button">
                                                        Registrarse
                                                    </a></p>
                                                <a href="#!" class="small text-muted">Términos de Uso.</a>
                                                <a href="#!" class="small text-muted">Política de privacidad</a>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
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
    </body>

</html>
