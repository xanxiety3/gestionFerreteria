
<!DOCTYPE html>
<html>

<head>
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="../views/css/stylesLogin.css">
</head>

<body>
<h1> BIENVENID@ </h1>
    <h2>INICIA SESION</h2>
    <div class="padre">
        <div class="imagen">
            <img src="../views/image/logoFerreteria.png" alt="img login">
</div>
<div class="cajas">
        <form method="POST" action="login">
            <input type="text" name="usuario" placeholder="Ingrese su usuario" required>
            <br/>
            <input type="password" name="contrasenia" placeholder="Ingrese su contrasenia" required>
            <br/>
            <input type="submit" name ="boton" value="Iniciar sesion"></input> 
        </form>
        
        </div>
    </div>
    <?php if (isset($error)): ?>
        <p><?= $error ?></p>
    <?php endif; ?>
</body>

</html>