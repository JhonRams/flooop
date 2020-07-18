<?php
session_start();
require_once './db/utilidades.php';
require_once './login.php';

$ofertas = listar_ofertas();
$hoy = date("d/m/Y");

$personal = listar_personal();
include_once './header.php';
?>


        <section id="introduction" class="gradient-violat padding-top-90 home-slider">
            <div id="home-slider" class="owl-carousel">
                <div>
                    <div class="sliding-card-with-bottom-image text-center padding-top-90">
                        <h2 class="cta-heading text-white">Estamos sorteando este teclado</h2>
                        <p class="text-white slider-para">Participa enviandonos tú código generado</p>
                        <div class="cta-btn-group">
                            <a class="btn btn-orange border-none btn-rounded-corner" href="#sorteo">VER CÓDIGO <span class="icon-on-button"><i class="ion-ios-cloud-download-outline"></i></span></a>
                            <a class="btn-video text-white" href="http://youtube.com" target="_black"><span class="icon-rounded bordered-ios"><i class="ion-ios-play-outline"></i></span>ver sorteos anteriores</a>
                        </div>
                        <div class="image-container text-center sm-display-none">
                            <img class="img-responsive" src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.colombo.com.br%2Fhotsite%2Ftecladotc196%2Ftecladotc196%2Fimages%2FTeclado-Gamer-Semi-Mecanico-Warrior---TC196_04.png&f=1&nofb=1" alt="">
                        </div>
                    </div>
                </div>

                <div>
                    <div class="container">
                        <div class="row">
                            <div class="image-right-slide-bg clearfix" style="background-image:url(https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.spdigital.cl%2Fimg%2Fproducts%2Fnew_web%2F1523455257497-H310M-GAMING-PLUS1.png&f=1&nofb=1)">
                                <div class="col-md-12">
                                    <h2 class="cta-heading text-white">Placa Madre MSI </h2>
                                    <p class="text-white slider-para">Especial para juegos de ultima generación</p>
                                    <div class="cta-btn-group">
                                        <a class="btn btn-orange border-none btn-rounded-corner" href="#mensaje">Hacer pedido<span class="icon-on-button"><i class="ion-ios-cloud-download-outline"></i></span></a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="ofertas" class="padding-top-bottom-90">
            <div class="container">
                <div class="heading-wraper text-center margin-bottom-80">
                    <h4>Nuestras Ofertas de este més</h4>
                    <hr class="heading-devider gradient-orange">
                </div>
                <div class="row">
                    <?php
                    while ($oferta = $ofertas->fetch_assoc()) {
                        echo '<div class="col-md-4">
                        <div class="oferta">
                            <img  src="' . $oferta['foto'] . '">
                            <div class="card-block">
                                <p class="card-text nombre"><small class="text-muted blog-category">' . $oferta['nombre'] . '</small></p>
                                <h6 class="card-title">S/' . $oferta['precio'] . '</h6>
                                <h4 class="card-title">S/' . $oferta['oferta'] . '</h4>
                                <p class="card-text"><small class="text-muted italic">' . $hoy . '</small></p>
                                <p class="card-text descripcion">' . $oferta['descripcion'] . '</p>
                            </div>
                          <a href="productos.php" >mas..</a>
                        </div>
                    </div>';
                    }
                    ?>
                </div>
            </div>
        </section> 
        <section id="sorteo" class="gradient-violat cta padding-top-bottom-90">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h3 class="cta-heading text-white">Participa en sorteo de nuestros productos</h3>
                        <h3 class="cta-heading text-white">Código: <?php
                            $codigo = random_int(10000, 99999);
                            echo$codigo
                            ?></h3>
                        <p class="text-white">Participa con el codigo generado envíanos un mensaje con el codigo y puedes ser uno más de nuestros ganadores</p>
                        <div class="cta-btn-group">
                            <a class="btn btn-orange border-none btn-rounded-corner" href="#mensaje">PARTICIPAR<span class="icon-on-button"><i class="ion-ios-cloud-download-outline"></i></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="servicios" class="padding-top-90">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img class="img-responsive sm-display-none" src="https://www.controltechinc.co/wp-content/uploads/2020/03/COMPUTADOR-PWG-COMBO-GAMER-PAD-MOUSE2.png" alt="">
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="heading-wraper text-center margin-bottom-80">
                                    <h4>EL MEJOR SERVICIO</h4>
                                    <hr class="heading-devider gradient-orange">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <h5 class="service-title">INSTALACIÓN</h5>
                                <p class="services-content margin-bottom-25">Istalación de HARWARE y SOFTWARE de su equipo adquerido en dode usted lo requiera e instrucción en el uso del equipo</p>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <h5 class="service-title">SOPORTE</h5>
                                <p class="services-content margin-bottom-25">Soporte técnico de cualquier producto adquerido en nuestra tiendas si esta dentro de la garantia el soporte es gratuito</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <h5 class="service-title">GARANTIA</h5>
                                <p class="services-content margin-bottom-25">La mayorí de nuestros productos cuentan con garantia minima de 6 meses a 3 años segun el producto adquerido, si su equipo tiene fallas cambielo de inmediato si se encuentra dentro del tiempo</p>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <h5 class="service-title">ENTREGA</h5>
                                <p class="services-content margin-bottom-25">Servicio de entrega a domicilio, su compra en linia sera entregado de inmediato a su domicilio en menos de 24 horas si la compra es de forma local en la ciudad de Arequipa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>        

        <section id="nosotros" class="testimonial-section padding-top-bottom-90 gradient-violat">
            <div class="container">
                <div class="heading-wraper text-center">
                    <h4 class="text-white">Nuesta empresa</h4>
                    <hr class="heading-devider gradient-orange">
                    <h6 class="text-white">RAMWARE está formada por un equipo humano de jóvenes profesionales,<br> con ilusión de participar en este proyecto empresarial y dispuesto a afrontar<br>las necesidades que las nuevas tecnologías requieren.</h6>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div id="testimonial-carousel" class="owl-carousel">
                            <?php
                           while ($perso = $personal->fetch_assoc()) {
                                echo '<div>
                                <div class="testimonial-container">
                                    <div class="client-details text-center">
                                        <img src="' . $perso['foto'] . '" alt="" class="foto">
                                        <h5 class="client-name">' . $perso['nombres'] .' '.$perso['apellidos']. '</h5>
                                        <p class="client-designation">' . $perso['cargo'] . '</p>
                                        <ul class="social-list">
                                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="testimonial-content">
                                        <p><i class="ion-quote"></i></p>
                                        <p class="testimonial-speech">' . $perso['presentacion'] . '</p>
                                    </div>
                                </div>
                            </div>';
                            }
                            ?>

                        </div>              
                    </div>
                </div>
            </div>
        </section>


        <section id="mensaje" class="padding-top-bottom-120 newsletter">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 sunscription-wraper-outer col-md-offset-2 bg-fit" style="background:url(images/newsletter.png)">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 padding-top-bottom-90">
                                <div class="subscription-wraper text-center">
                                    <h4 class="text-upper">Envíanos un mensaje</h4>
                                    <p>Si tienes dudas y consultas puedes escribirnos. te responderemos de inmediato</p>
                                    <form class="subscription-form">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nombre" required="">
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" required="">
                                            <textarea class=" mensaje" required=""></textarea>
                                        </div>
                                        <button class="btn btn-orange border-none btn-rounded-corner" type="reset" >Enviar ahora<span class="icon-on-button"><i class="ion-ios-arrow-thin-right"></i></span></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <?php
     
        include_once './footer.php';
      ?>
