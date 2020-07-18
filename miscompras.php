<?php
 session_start();
 require_once './db/utilidades.php';
 include_once './login.php';
 ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags always come first -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>flooop</title>
        <link rel="shortcut icon" href="https://www.freelogodesign.org/file/app/client/thumb/328f6b7c-26a4-4728-85c0-96c89f9ab8b9_200x200.png" type="image/x-icon">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
        <link rel="stylesheet" href="css/ionicons.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <?php
        
        if($lista){
            echo ' <section class="formulariocompras">
        <div class="">
            <br>
            <a href="productos.php" class="boton-comprar btn-success">Agregar Mas</a>
            <br>
        </div>';
            $miscopras = listar_compra($lista);
            $subtotal=0;
        foreach ($miscopras as $value) {
            while ($producto = $value->fetch_assoc()) {
                echo '<div class="producto">
            <div class="contenido">
                <div class="imagen">
                    <img src="' . $producto['foto'] . '">
                </div>
                <div class="info">
                    <div class="nombre">
                        ' . $producto['nombre'] . '
                    </div>
                    <div class="precio">
                        S/ ' . $producto['precio'] . '
                    </div>
                    <div class="oferta">
                       S/ ' . $producto['oferta'] . '
                    </div>
                    
                    <div class="marca">
                        ' . $producto['marca'] . '
                    </div>
                    <br>
                    <form method="POST" class="fcompra">
                    <input type="hidden" name="idproquit" value="' . $producto['id'] . '">
                    <button class="boton-cancelar">Quitar</button>
                    </form>
                    <button class="boton-cancelar" onclick="sali_pro(this)">Cancelar</button>
                
                    <div class="detalle"><h6>Características:</h6>
                        ' . $producto['descripcion'] . '
                    </div>
                   </div>
                <button class="boton-ver btn-orange" onclick="ver_pro(this)">Ver</button>
            </div> 
        </div>';
               $subtotal+=$producto['oferta'];
              
            }
        }
         $igv=$subtotal*0.18;
         $total=$subtotal+$igv;
        ?>
    </section>
        <section class="formulariocompras">
            <div class="col-md-8 col-md-offset-2 padding-top-bottom-90">
                                <div class="subscription-wraper text-center">
                                    <h4 class="text-upper">LLene el Formulario del Pedido</h4>
                                    <p>Le aremos llegar a su domicilio su pedido y el cobro se realizara al momento de la entrega</p>
                                    <form class="subscription-form" method="POST">
                                        <div class="detalle-compra">
                                        <p>Sub Total: S/ <?php echo $subtotal;?></p>
                                        <p>IGV: S/ <?php echo $igv;?></p>
                                        <p>Total:S/  <?php echo $total;?></p>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="nombrecliente" placeholder="Nombre" required="">
                                            <input type="text" class="form-control" placeholder="Apellidos" required="">
                                            <input type="text" class="form-control"  placeholder="Telefono" required="">
                                            <input type="text" class="form-control"  placeholder="Direccion" required="">
                                            <input type="email" class="form-control"  placeholder="Email" required="">
                                            <p>Referncia si es posible indicar ubicacion en google Map y ponerlo aquí</p>
                                            <textarea class=" mensaje" required=""></textarea>
                                        </div>
                                        <button class=" boton-comprar " type="submit">HACER PEDIDO</button>
                                        
                                    </form>
                                </div>
                            </div>
        </section>
            
            <?php
        } else {
            echo '<div class=text-center><h2>Usted no tiene ni un producto</h2>';
            echo ' <a href="productos.php"class="boton-comprar">Comprar</a></div>';
        }
         if(!empty($_POST['nombrecliente'])){
          echo '<script>alert("Garcias por su compra");</script>';
          echo '<script>window.location="index.php";</script>';
          $_SESSION['compras']=NULL;
      }
        
        include_once './footer.php';
        ?>