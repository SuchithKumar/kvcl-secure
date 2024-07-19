<%@ include file="header.jspf"%>
<div class="container">
	<h2>Login Form</h2>
	<hr>
	<form method="post" action="/login">
		<pre class="text-danger">${loginError}</pre>
		<div class="mb-3">
			<label class="form-label">Enter Phone Number</label> <input
				class="form-control" type="text" name="username">
		</div>
		<div class="mb-3">
			<label class="form-label">Enter your password</label> <input
				class="form-control" type="password" name="password">
		</div>
		<div class="mb-6">
			<input class="btn btn-primary like" type="submit" value="Login" />
			 <a	href="register-user" class="btn btn-warning">Register</a>
		</div>
	</form>
</div>
<%@ include file="footer.jspf"%>