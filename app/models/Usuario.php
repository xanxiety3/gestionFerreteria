<?php
require_once 'config/Conexion.php';

/**
 * Clase Usuario
 * 
 * Esta clase representa un usuario en el sistema.
 */
class Usuario
{
    /**
     * @var PDO La instancia de la conexión a la base de datos.
     */
    private $db;

    /**
     * Constructor de la clase Usuario.
     * 
     * Crea una nueva instancia de Usuario y establece la conexión a la base de datos.
     */
    public function __construct()
    {
        $this->db = Conexion::getInstance()->getConnection();
    }


    /**
     * Verificar si un usuario existe en la base de datos.
     * 
     * @param string $usuario El usuario a verificar.
     * @return array|false Los datos del usuario si existe, o false si no existe.
     */
    public function verificar($usuario)
    {
        $stmt = $this->db->prepare("SELECT * FROM ttrabajadores WHERE usuario = ?");
        $stmt->execute([$usuario]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
        return $usuario;
    }
}