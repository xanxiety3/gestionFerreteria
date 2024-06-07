<?php

class TareaController
{
    /**
     * Modelo de tareas.
     * @var Tarea
     */
    private $model;

  
    public function __construct()
    {
        $this->model = new Tarea();
    }

    /**
     * Crea una nueva tarea.
     */
    public function crear()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $id_usuario = $_SESSION['usuario']['id'];
            $titulo = $_POST['titulo'];
            $descripcion = $_POST['descripcion'];
            $this->model->crear($id_usuario, $titulo, $descripcion);
            header('Location: leer');
        } else {
            require 'app/views/crear.php';
        }
    }
}