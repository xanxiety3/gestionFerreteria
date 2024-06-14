<?php


/**
 * Clase controladora de Usuario.
 */
class UsuarioController
{
    /**
     * Modelo de Usuario.
     * @var Usuario
     */
    private $model;

    /**
     * Constructor de la clase UsuarioController.
     */
    public function __construct()
    {
        $this->model = new Usuario();
    }

   

    /**
     * Método para iniciar sesión.
     */
    public function login()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $usuario= $_POST['usuario1'];
            $contrasenia = $_POST['contrasenia'];
           
            $verificar = $this->model->verificar($usuario);
            // die(var_dump(password_hash("123", PASSWORD_DEFAULT)));
           if (count($verificar) > 0){
            if (password_verify($_POST["contrasenia"], $verificar["contrasenia"])) {
                $_SESSION['usuario1'] = $verificar;
          
               
                header('Location: inicio');
            } else {
                $error = 'Datos incorrectos';
                require 'app/views/login.php';
            }
        } elseif (count($verificar) == 0) {
            $error = 'Usuario no encontrado <br> Registrate para poder acceder <a href="inicio.php">Registrarse</a>';

            require 'app/views/login.php';
        }
    } else {
        require 'app/views/login.php';
    
           

        }
    }


    public function leer()
    {
        $trabajadores = $this->model->leerTodas();
        require 'app/views/inicio.php';
    }
}