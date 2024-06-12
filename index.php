<?php
/**
 * Archivo de índice principal de la aplicación To-Do List.
 *
 * Este archivo maneja las rutas y controladores para las diferentes acciones de la aplicación.
 */

session_start();




require_once 'app/models/Usuario.php';
require_once 'app/controllers/UsuarioControllers.php';


$usuarioController = new UsuarioController();

$request = $_SERVER['REQUEST_URI'];



switch ($request) {
    case '/Ferreteria/':
        if (!isset($_SESSION["usuario"])) {
            /**
             * Si no hay un usuario en la sesión, redirige al controlador de usuario para iniciar sesión.
             */
            $usuarioController->login();
            return;
        }

   
    case '/Ferreteria/login':
        /**
         * Acción para iniciar sesión.
         */
        $usuarioController->login();
        break;
   
    default:
        http_response_code(404);
        echo '<h1>404</h1> Página no encontrada';
        break;
}
