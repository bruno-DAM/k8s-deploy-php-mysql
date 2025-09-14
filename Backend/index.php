<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Content-Type: application/json");

require 'conexao.php';

// Captura e validação dados
$nome       = $_POST["nome"] ?? '';
$email      = $_POST["email"] ?? '';
$comentario = $_POST["comentario"] ?? '';

if (!$nome || !$email || !$comentario) {
    echo json_encode(["erro" => "Preencha todos os campos"]);
    exit;
}

$stmt = $conn->prepare("INSERT INTO mensagens (nome, email, comentario) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $nome, $email, $comentario);

echo $stmt->execute()
    ? json_encode(["sucesso" => true])
    : json_encode(["erro" => "Falha ao salvar"]);

$stmt->close();
$conn->close();
