
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>

<%
SupplierDao cpd = new SupplierDao(DbCon.getConnection());
Suppliers sp = cpd.supplierById(Integer.parseInt(request.getParameter("sid")));
%>

<div class="modal-body">
	<h4>Edit Supplier Details</h4>
	<form class="row g-3" id="UpdateSupplierForm" action="javascript:0">
		<div class="col-md-6">
			<label for="inputCity" class="form-label">Name</label> <input
				type="text" class="form-control" id="supplierName" name="name"
				placeholder="" value="<%=sp.getName()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputEmail4" class="form-label">Email</label> <input
				type="email" class="form-control" id="supplierEmail" name="email"
				value="<%=sp.getEmail()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputPassword4" class="form-label">Contact Number</label>
			<input type="text" class="form-control" id="supplierContact"
				name="tel" value="<%=sp.getTel()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputAddress" class="form-label">NIC Number</label> <input
				type="text" class="form-control" id="supplierNIC" name="nic"
				placeholder="" value="<%=sp.getNic()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputPassword4" class="form-label">Bank Account
				No</label> <input type="text" class="form-control" id="supplierBank"
				name="bankac" value="<%=sp.getBankAcc()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputAddress2" class="form-label">Address </label> <input
				type="text" class="form-control" id="supplierAddress" name="address"
				placeholder="" value="<%=sp.getAddress()%>" required>
		</div>

		<div class="col-md-6">
			<label for="inputCity" class="form-label">City</label> <input
				type="text" class="form-control" id="supplierCity" name="city"
				value="<%=sp.getCity()%>" required>
		</div>
		<div class="col-md-6">
			<label for="inputState" class="form-label">Category</label>
			
			<%
			String selectedValue = sp.getCat(); // set the selected value dynamically
			%>
			
			<select id="supplierCategory" class="form-select" name="cat" required
				aria-label="Default select example">
				
				<option value="Fabric"
					<%=selectedValue.equals("Fabric") ? "selected" : ""%>>Fabric</option>
				<option value="Trims"
					<%=selectedValue.equals("Trims") ? "selected" : ""%>>Trims</option>
				<option value="Thread"
					<%=selectedValue.equals("Thread") ? "selected" : ""%>>Thread</option>
				<option value="Labels and tags"
					
					<%=selectedValue.equals("Labels and tags") ? "selected" : ""%>>Labels and tags</option>
					<option value="Lining"
					<%=selectedValue.equals("Lining") ? "selected" : ""%>>Lining</option>
			</select>		
		</div>

		<div class="modal-footer p-0 d-flex justify-content-center">
			<button type="submit" id="UpdateSupplierForMBtnSubmit"
				data-id="<%=sp.getId()%>" class="btn btn-primary">Save
				Changes</button>
			<button data-bs-dismiss="modal" class="btn btn-primary"
				id="closethemodal">Close</button>
		</div>
	</form>
</div>