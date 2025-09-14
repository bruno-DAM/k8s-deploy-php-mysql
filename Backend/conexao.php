<?php
// Configurações
$servername = "localhost";
$username   = "root";
$password   = "Senha123";
$database   = "meubanco";

// Criar conexão (estilo orientado a objetos)
$conn = new mysqli($servername, $username, $password, $database);

$conn->set_charset("utf8mb4");

// check connection
if ($conn->connect_error) {
    // Gera um log de erro 
    error_log("Erro de conexão: " . $conn->connect_error);
    die("Erro ao se conectar ao banco de dados.");
}

?>
