<?php
  include "conectabd.php";

  $sql = "select nomeproduto, percentualimposto, valor, quantidade from produtos";

  $query_result = pg_query($sql) or die("Erro no SQL");
  $nlinhas = pg_num_rows($query_result);

  $totalValorImposto = 0;
  $totalValorCompra  = 0;
  
  if($nlinhas == 0)
      echo "Nenhum registro cadastrado! " . "<br><br>"; 
  
  else
  {

       	while($linha = pg_fetch_array($query_result))
  	{
      		echo "Produto: " .$linha["nomeproduto"]; 
      		echo "<br>Percentual Imposto: " .$linha["percentualimposto"];
      		echo "<br>Valor R$: " .$linha["valor"];
      		echo "<br>Quantidade: " .$linha["quantidade"];
      		$valorImposto = ($linha["percentualimposto"]/100) * $linha["valor"];
      		$valorCompra =  $linha["quantidade"] * $linha["valor"] * $valorImposto;
      		echo "<br>Valor Imposto R$: " .number_format($valorImposto, 2, ".", ",");
      		echo "<br>Valor Compra R$: "  .number_format($valorCompra, 2, ".", ",") ."<br><br>";
                $totalValorImposto += $valorImposto;
                $totalValorCompra  += $valorCompra;

  	}

        echo "Total Valor Imposto R$: " .number_format($totalValorImposto, 2, ".", ",");
        echo "<br>Total Valor Compra  R$: " .number_format($totalValorCompra, 2, ".", ",") . "<br><br>";
        
  }

?>
