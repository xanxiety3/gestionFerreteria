<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Inicio</title>
    <link rel="stylesheet" href="../views/css/stylesinicio.css">
    
</head>
<body>
<h1>Lista de Trabajadores</h1>
    <?php if (empty($trabajadores)): ?>
        <p>No hay trabajadores disponibles.</p> <a href="crear">Crear trabajador</a>
    <?php else: ?>
        <table>
            <!-- <thead>
                <tr>
                    <th>Título</th>
                    <th>Descripción</th>
                </tr>
            </thead> -->
            <tbody>
                <?php foreach ($trabajadores as $trabajador): ?>
                    <h2><?= $trabajador['usuario'] ?></h2>
                    <p><?= $trabajador['rol'] ?></p>
                    <p><?= $trabajador['estado'] ?></p>
                    <p><?= $trabajador['nombre'] ?></p>
                    <!-- <a href="actualizar?id=<?= $trabajador['ID'] ?>">Actualizar</a>
                    <a href="eliminar?id=<?= $trabajador['ID'] ?>">Eliminar</a> -->
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>
    <!-- <br><br> -->
    <!-- <h3><a href="crear">Crear nueva tarea</a></h3> -->
</body>
</html>
