<?php

$str_con = "host=localhost port=5432 dbname=cadprodutos user=reginaldo password='123abc'";

$banco = pg_connect($str_con) or die("Erro na conexão com o banco");

?>

