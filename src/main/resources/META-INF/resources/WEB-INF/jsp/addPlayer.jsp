<%@ include file="header.jspf" %>
	<div class="container">
		<h2>Enter Player Details</h2>
		<hr>
		<form:form modelAttribute="player" method="post" enctype="multipart/form-data">
		<form:input class="form-control" type="hidden" path="playerId"/>		
		<div class="mb-3 form-group">
			<label class="form-label">Player name</label> 
			<form:input class="form-control" type="text" path="playerName" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Gothram</label> 
			<form:input class="form-control" type="text" path="playerGothram" required="required"/>
		</div>
		<div class="mb-3 form-group">
			<label class="form-label">Contact Number</label> 
			<form:input class="form-control" type="text" path="playerPhone" required="required"/>
		</div>
		
		<div class="mb-3 form-group">
			<label class="form-label">Email ID</label> 
			<form:input class="form-control" type="text" path="playerEmail" required="required"/>
		</div>
	
		<div class="mb-3 form-group">
			<label class="form-label">Upload Photo (Max supported file size 2 MB)</label> 
			<form:input class="form-control" type="file" path="photo" required="required"/>
		</div>
		
		<form:input class="form-control" type="hidden" path="photoImg"/>
		<form:input class="form-control" type="hidden" path="playerPhoto"/>
		<div class="mb-3 form-group">
			<label class="form-label">Preferred Jersey Number</label> 
			<form:input class="form-control" type="text" path="jerseyNumber" required="required"/>
		</div>
		
		<div class="mb-3 form-group">
			<label class="form-label">T Shirt Size</label>
			<br> 
			<label class="radio-inline" style="padding-left:15px;">
				<span>S</span>	<form:radiobutton cssClass="form-check-input" path="playerShirtSize" value="S" required="required"/>
			</label>			
			<label class="radio-inline" style="padding-left:15px;">
				<span>M</span>	<form:radiobutton cssClass="form-check-input" path="playerShirtSize" value="M" required="required"/>
			</label>
			<label class="radio-inline" style="padding-left:15px;">
				<span>L</span>	<form:radiobutton cssClass="form-check-input" path="playerShirtSize" value="L" required="required"/>
			</label>
			<label class="radio-inline" style="padding-left:15px;">
				<span>XL</span>	<form:radiobutton cssClass="form-check-input" path="playerShirtSize" value="XL" required="required"/>
			</label>
			<label class="radio-inline" style="padding-left:15px;">
				<span>XXL</span>	<form:radiobutton cssClass="form-check-input" path="playerShirtSize" value="XXL" required="required"/>
			</label>
			
		</div>
		<input class="btn btn-primary like" type="submit" value="Save Player"/>
		</form:form>
	</div>	
<%@ include file="footer.jspf" %>