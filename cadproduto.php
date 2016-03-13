<?php

include "conectabd.php";

$nomeproduto = htmlspecialchars($_POST["nomeproduto"]);
$percentualimposto =  htmlspecialchars($_POST["percentualimposto"]);
$valor =  htmlspecialchars($_POST["valor"]);
$quantidade =  htmlspecialchars($_POST["quantidade"]);

$query = "INSERT INTO produtos(nomeproduto, percentualimposto, valor, quantidade) VALUES('$nomeproduto', '$percentualimposto', '$valor', '$quantidade')";

$query_result = pg_query($query);

//$result = array("message" => "dado gravado com sucesso" );
//echo json_encode( $result );

?>
