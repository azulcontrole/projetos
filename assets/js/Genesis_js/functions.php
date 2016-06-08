<?php

inicializa();
restrictFile(basename(__FILE__));

function inicializa(){

	if (file_exists(dirname(__FILE__).'/config.php')):
	require_once(dirname(__FILE__).'/config.php');
	else:
	die(utf8_decode('Configuration file not found, contacte administrator !!!'));
	endif;

	if(!defined("BASEPATH") || !defined("BASEURL")   || !defined("ADMURL")
	|| !defined("CLASSPATH") || !defined("MODULOPATH")
	|| !defined("CSSPATH")   || !defined("JSPATH")):
	die(utf8_decode('Missing basic system configuration, contacte administrator !!!'));
	endif;

	if(!defined("DBHOST") || !defined("DBUSER") || !defined("DBPASS") || !defined("DBNAME")):
	die(utf8_decode('Missin database basic configuration, contacte administrator !!!'));
	endif;

	require_once(BASEPATH.CLASSPATH.'autoload.php');

	if ($_GET['logoff']==TRUE):
	   $user = new usuarios();
	   $user -> doLogout();
	   exit;
	endif;
} // inicializa

function echoActiveClassIfRequestMatches($requestUri)
{
    $current_file_name = $_GET['m'];
   
    if ($current_file_name == $requestUri)
        echo 'class="active"';
}

function loadCSS($arquivo=null,$media='screen',$import=FALSE){
	if ($arquivo != NULL):
		if ($import==TRUE):
			echo '<style type="text/css">@import url("'.BASEURL.CSSPATH.$arquivo.'.css");</style>'."\n";
		else:
			echo '<link rel="stylesheet" type="text/css" href="'.BASEURL.CSSPATH.$arquivo.'.css" media="'.$media.'" />'."\n";
		endif;
	endif;
} // loadCSS

function loadJS($arquivo=null, $remoto=false){
	if ($arquivo!= NULL):
	if($remoto==FALSE)$arquivo = BASEURL.JSPATH.$arquivo.'.js';
	echo '<script type= "text/javascript" src="'.$arquivo.'"></script>'."\n";
	endif;
} // loadJS

function loadView ($modulo=null,$tela=null){
	if($modulo==NULL || $tela==NULL):
		echo '<p>FunctionError <strong>'.__FUNCTION__.'</stron>: Missing parameters.';
	else:
		if (file_exists(MODULOPATH."$modulo.php")):
			require_once(MODULOPATH."$modulo.php");
		else:
			echo '<p>Module not exist in the system.</p>';
		endif;
	endif;
} // loadModulo

function restrictFile($fileName, $redirfor='painel.php?error=3'){
	if (preg_match("/$fileName/i", $url)):
		redirect($redirfor);
	endif;
} // restrictFile

function redirect($url=""){
	header("location: ".BASEURL.$url);
} //redirect

function encriptPass($password){
	return md5($password);
}

function verificaLogin(){
	$sessao = new sessao();
	if ($sessao->getNvars()<=0 || $sessao->getVar('logado')!=TRUE ):
		redirect('index.php');
	endif;
}

function printMSG($msg=NULL, $tipo=NULL){
	if($msg!=NULL):
	
		switch ($tipo):
			case 'erro':
				echo '<div class="alert alert-danger alert-dismissable"><a href="" class="close">×</a>'.$msg.'</div>';
				break;
			case 'alerta':
				echo '<div alert alert-warning alert-dismissable><a href="" class="close">×</a>'.$msg.'</div>';
				break;
			case 'aviso':
				echo '<div class="alert alert-info alert-dismissable"><a href="" class="close">×</a>'.$msg.'</div>';
				break;
			default:
				echo '<div class="alert alert-success"><a href="" class="close">×</a>'.$msg.'</div>';
				break;	
		endswitch;
	endif;
}

function isAdmin(){

	verificaLogin();
	$sessao = new sessao();
	$user = new usuarios(array(
		'administrator'=>NULL,
	));

	$iduser = $sessao->getVar('iduser');
	$user->extra_selects = " WHERE id=$iduser";

	$user->selectFields($user);

	$res = $user->selectdata();
	if (strtolower($res->administrator) == 's'):
		return TRUE;
	else:
		return FALSE;
	endif;
}

function formataMoeda($get_valor) {
           $source = array('.', ',');
           $replace = array('', '.');
           $valor = str_replace($source, $replace, $get_valor); //remove os pontos e substitui a virgula pelo ponto
           return $valor; //retorna o valor formatado para gravar no banco
  }          

?>
