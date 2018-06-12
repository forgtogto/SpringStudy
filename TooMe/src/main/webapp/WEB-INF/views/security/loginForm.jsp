<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">

				<c:url value="j_spring_security_check" var="loginUrl" />
				<form action="${loginUrl}" method="post">
					<c:if test="${param.ng != null}">
						<p>
							로그인 실패!! <br />
							<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL}">
							message : <c:out
									value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
							</c:if>
						</p>
					</c:if>
					<div class="form-group">
						<label for="inputId">아이디</label> <input class="form-control"
							id="inputId" name="j_username" type="text" placeholder="Enter ID">
					</div>
					<div class="form-group">
						<label for="inputpw">패스워드</label> <input class="form-control"
							id="inputpw" name="j_password" type="password"
							placeholder="Password">
					</div>
					<div class="form-group">
						<div class="form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox"> Remember
								Password
							</label>
						</div>
					</div>
					<button class="btn btn-primary btn-block" type="submit">Login</button>
				</form>

				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
</body>