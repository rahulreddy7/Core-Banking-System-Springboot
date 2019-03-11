<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="content-wrapper">
		<div class="col-md-12" id="page-content" align="center">
			<div class="panel panel-primary">
  				<div class="panel-heading">
    				<h3 class="panel-title">Registration</h3>
 				 </div>
	  			 <div class="panel-body">
					<form class="form-horizontal" id="RegistrationExternal" action="externalregister" method="post">
			  			<fieldset>
			  				<div class="form-group">
						      <label for="select" class="col-lg-2 control-label">Customer Type</label>
						      <div class="col-lg-5">
						        <select class="form-control" name="designation" id="designation" required>
						          <option value="">Select Option</option>
						          <option value="ROLE_CUSTOMER">Customer</option>
						          <option value="ROLE_MERCHANT">Merchant</option>
						        </select>
						       </div>
						     </div>
			  				
			  				<div class="form-group">
						      <label for="email" class="col-lg-2 control-label">Email</label>
						      <div class="col-lg-5">
						        <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
						      </div>
						    </div>
						    <div class="form-group">
						      <label for="firstname" class="col-lg-2 control-label">First Name</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" id="firstname" placeholder="First Name" required>
						      </div>
						    </div>
						    <div class="form-group">
						      <label for="middlename" class="col-lg-2 control-label">Middle Name</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" id="middlename" placeholder="Middle Name" required>
						      </div>
						    </div>
						    <div class="form-group">
						      <label for="lastname" class="col-lg-2 control-label">Last Name</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" id="lastname" placeholder="Last Name" required>
						      </div>
						    </div>
						    <div class="form-group">
						      <label for="address" class="col-lg-2 control-label">Address</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" name="address" id="address" placeholder="Address" required>
						      </div>
						    </div>
						    <div class="form-group">
						      <label for="phone" class="col-lg-2 control-label">Phone Number</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone" required>
						      </div>
						    </div>
						    
						    <div class="form-group">
						      <label for="date_of_birth" class="col-lg-2 control-label">DOB</label>
						      <div class="col-lg-5">
						        <input type="date" class="form-control" name="date_of_birth" id="date_of_birth" placeholder="Date of Birth" required>
						      </div>
						    </div>
						    
						    <div class="form-group">
						      <label for="ssn" class="col-lg-2 control-label">SSN</label>
						      <div class="col-lg-5">
						        <input type="text" class="form-control" name="ssn" id="ssn" placeholder="SSN Number" required>
						      </div>
						    </div>
						    
						        <br>
						     <div class="form-group">
						      <div class="col-lg-7 col-lg-offset-2">
						      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						        <button type="reset" class="btn btn-default">Reset</button>
						        <button id="register_external" name="action" value="register_external">Submit</button>
						      </div>
						    </div>           
			  			</fieldset>
		  			</form>
	 			 </div>
			</div>
			
				
			</div>
		
		</div> <!-- .content-wrapper -->
	
	</main> <!-- .cd-main-content -->
		<script>
		
		$(document).ready(function(){
		$('#submit').click(function(){
		var name=$('#name').val();
		var userEmail=$('#email').val();
		var ssn = $('#ssn').val();
		var address = $('#address').val();
		var filter = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		if(!filter.test(userEmail))
		{
			$("#email").focus();
		    $("#errorBox").html("Please Enter a Valid Email Address");
		return false;
		}
		filter = /^[A-z]+$/;
		
		if(!filter.test(name))
		{
			$("#name").focus();
		    $("#errorBox").html("Name can contain only alphabets");
		return false;
		}
		
		
		filter = /((^[0-9]+[a-z]+)|(^[a-z]+[0-9]+))+[0-9a-z]+$/i;
		if(!filter.test(address))
		{
			//console.log("hahah");
			$("#address").focus();
		    $("#errorBox").html("Please Enter a Valid address");
		return false;
		}	
		
		var strongRegex = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
		//console.log(userSsn);
		if(!strongRegex.test(password))
		{
			console.log(password);
			$("#password").focus();
		    $("#errorBox").html("Please Enter a Valid Password");
		return false;
		}	
		var filter1 =  /^[0-9]{3}\-?[0-9]{2}\-?[0-9]{4}$/; 
		if(!filter1.test(ssn))
		{
			//console.log(userSsn);
			$("#ssn").focus();
		    $("#errorBox").html("Please Enter a Valid SSN");
		return false;
		}	
		
		});
	});
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
		sideNavigationSettings();
	});
	</script>
</body>
</html>