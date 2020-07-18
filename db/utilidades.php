<?php
require_once('credenciales.php');
$mysqli = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);
 $mysqli->query("SET NAMES 'utf8'");
$result = '';

if( $mysqli->connect_errno )
{
	echo 'Error en la conexión';
	exit;
}

function run_query($sql)
{
	global $mysqli;
	return $mysqli->query($sql);

}
function listar_productos(){
    $sql="SELECT * FROM productos ORDER BY marca";
    return run_query($sql);
    
}
function listar_ofertas(){
    $a= rand(1, 30);
    $b= rand(1, 30);
    $c= rand(1, 30);
    $sql="SELECT * FROM productos WHERE id='$a' or id='$b' or id='$c'";
    return run_query($sql);
    
}
function listar_personal(){
     $sql="SELECT foto,nombres,apellidos,cargo,presentacion FROM personal";
    return run_query($sql);
}
function comprar($a){
    $sql="SELECT * FROM productos WHERE id='$a'";
    return run_query($sql); 
}
function listar_compra($lista){
    $micompra=new ArrayObject();
    for ($i = 0; $i < count($lista); $i++) {
        $micompra->append(comprar($lista[$i]));
    }
    return$micompra;
}
function iniciar_session($usu,$pss){
    $sqlu="SELECT nombres FROM personal WHERE correo='$usu'";
    $siu= run_query($sqlu);
    if ($siu->num_rows===1) {
        $u=$siu->fetch_assoc();
        $user=$u['nombres'];
        $sqlp="SELECT correo FROM personal WHERE nombres='$user' AND password='$pss'";
        $sip= run_query($sqlp);
         if ($sip->num_rows===1) {
             return $user;
         }
    }
    return FALSE;
}
