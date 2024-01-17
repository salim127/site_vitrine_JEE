<% if (session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
	
}	
%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>l'afrique</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">les probl�mes de l'afrique</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="loginAdmin.jsp">admin</a></li>
						
						<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><%= session.getAttribute("name") %>></a></li>
					
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">bienvenu dans notre site web</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">home</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				
				<!-- Portfolio Item 2-->
				
				
				
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/game.png"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 4-->
			
				
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
		<div class="container">
    
 
    
    <!-- Contenu de la Section � Propos -->
    <div class="row">
        <div class="col-lg-4 ms-auto">
            <p class="lead">L'Afrique est confront�e � divers d�fis, dont des probl�mes de sant� majeurs tels que la pr�valence de maladies graves. Les populations luttent contre des maladies telles que le paludisme, le VIH/SIDA et d'autres affections qui affectent la qualit� de vie.</p>
        </div>
        <div class="col-lg-4 me-auto">
            <p class="lead">De plus, le continent africain fait face � des d�fis li�s � la p�nurie de ressources marines, limitant les opportunit�s �conomiques et alimentaires. Les communaut�s c�ti�res ont besoin de solutions durables pour surmonter ces probl�mes.</p>
        </div>
    </div>
 
</div>

			<!-- About Section Button-->
			
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
				
					<form id="contactForm" data-sb-form-api-token="API_TOKEN" action="ContactServlet" method="post">
    <!-- Name input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
        <label for="name">Full name</label>
        <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
    </div>
    <!-- Email address input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="email" name="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
        <label for="email">Email address</label>
        <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
        <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
    </div>
    <!-- Phone number input -->
    <div class="form-floating mb-3">
        <input class="form-control" id="phone" name="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
        <label for="phone">Phone number</label>
        <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
    </div>
    <!-- Message input -->
    <div class="form-floating mb-3">
        <textarea class="form-control" id="message" name="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
        <label for="message">Message</label>
        <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
    </div>
    <!-- Submit Button -->
    <button id="submit" type="submit">Send</button>
</form>

				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Emplacement du Pied de Page -->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Emplacement</h4>
                <p class="lead mb-0">
                    [Votre Adresse] <br /> [Votre Ville, Pays]
                </p>
            </div>
            <!-- Ic�nes Sociales du Pied de Page -->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Sur le Web</h4>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
            </div>
            <!-- Texte � Propos du Pied de Page -->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">� Propos de notre Cause</h4>
                <p class="lead mb-0">
                    Notre mission est de sensibiliser aux d�fis de l'Afrique, notamment en mati�re de sant� et de ressources marines. Ensemble, travaillons pour des solutions durables et un avenir meilleur.
                </p>
            </div>
        </div>
    </div>
</footer>


	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Tasty
									Cake</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/game.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	
	<!-- Portfolio Modal 4-->
	
	<!-- Portfolio Modal 5-->

	<!-- Portfolio Modal 6-->

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
