<?php
require_once 'config/Conexion.php';

/**
 * Clase Tarea
 * 
 * Esta clase representa una tarea en la aplicación.
 */
class Tarea
{
    /**
     * @var PDO La instancia de la conexión a la base de datos.
     */
    private $db;

    /**
     * Constructor de la clase Tarea.
     * 
     * Crea una nueva instancia de la clase Tarea y establece la conexión a la base de datos.
     */
    public function __construct()
    {
        $this->db = Conexion::getInstance()->getConnection();
    }

    /**
     * Crea una nueva tarea.
     * 
     * @param int $id_usuario El ID del usuario al que pertenece la tarea.
     * @param string $titulo El título de la tarea.
     * @param string $descripcion La descripción de la tarea.
     * @return void
     */
    public function crear($id_usuario, $titulo, $descripcion)
    {
        $stmt = $this->db->prepare("INSERT INTO tareas (id_usuario, titulo, descripcion) VALUES (?, ?, ?)");
        $stmt->execute([$id_usuario, $titulo, $descripcion]);
    }
}