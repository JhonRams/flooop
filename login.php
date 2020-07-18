<?php

$sesion = '<li><a href="#" class="btn btn-orange border-none btn-rounded-corner btn-navbar" onclick="iniciar()">Login<span class="icon-on-button"><i class="ion-ios-cloud-download-outline"></i></span></a></li>';
$nombre="";


if (!empty($_POST['user'])) {
    $permiso=iniciar_session($_POST['user'], $_POST['pass']);
    if($permiso){
        $_SESSION['logueo']=$permiso;
    }
}

if (!empty($_SESSION['logueo'])) {
    $sesion = '<li><a href="?salir=si" class="btn btn-orange border-none btn-rounded-corner btn-navbar">Salir<span class="icon-on-button"><i class="ion-ios-cloud-download-outline"></i></span></a></li>';
    $nombre="Bienvenido: ".$_SESSION['logueo'];
}
if (!empty($_GET['salir'])) {
   session_destroy();
   
   echo '<script>window.location="index.php";</script>';
}
if(empty($_SESSION['compras'])){
    $_SESSION['compras']=array();
}
if(!empty($_POST['idpro'])){
    array_push($_SESSION['compras'], $_POST['idpro']);
}

$compras= count($_SESSION['compras']);

if (!empty($_POST['idproquit'])) {
            $lista = $_SESSION['compras'];
            $si=array_search($_POST['idproquit'], $lista);
            
            if($si>=0){
                
              unset($lista[$si]);
            $nuevo = array_values($lista);
            $_SESSION['compras']=$nuevo;
            }
        }
        $lista=$_SESSION['compras'];

?>