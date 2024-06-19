



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Contacto</title>
    <link rel="stylesheet" href="public/css/stylesEditar.css">
<head>
    <title>Actualizar Tarea</title>
</head>

<body>
    <h1>Actualizar Tarea</h1>

    <form method="post" action="actualizar">
        <!-- Se utiliza un campo oculto para enviar el ID de la tarea -->
        <input type="hidden" name="id" value="<?= $id_trabajador['id'] ?>">
        <label for="titulo">Usuario:</label>
        <!-- Se muestra el título de la tarea en un campo de texto -->
        <input type="text" name="usuario" value="<?= $usuario['usuario'] ?>">
        <label for="descripcion">Descripción:</label>
        <!-- Se muestra la descripción de la tarea en un campo de texto multilinea -->
        <textarea id="descripcion" name="descripcion"><?= $tarea['descripcion'] ?></textarea>
        <!-- Botón para enviar el formulario y actualizar la tarea -->
        <button type="submit">Actualizar</button>
    </form>
</body>

</html>



