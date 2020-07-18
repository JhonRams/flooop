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
        <header id="home" class="gradient-violat">
            
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                   
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><span class="logo-wraper logo-white">
                                <img src="https://es.freelogodesign.org/Content/img/logo-colors-meanings/logos-oranges/logo-fld04.svg" alt="">
                            </span></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <p class="text-white h4"><?php echo $nombre ?></p>
                        <ul class="nav navbar-nav  navbar-right">
                            <li class="active"><a href="#home">Inicio <span class="sr-only">(current)</span></a></li>
                            <li><a href="#nosotros">Nosotros</a></li>
                            <li><a href="#ofertas">Ofertas</a></li>
                            <li><a href="productos.php">Productos</a></li>
                            <li><a href="#contacto">Contacto</a></li>
                            <?php echo $sesion ?>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                    <hr class="navbar-divider">
                </div><!-- /.container-fluid -->
            </nav>
        </header>
