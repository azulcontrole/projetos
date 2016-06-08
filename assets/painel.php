<?php 

	include('header.php');

	if (isset($_GET['m'])) $modulo = $_GET['m'];
	if (isset($_GET['t'])) $tela = $_GET['t'];

	echo('<div class="bottom">');
	echo('<div class="container">');

	echo('<div class="row">');
	echo('<div class="col-md-2 left-sidebar">');
	
	include('left.php');

	echo('</div>');
	echo('<div class="col-md-10 content-wrapper">');

	// if (webserviceConsultaMargem('1234')):
	// 	echo "achou";
	// else:
	// 	echo "nao achou";
	// endif;
	
    if ($modulo && $tela):
	phpinfo();
		loadView($modulo,$tela);

	else:
		// $sessao = new sessao();
		// $usuario = new usuarios();
		// $userId	  = $sessao->getVar('iduser');	
		// $sessao->printAll();
		// $usuario->verificaMudaSenha($usuario);

		//echo "Modulo não encontrado.!!!";
		//loadView('home','home');
	endif;		

	echo('</div>');
	echo('</div>');
	echo('</div>');
	echo('</div>');

	include('footer.php');
?>

