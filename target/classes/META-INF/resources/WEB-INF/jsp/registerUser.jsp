<%@ include file="header.jspf" %>
<div class="container">
	<h2>KVCL New User Registration</h2>
	<hr>
	<pre>${registerErrors}</pre>
	<form:form method="post" modelAttribute="user">
			<div class="mb-3">
				<label class="form-label">Enter Name</label> 
				<form:input class="form-control" type="text" path="name" required="required"></form:input>
				<form:errors cssClass="text-warning" path="name"></form:errors>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter password</label> 
				<form:input class="form-control" type="password" path="password" required="required"></form:input>
				<form:errors cssClass="text-warning" path="password"></form:errors>
			</div>
			<div class="mb-3">
				<label class="form-label">Re-Enter password </label> 
				<form:input class="form-control" type="password" path="reEnterPassword" required="required"></form:input>
				<form:errors cssClass="text-warning" path="reEnterPassword"></form:errors>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Phone number</label> 
				<form:input class="form-control" type="text" path="username" required="required"></form:input>
				<form:errors cssClass="text-warning" path="username"></form:errors>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Email ID</label> 
				<form:input class="form-control" type="text" path="email" required="required"></form:input>
				<form:errors cssClass="text-warning" path="email"></form:errors>
			</div>		
			<form:input className="form-control" type="hidden" path="roles"></form:input>
			<div class="center">
				<input class="btn btn-primary" type="submit" value="Register" />
			</div>
	</form:form>
</div>
<%@ include file="footer.jspf" %>