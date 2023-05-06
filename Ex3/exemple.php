<?php
// Conectar a la base de datos. Revisar vuestra configuración
$dbserver = "localhost";
$dbuser = "root";
$password = "";
$dbname = "peliculas_db";
$conexion = new mysqli($dbserver, $dbuser, $password, $dbname);
if ($conexion->connect_error) {
    die("Error de conexión a la base de datos: " . $conexion->connect_error);
}
// Consultar las películas en la base de datos
$resultado = $conexion->query("SELECT * FROM peliculas");
if (!$resultado) {
    die("Error al consultar las películas en la base de datos: " . $conexion->error);
}
// Crear un array para almacenar las películas
$peliculas = array();
while ($fila = $resultado->fetch_assoc()) {
    $peliculas[] = $fila;
}
// Convertir el array a formato JSON y devolverlo
echo json_encode($peliculas);
?>