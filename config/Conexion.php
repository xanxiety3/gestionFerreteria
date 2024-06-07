<?php

class Conexion
{
    /**
     * @var Conexion|null La única instancia de la clase Conexion.
     */
    private static $instance = null;

    /**
     * @var PDO La conexión a la base de datos.
     */
    private $conn;

    /**
     * Constructor privado.
     * 
     * El constructor es privado para evitar que se puedan crear instancias de la clase directamente.
     * La conexión a la base de datos se establece en este método.
     */
    private function __construct()
    {
        $this->conn = new PDO('mysql:host=localhost;dbname=gestionferreteria', 'root', '');
    }

    /**
     * Obtener la instancia de la clase Conexion.
     * 
     * Este método estático devuelve la única instancia de la clase Conexion.
     * Si la instancia no existe, se crea una nueva.
     * 
     * @return Conexion La instancia de la clase Conexion.
     */
    public static function getInstance()
    {
        if (!self::$instance) {
            self::$instance = new Conexion();
        }
        return self::$instance;
    }

    /**
     * Obtener la conexión a la base de datos.
     * 
     * Este método devuelve la conexión a la base de datos.
     * 
     * @return PDO La conexión a la base de datos.
     */
    public function getConnection()
    {
        return $this->conn;
    }
}