<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['boton']) && $_POST['boton'] === 'Iniciar sesion') {

include_once("conexion.php");
$usuario = $_POST['usuario'];
$contrasenia = $_POST['contrasenia'];
$stmt = $conexion->prepare("SELECT * FROM ttrabajadores WHERE usuario=:usuario AND contrasenia=:contrasenia");
$stmt->bindParam(':usuario', $usuario);
$stmt->bindParam(':contrasenia', $contrasenia);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    session_start();
    echo "<script>alert('Acceso Permitido');</script>";
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
           $id_usuario  = $row['ID'];
    $_SESSION['ID']=$id_usuario; 
    header('Location: inicio.html');
    
} else {

    echo "Acceso Denegado, Intentalo de nuevo";
    

}
}
}