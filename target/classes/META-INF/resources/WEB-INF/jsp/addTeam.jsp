<%@ include file="header.jspf" %>
	<div class="container">
		<h2>Add / Update Team Details</h2>
		<hr>
		<form:form modelAttribute="team" method="post" enctype="multipart/form-data">		
			<form:input type="hidden" path="id" />
			<form:input type="hidden" path="registeredUser" />
			<form:input type="hidden" path="logoImg" />
	
		<div class="mb-3 form-group">
			<label class="form-label">Team name</label> 
			<form:input cssClass="form-control" type="text" path="name" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Team Logo</label> 
			<form:input cssClass="form-control" type="file" path="logo" required="required"/>
			<form:input cssClass="form-control" type="hidden" path="teamLogo" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Team Captain</label> 
			<form:input cssClass="form-control" type="text" path="captain" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Place / City</label> 
			<form:input cssClass="form-control" type="text" path="location" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Locality / Representing Area</label> 
			<form:input cssClass="form-control" type="text" path="representing" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Do you need us to help you for accomodation?</label> 
			<br>
			Yes <form:radiobutton path="requireAccomodation" value="Yes" required="required"/>
			No <form:radiobutton  path="requireAccomodation" value="No" required="required"/>
		</div>
		<div class="mb-3 form-group">		
		<label class="form-label">Do you need any assistance with food?</label> 
			<br>
			Yes <form:radiobutton path="requireFood" value="Yes" required="required"/>
			No <form:radiobutton  path="requireFood" value="No" required="required"/>
		</div>
		
		<input class="btn btn-primary like" type="submit" value="Save Details"/>

		</form:form>
	</div>

<%@ include file="footer.jspf" %>