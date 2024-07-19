<%@ include file="header.jspf" %>
<div class="container">
	<h2>Team Details</h2>
	<hr>
	<c:if test="${team!=null}">
		<div>
			<section class="vh-10" style="background-color: #f4f5f7;">	
			  <div class="container py-2 h-10">
			    <div class="row d-flex justify-content-center align-items-center h-30">
			      <div class="col col-lg-6 mb-1 mb-lg-0">
			        <div class="card mb-3" style="border-radius: .5rem;">
			          <div class="row g-0">
			            <div class="col-md-4 gradient-custom text-center text-white"
			              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
			              <img src="${team.logoImg}"
			                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
			              <h5 style="color: black">${team.name}</h5>
			              <h6 style="color: black">Captain : ${team.captain}</h6>
			              <p style="color: black;"> Edit Team Info <a href="/user/register-team" class="fa fa-edit mb-5"></a></p>
			            </div>
			            <div class="col-md-8">
			              <div class="card-body p-4">
		                	<h6>Team Details</h6> 	
			                <hr class="mt-0 mb-4">
			                <div class="row pt-1">
			                  <div class="col-6 mb-3">
			                    <h6>Location</h6>
			                    <p class="text-muted">${team.location}</p>
			                  </div>
			                  <div class="col-6 mb-3">
			                    <h6>Representing</h6>
			                    <p class="text-muted">${team.representing}</p>
			                  </div>
			                </div>
			                <hr class="mt-0 mb-4">
			                <div class="row pt-1">
			                  <div class="col-6 mb-3">
			                    <h6>Require Accomodation?</h6>
			                    <p class="text-muted">${team.requireAccomodation}</p>
			                  </div>
			                  <div class="col-6 mb-3">
			                    <h6>Require Food?</h6>
			                    <p class="text-muted">${team.requireFood}</p>
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
		</div>
		<hr>	
		<h3>Player details</h3>
		<c:if test="${not empty players}">
			<div class="container">
			<%
				int i=0;
			%>
			<c:forEach var="item" items="${players}">
			 <section class="vh-10" style="background-color: #f4f5f7;">	
			  <div class="container py-2 h-10">
			    <div class="row d-flex justify-content-center align-items-center h-30">
			      <div class="col col-lg-6 mb-1 mb-lg-0">
			        <div class="card mb-3" style="border-radius: .5rem;">
			          <div class="row g-0">
			            <div class="col-md-4 gradient-custom text-center text-white"
			              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
			              <img src="${item.photoImg}"
			                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
			              <h5 style="color: black;">${item.playerName}</h5>
			              <p style="color: black;">${team.name}</p>
			              <p style="color: black;"> Edit Player Info <a href="/user/edit-player/${item.playerId}" class="fa fa-edit mb-5"></a></p>
			            </div>
			            <div class="col-md-8">
			              <div class="card-body p-4">
		                	<h6>Player Info</h6> 	
			                <hr class="mt-0 mb-4">
			                <div class="row pt-1">
			                  <div class="col-6 mb-3">
			                    <h6>Email</h6>
			                    <p class="text-muted">${item.playerEmail}</p>
			                  </div>
			                  <div class="col-6 mb-3">
			                    <h6>Phone</h6>
			                    <p class="text-muted">${item.playerPhone}</p>
			                  </div>
			                </div>
			                <hr class="mt-0 mb-4">
			                <div class="row pt-1">
			                  <div class="col-6 mb-3">
			                    <h6>Gothram</h6>
			                    <p class="text-muted">${item.playerGothram}</p>
			                  </div>
			                  <div class="col-6 mb-3">
			                    <h6>T Shirt Size</h6>
			                    <p class="text-muted">${item.playerShirtSize}</p>
			                  </div>
			                </div>
			                <div class="d-flex justify-content-start">
			                 
			                </div>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>
			    </div>
			  </div>
		  </section>
		</c:forEach>
		
	</div>
	<br>
	</c:if>
		<div class="container">
			<a class ="btn btn-warning" href="/user/add-player">Add New Player</a>	
		</div>	
	</c:if>
		
	<c:if test="${team==null}">
		<a class="btn btn-primary" href="/user/register-team">Add new Team</a>
	</c:if>	
</div>
<%@ include file="footer.jspf" %>




