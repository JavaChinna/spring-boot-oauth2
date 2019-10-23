<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" href="<c:url value='/webjars/bootstrap/css/bootstrap.min.css' />" />
<link rel="stylesheet" href="<c:url value='/static/css/style.css' />" />
<title>Demo</title>
</head>
<body>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 mx-auto px-0">
					<div class="card border-none">
						<div class="card-body py-0">
							<div>
								<form class="login_form" name='loginForm' action="<c:url value='/login' />" method='POST' accept-charset=utf-8>
									<c:if test="${not empty msg}">
										<div class="alert alert-${css} alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>
											<strong>${msg}</strong>
										</div>
									</c:if>
									<div class="form-group">
										<label for="tags">Sign in</label> <input type="email" class="form-control" id="username" name="j_username" placeholder="Enter email address"
											required="required">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" id="password" name="j_password" value="" placeholder="Enter password" required="required">
									</div>
									<div class="custom-control custom-checkbox">
										<button type="submit" class="btn btn-primary float-right">Sign in</button>
									</div>
								</form>
								<div class="clearfix"></div>
								<p class="content-divider center mt-3">
									<span>or</span>
								</p>
							</div>
							<form action="<c:url value='/auth/google'/>" name="signup" id="signup">
								<p class="social-login text-center">
									Sign in with:
									<a href="<c:url value='/oauth2/authorization/google' />" class="ml-2">
										<img alt="Login with Google" src="<c:url value='/static/img/google.png' />" class="btn-img">
									</a>
									<a href="<c:url value='/oauth2/authorization/facebook' />">
										<img alt="Login with Facebook" src="<c:url value='/static/img/facebook.png' />" class="btn-img">
									</a>
									<a href="<c:url value='/oauth2/authorization/github' />">
										<img alt="Login with Github" src="<c:url value='/static/img/github.png' />" class="btn-img">
									</a>
									<a href="<c:url value='/oauth2/authorization/linkedin' />">
										<img alt="Login with Linkedin" src="<c:url value='/static/img/linkedin.png' />" class="btn-img-linkedin">
									</a>
								</p>
							</form>
							<p class="text-center mb-2">
								Don't have an account yet?
								<a href="<c:url value='/register' />">Sign Up Now</a>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</section>
</body>
</html>