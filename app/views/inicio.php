<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Inicio</title>
    <link rel="stylesheet" href="public/css/stylesinicio.css">
    
</head>
<body>
<h1>Lista de Trabajadores</h1>
    
    <?php if (empty($trabajadores)): ?>
        <p>No hay trabajadores disponibles.</p> <a href="crear">Crear trabajador</a>
    <?php else: ?>
        <table>
            <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Rol</th>
                    <th>Estado</th>
                    <th>Nombre</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($trabajadores as $trabajador): ?>
                    <tr>
                        <td><?= $trabajador['usuario'] ?></td>
                        <td><?= $trabajador['rol'] ?></td>
                        <td><?= $trabajador['estado'] ?></td>
                        <td><?= $trabajador['nombre'] ?></td>
                        <td class="btn-group">
                            <a href="editar"> Actualizar</a>
                            <a > Eliminar</a>
                        </td>

                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>
    <!-- <br><br> -->
    <!-- <h3><a href="crear">Crear nueva tarea</a></h3> -->
</body>
</html>
