<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<link rel="stylesheet" href="<c:url value='/webjars/bootstrap/css/bootstrap.min.css' />" />
<link rel="stylesheet" href="<c:url value='/static/css/style.css' />" />
<title>Demo</title>
</head>
<body>
	<div class="container-fluid">
		<section>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 mx-auto">
						<div class="card border-none">
							<div>
								<div class="mt-2 text-center">
									<h2>Create Your Account</h2>
								</div>
								<div id="result" style="color: #ff0000"></div>
								<div class="mt-2">
									<c:url value="/register" var="actionUrl" />
									<form:form name="register" id="register" modelAttribute="userRegistrationForm" action="${actionUrl}" method="post">
										<div class="form-group">
											<form:input type="text" class="form-control" id="displayName" path="displayName" value="" placeholder="Enter display name" />
											<form:errors path="displayName" class="control-label has-error" />
										</div>
										<div class="form-group">
											<form:input type="email" class="form-control" id="email" path="email" value="" placeholder="Enter email address" />
											<form:errors path="email" class="control-label has-error" />
										</div>
										<div class="form-group">
											<form:input type="password" class="form-control" id="password" path="password" value="" placeholder="Enter password" />
											<form:errors path="password" class="control-label has-error" />
										</div>
										<div class="form-group">
											<form:input type="password" class="form-control" id="confirmpassword" path="matchingPassword" value="" placeholder="Confirm password" />
											<form:errors path="matchingPassword" class="control-label has-error" />
											<spring:hasBindErrors name="userRegistrationForm">
												<c:if test="${errors.hasGlobalErrors()}">
													<span class="has-error">${errors.getGlobalError().defaultMessage}</span>
												</c:if>
											</spring:hasBindErrors>
										</div>
										<form:input type="hidden" id="socialProvider" path="socialProvider" value="LOCAL" />
										<button type="submit" class="btn btn-primary btn-block" id="doRegister">Create Account</button>
									</form:form>
									<div class="clearfix"></div>
									<p class="content-divider center mt-3">
										<span>or</span>
									</p>
								</div>
								<p class="text-center">
									Already have an account?
									<a href="<c:url value='/login' />">Login Now</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>