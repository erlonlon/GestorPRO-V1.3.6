<?php
require_once "topo.php";

$iduserrr = $cod_id;

$idins = $dadosgerais->tokenapi;

$v_conexao = $connect->query("SELECT count(id) FROM conexoes WHERE id_usuario = '$iduserrr' AND conn = '1'")->fetchColumn();

if($v_conexao === "1") {
    echo "<meta http-equiv=\"refresh\" content=\"0;URL=./\">";
  	exit;
	
} else { 

$pegaapi 	= $connect->query("SELECT apikey FROM conexoes WHERE tokenid='$idins'");
$pegaapix	= $pegaapi->fetch(PDO::FETCH_OBJ);


	$curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => $urlapi.'/instance/connectionState/AbC123'. $idins,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'GET',
      CURLOPT_HTTPHEADER => array(
		'apikey: '.$idins.''
	  ),
    ));

    $response = curl_exec($curl);

    curl_close($curl);
  
  	$res = json_decode($response, true);

		$conexaoo = "false";
		$conexaoo = $res['instance']['state'];
      
        if($conexaoo == 'open') {

          $stmtk = $connect->prepare(
              "UPDATE conexoes SET conn = '1' WHERE id_usuario = '$iduserrr' AND conn = '0'"
          );
          $stmtk->execute();

          echo "<meta http-equiv=\"refresh\" content=\"0;URL=./whatsapp\">";
          exit;

        }

}
?>
<div class="slim-mainpanel">
      <div class="container">
	   
		
		<?php if(isset($_GET["sucesso"])){ ?>
		<div class="alert alert-solid alert-success" role="alert">
            <strong>Sucesso!!!</strong>
        </div>
		<meta http-equiv="refresh" content="1;URL=./usuarios" />
		<?php } ?>
		
		
		
		 
		
		
		
		
		
		
		<div class="section-wrapper">
          <label class="section-title">Efetue a leitura do QRCode</label>
          
          
          
          <div class="row">
            
			
			<div class="col-md">
              <div class="card card-body">
                
				
				
			  <?php
			  
			  $stmtkxk = $connect->prepare("SELECT qrcode, conn FROM conexoes WHERE id_usuario = '$iduserrr' AND conn = '0'");
  			  $stmtkxk->execute();
                             
              $cgerar = $stmtkxk->rowCount();
			  
			  if($cgerar >= 1){
			  
			  $row = $stmtkxk->fetch();
                
               
		
				 
			  
			  ?>
			  
			  <center>
			  <?php if($row["qrcode"] == ""){ ?>

  <meta http-equiv="refresh" content="2;URL=../crons/qrcode?idcom=<?php print $codi; ?>&urlapi=<?=URL_API?>">
	Aguarde gerando o QRCODE...
<?php } else { ?> 
                
              <img src="<?php print $row["qrcode"]; ?>" alt="" style="width: 150;">
                
              
			  
			  <?php } ?> 
			  </center>
                          	 
               <?php } else { ?>
			  
			  <center>
			  Conectado com Sucesso... Redirecionando
              <meta http-equiv="refresh" content="1;URL=./">
			  </center>
			  <?php  }  ?> 	
				
				
              </div><!-- card -->
            </div><!-- col -->
            
			
			<div class="col-md mg-t-20 mg-md-t-0">
              <div class="card card-body bg-primary tx-white bd-0">
                <div class="card-text" align="center">Aguardando Conexão em <span id="contador">5</span></div>
			  </div><!-- card -->
			  <br/>
				<h4>Use o WhatsApp no Sistema</h4>
				<p>
				1. Abra o WhatsApp no seu celular.<br/><br/>
				2. Toque em <b>Mais opções</b> ou  <b>Configurações</b> e selecione <b>Aparelhos Conectados</b><br/><br/>
				3. Toque em <b>Conectar Aparelho</b><br/><br/>
				4. Aponte seu celular para esta tela e efetue a leitura do QRCode.
			    </p>
				
				
				<form action="classes/gera_qr.php" method="post">
					<input type="hidden" name="token_api" value="<?php print $dadosgerais->tokenapi;?>">
					 <input type="hidden" name="celular" value="<?php print $dadosgerais->celular; ?>">
				
				
				<div align="center"> <button type="submit" class="btn btn-dark" name="cart">Novo QRCode</button></div>
				
				</form>	
 
              
            </div><!-- col -->
             
          </div><!-- row -->
        </div><!-- section-wrapper -->
   
    

	</div>
</div>

 


 
 
		 
    <script src="../lib/jquery/js/jquery.js"></script>
	
	<script>

  // Obtenha a div que mostrará o contador
var divContador = document.getElementById("contador");

// Defina o tempo total em segundos
var tempoTotal = 5;

// Inicie o contador
var intervalo = setInterval(function() {
  // Decrementar o tempo restante
  tempoTotal--;

  // Atualize a div do contador
  divContador.innerHTML = tempoTotal;

  // Verifique se o contador chegou a zero
  if (tempoTotal == 0) {
    // Pare o intervalo
    clearInterval(intervalo);

    // Faça reload na página
    location.reload();
  }
}, 1000);

  
</script>
	
    
<script src="../js/slim.js"></script>	
  </body>
</html>
