<?php
ob_start();
session_start();
if((!isset ($_SESSION['cod_id']) == true)) { unset($_SESSION['cod_id']); header('location: ../'); }

$cod_id = $_SESSION['cod_id'];

require "../../db/Conexao.php";

// EDITAR COBRADOR

if(isset($_POST["edit_cli"]))  {

$editarcad = $connect->query("UPDATE mensagens SET msg='".$_POST["msg"]."' WHERE id='".$_POST["edit_cli"]."' AND idu ='".$cod_id."'");

if($editarcad) {
	header("location: ../mensagens&sucesso="); exit;
}

}

if(isset($_POST["edicli1"]))  {

$editarcad = $connect->query("UPDATE mensagens SET status='2' WHERE id='".$_POST["edicli1"]."' AND idu ='".$cod_id."'");

if($editarcad) {
	header("location: ../mensagens&sucesso="); exit;
}

}
if(isset($_POST["edicli2"]))  {

$editarcad = $connect->query("UPDATE mensagens SET status='1' WHERE id='".$_POST["edicli2"]."' AND idu ='".$cod_id."'");

if($editarcad) {
	header("location: ../mensagens&sucesso="); exit;
}

}
?>