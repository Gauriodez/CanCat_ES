<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CanCat_.index" %>

<!DOCTYPE html>
<html>
<head>
    <title>CanCat!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" href="../img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>
<body>
     <form runat="server" >
    <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +503 3923 9292</a>
                        <a href="#"><span class="fa fa-paper-plane mr-1"></span> Cancatvetpet@gmail.com</a>
                        <asp:Button ID="btnlogin" class="nav-item" type="submit" runat="server" Text="iniciar sesion" OnClick="BtnLogin" />

                        <a  href="https://localhost:44344/index.aspx"><span class="fa fa-paper-plane mr-2"></span>ES/EN</a>
                    </p>
                </div>
                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                <div class="col-md-6 d-flex justify-content-md-end">
                    <div class="social-media">
                        <p class="mb-0 d-flex">
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand"><span class="flaticon-pawprint-1 mr-2"></span>CanCat!</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link">Inicio</a></li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">informacion </a></li>
                    <li class="nav-item"><a href="vet.aspx" class="nav-link">Veterinaria</a></li>
                    <li class="nav-item"><a href="services.aspx" class="nav-link">Servicios</a></li>
                    <li class="nav-item"><a href="gallery.aspx" class="nav-link">Galeria</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contactos</a></li>
                    <li class="nav-item"><a href="Tienda.aspx" class="nav-link">Tienda</a></li>
                     <li class="nav-item"><a href="RegistroMascota.aspx" class="nav-link">Registro Mascotas</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-11 ftco-animate text-center">
                    <h1 class="mb-4"> Tu mascota siempre en las MEJORES MANOS </h1>
                    <p><a href="about.aspx" class="btn btn-primary mr-md-4 py-3 px-4">Leer mas<span class="ion-ios-arrow-forward"></span></a></p>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section bg-light ftco-no-pt ftco-intro">
        <div class="container">
            <div class="row">
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-blind"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Paseo para mascotas</h3>
                            <p>Se ofrece un servicio recreativo para las mascotas, posterior a un servicio estetico no se añade un cosoto adicional, el precio individual del servicio es 5$.</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Leer Mas</i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-dog-eating"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading"> Servicio Veterinario </h3>
                            <p>Ofrecemos servicios basicos al cuidado de las mascotas, de no ser posible poder atender a su mascota se le proporcionara el contacto de una veterinaria afiliada.</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Leer Más</i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                    <div class="d-block services text-center">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-grooming"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Aseo de Mascotas</h3>
                            <p>Proporcionamos servicios de cuidados esteticos para mascotas, incluyendo, baño, corte de uñas, corte de pelo, aseo dental y desparasitacion.</p>
                            <a href="pricing.aspx" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Leer Más</i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row d-flex no-gutters">
                <div class="col-md-5 d-flex">
                    <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(images/GatoDoctor.png);">
                    </div>
                </div>
                <div class="col-md-7 pl-md-5 py-md-5">
                    <div class="heading-section pt-md-5">
                        <h2 class="mb-4">¿Porque escogernos?</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-stethoscope"></span></div>
                            <div class="text pl-3">
                                <h4>Consejos de cuidado</h4>
                                <p>Ofrecemos una amplia cantidad de informacion acerca de multiples razas y especies de animales, con el fin de mejorar la calidad de vida de sus mascotas y mejorar la relacion mascota-dueño.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-customer-service"></span></div>
                            <div class="text pl-3">
                                <h4> Atencion al cliente </h4>
                                <p>Apoyamos a nuestros clientes a tiempo completo y estamos siempre atentos a sus dudas siempre dispuestos a prestar una ayuda por sus mascotas.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-emergency-call"></span></div>
                            <div class="text pl-3">
                                <h4>Servicios de emergencia</h4>
                                <p>Contamos con servicios de emergencia las 24 horas todos los dias del año, incluyendo servicio adomicilio de no ser posible trasladar a la mascota en cuestion a una sucursal.</p>
                            </div>
                        </div>
                        <div class="col-md-6 services-2 w-100 d-flex">
                            <div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-veterinarian"></span></div>
                            <div class="text pl-3">
                                <h4>Ayuda veterinaria</h4>
                                <p>Brindamos un exelente cuidado a sus mascotas, pues contamos con una amplia variedad de medicamentos, ademas de contar con un exelente equipo de expertos, dispuestos a dar todo su esfuerzo por el bienestar de sus mascotas.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-counter" id="section-counter">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="20">0</strong>
                        </div>
                        <div class="text">
                            <span>Clientes</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="50">0</strong>
                        </div>
                        <div class="text">
                            <span>Profesionales</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="60">0</strong>
                        </div>
                        <div class="text">
                            <span>Productos</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                    <div class="block-18 text-center">
                        <div class="text">
                            <strong class="number" data-number="35">0</strong>
                        </div>
                        <div class="text">
                            <span>Mascotas alojadas</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light ftco-faqs">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 order-md-last">
                    <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-center mb-4 mb-sm-0" style="background-image:url(images/about.jpg);">
                        <a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                            <span class="fa fa-play"></span>
                        </a>
                    </div>
                    <div class="d-flex mt-3">
                        <div class="img img-2 mr-md-2" style="background-image:url(images/about-2.jpg);"></div>
                        <div class="img img-2 ml-md-2" style="background-image:url(images/about-3.jpg);"></div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="heading-section mb-5 mt-5 mt-lg-0">
                        <h2 class="mb-3">Preguntas Frecuentes</h2>
                        <p>En este breve espacio respondemos algunas de las preguntas mas frecuentes que suelen hacer nuestros clientes, esto con el fin de poder ayudarle en la mayor brevedad posible.</p>
                    </div>
                    <div id="accordion" class="myaccordion w-100" aria-multiselectable="true">
                        <div class="card">
                            <div class="card-header p-0" id="headingOne" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseOne" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseOne">
                                        <p class="mb-0">¿Que puedo hacer si mi mascota tiene pulgas?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse show" id="collapseOne" role="tabpanel" aria-labelledby="headingOne">
                                <div class="card-body py-3 px-0">
                                    <ol>
                                        <li>El vinagre es un remedio casero bastante efectivo para eliminar pulgas en perros cuando la infestación no es muy grande. Su sabor agrio y su fuerte olor es muy desagradable para los parásitos por eso, cuando lo detectan, suelen alejarse y huir, incluso mueren. También funciona en el caso de garrapatas y como método de prevención, a modo de repelente natural En caso de infestaciones más graves, puedes utilizar solo el vinagre, sin mezclarlo con agua. Recuerda tener siempre cuidado con los ojos y la nariz pues es un producto muy fuerte.</li>
                                        <li>El champu anti-pulgas funcionan igual que un champú normal. Solo tendrás que aplicarlo y dejarlo actuar durante 5 minutos o el tiempo que indique el fabricante. Después aclara con agua y cepilla para eliminar todas las pulgas que hayan quedado en el pelo.</li>
                                        <li>El spray es un tratamiento rápido, eficaz y muy fácil de aplicar, de efecto inmediato. Solo tienes que pulverizar y masajear bien para distribuirlo por todo el pelaje. Esta es la mejor opción para infestaciones muy grandes. Te recomendamos bañar a tu perro después para que caigan todas las pulgas muertas, así como para eliminar las heces y la suciedad que dejan en la piel. Lo ideal es que, si tu perro tiene un gran número de pulgas, utilices primero un spray para eliminar todas las posibles y, después, una pipeta por si ha quedado alguna y a modo de prevención.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header p-0" id="headingTwo" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseTwo" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseTwo">
                                        <p class="mb-0">¿Que alimentos no debe consumir mi mascota?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="card-body py-3 px-0">
                                    <ul>
                                        <p>En el caso de los canes debes evitar a toda costa que el consuma estos alimentos:</p>
                                        <p>Aguacate, Cebolla, Cafe, chocolate y huevos crudos</p>
                                        <p>Cuando hablamos de los felinos no debemos darles:</p>
                                        <p>Cebollas, ajo, Huevos crudos, carne cruda, huesos, Chocolate y bebidas con cafeína </p>
                                        <p>En cuanto a los loros y algunas clases de aves pequeñas devemos evitar que consuman:</p>
                                        <p>Galletas saladas o pan, aguacate, ruibarbo, cebollas, ajo, setas, espárrago, berenjena o chocolate.En general, se debe evitar alimentarlos con comidas saladas, azucaradas, fritas o con contenido en teína, cafeína o alcohol. </p>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header p-0" id="headingThree" role="tab">
                                <h2 class="mb-0">
                                    <button href="#collapseThree" class="d-flex py-3 px-4 align-items-center justify-content-between btn btn-link" data-parent="#accordion" data-toggle="collapse" aria-expanded="false" aria-controls="collapseThree">
                                        <p class="mb-0">¿Cada cuanto debo asear a mi mascota?</p>
                                        <i class="fa" aria-hidden="true"></i>
                                    </button>
                                </h2>
                            </div>
                            <div class="collapse" id="collapseThree" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="card-body py-3 px-0">
                                    <ol>
                                        <li>Cada cuánto tiempo se baña a un perro dependerá un poco de cada animal, del estado de su salud, de su raza o de si tiende al mal olor, pero lo recomendable es no bañarle más de una vez al mes. Incluso con 2 veces al año sería suficiente en algunos casos.</li>
                                        <li>Si tu gato no suele salir al exterior, una frecuencia de lavado mensual es suficiente. ​También es cierto, que si consigues acostumbrar a tu gato al baño desde que es un gatito (a partir de los 2 meses de edad), el contacto con el agua no necesariamente debe resultarle desagradable.</li>
                                        <li>No olvides ofrecerle un baño a tu loro de al menos tres o cuatro veces a la semana, asegurándote de que disponga de un lugar donde haya una temperatura media y sin corrientes de aire.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section" style="background-image: url('images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <h2>Clientes felices &amp; comentarios</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                        <div class="pl-3">
                                            <p class="name">Roger Scott</p>
                                            <span class="position">Marketing Manager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

     <%--Blog--%>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-center pb-5 mb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <h2>Ultimas noticias de nuestro blog</h2>
                </div>
            </div>
            <div class="row d-flex">
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_1.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_2.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_3.jpg');">
                        </a>
                        <div class="text p-4">
                            <div class="meta mb-2">
                                <div><a href="#">April 07, 2020</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="fa fa-comment"></span> 3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Cuidado de mascotas</h2>
                    <p>En CanCat velamos por la salud y correcta alimentacion de las mascotas, debido a nuestro compromiso con los dueños y sus mascotas brindamos informacion sobre los cuidados basicos que nesesitan los animales para que puedan vivir mas placidamente y una gran cantidad de años.</p>
                    <ul class="ftco-footer-social p-0">
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Ultimas  noticias</h2>
                    <div class="block-21 mb-4 d-flex">
                        <a class="img mr-4 rounded" style="background-image: url(images/image_1.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="img mr-4 rounded" style="background-image: url(images/image_2.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> April 7, 2020</a></div>
                                <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 pl-lg-5 mb-4 mb-md-0">
                    <h2 class="footer-heading">Links Rapidos</h2>
                    <ul class="list-unstyled">
                        <li><a href="index.aspx" class="py-2 d-block">Inicio</a></li>
                        <li><a href="about.aspx" class="py-2 d-block">Acerca de</a></li>
                        <li><a href="vet.aspx" class="py-2 d-block">Veterinaria</a></li>
                        <li><a href="services.aspx" class="py-2 d-block">Servicios</a></li>
                        <li><a href="gallery.aspx" class="py-2 d-block">Galeria</a></li>
                        <li><a href="contact.aspx" class="py-2 d-block">Contactos</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-lg-3 mb-4 mb-md-0">
                    <h2 class="footer-heading">Tienes dudas?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                             <li><span class="icon fa fa-map"></span><span class="text">Calle Don Bosco y Av. Manuel Gallardo, 1-1, Santa Tecla</span></li>
                            <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+503 3923 9292</span></a></li>
                            <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">Cancatvetpet@gmail.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-12 text-center">

                    <p class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                       <script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | este modelo fue fabricado  <i class="fa fa-heart" aria-hidden="true"></i> por <a href="https://santacecilia.edu.sv" target="_blank">Colegio Salesiano Santa Cecilia</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>

         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
                     <script src="js/bootstrap.min.js"></script>

</form>
</body>
</html>
