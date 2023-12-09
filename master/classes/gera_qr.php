<?php
ob_start();
session_start();
if((!isset ($_SESSION['cod_id']) == true)) { unset($_SESSION['cod_id']); header('location: ../'); }

$cod_id = $_SESSION['cod_id'];

require_once "../../db/Conexao.php";
require_once "functions.php";

if (isset($_POST["token_api"])) {
  
	$tokenid = $_POST["token_api"];
	$celular = "55".$_POST["celular"];
	
    //apaga
	
	$curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => $urlapi . '/instance/delete/AbC123'. $tokenid,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'DELETE',
      CURLOPT_HTTPHEADER => array(
		'apikey: '.$apikey.''
	  ),
    ));

    $response = curl_exec($curl);
	curl_close($curl);
	
	
	sleep(3);
	
	
	$bytes = random_bytes(16);
    $tokenid = bin2hex($bytes);
    
    $editarcad = $connect->query("UPDATE carteira SET tokenapi='".$tokenid."' WHERE Id = '".$cod_id."'");
    
	// cria uma nova
	
	$curl = curl_init();

	curl_setopt_array($curl, array(
	  CURLOPT_URL => $urlapi .'/instance/create',
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => '',
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 0,
	  CURLOPT_FOLLOWLOCATION => true,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => 'POST',
	  CURLOPT_POSTFIELDS =>'{
		"instanceName": "AbC123'.$tokenid.'",
		"token": "'.$tokenid.'",
		"qrcode": true,
		"number": "'.$celular.'"
	}',
	  CURLOPT_HTTPHEADER => array(
		'Content-Type: application/json',
		'apikey:  '.$apikey.''
	  ),
	));
	
	$response = curl_exec($curl);
	
	curl_close($curl);
		
	$res = json_decode($response, true);
	
		if ($res["instance"]["status"] == "created") {
		
		$editarcad = $connect->query("UPDATE conexoes SET qrcode='".$res["qrcode"]["base64"]."', apikey = '".$res["hash"]["apikey"]."' WHERE id_usuario = '".$cod_id."'");
		
		header("location: ../qrcode"); 
		
		} else { 
		
		header("location: ../whatsapp&erro=ok"); 
		
		}
	 
	}  
?>