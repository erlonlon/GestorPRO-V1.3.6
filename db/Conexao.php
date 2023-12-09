<?php
$servidor = 'localhost';
$usuario  = 'optasolu_pdv';
$senha 	  = 'bEDf2@H2B)um';
$banco    = 'optasolu_pdv';

$connect = new PDO("mysql:host=$servidor;dbname=$banco", $usuario , $senha);  
$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$_urlmaster = "https://".@$_SERVER['HTTP_HOST'];
$_ativacom = "1";


// ALTERAR AS LINHAS 18 E 22 SOMENTE

// Para criar sua chave acesse:
//https://www.google.com/recaptcha/admin/create

$_captcha = "6LdYiyApAAAAAHjEtKDPwOXBsAk3VebNvsQ6V74K";

// Dados do Painel

$_nomesistema = "Painel Financeiro";

// ALTERAR AS LINHAS 16 E 19 SOMENTE