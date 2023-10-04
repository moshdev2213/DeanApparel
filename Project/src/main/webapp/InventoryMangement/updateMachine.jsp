<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%
MachineDAO od = new MachineDAO(DbCon.getConnection());
Machine mcn = od.machimeById(Integer.parseInt(request.getParameter("mid")));
%>
<div class="modal-body">
	<h4>Add Machine Details</h4>
	<form class="row g-3" action="javascript:0" id="UpdateMachineForm">
		<div class="col-md-6">
			<label class="form-label">Machnine Name</label> <input type="text"
				class="form-control" required value="<%=mcn.getMname()%>"
				id="addMachineMName">
		</div>
		<div class="col-md-6">
			<label class="form-label">Machine Modal</label> <input type="text"
				required class="form-control" value="<%=mcn.getMmodel()%>"
				id="addMachineMModal">
		</div>
		<div class="col-md-12">
			<label class="form-label">Machine Handler</label> <input type="text"
				required class="form-control" value="<%=mcn.getMhandler()%>"
				id="addMachineMHandler">
		</div>
		<div class="col-md-6">
			<label class="form-label">Machine Color</label> <input type="text"
				required class="form-control" value="<%=mcn.getMcolor()%>"
				id="addMachineMColor">
		</div>
		<div class="col-md-6">
			<label class="form-label">Machine Condition</label>
			<%
			String selectedValue = mcn.getMcondition(); // set the selected value dynamically
			%>

			<select class="form-select" id="addMachineMCondition"
				aria-label="Default select example">
				<option value="perfect"
					<%=selectedValue.equals("perfect") ? "selected" : ""%>>Perfect</option>
				<option value="normal"
					<%=selectedValue.equals("normal") ? "selected" : ""%>>Normal</option>
				<option value="bad"
					<%=selectedValue.equals("bad") ? "selected" : ""%>>Bad</option>
			</select>

		</div>
		<div class="col-12 d-flex justify-content-center">
			<button type="submit" id="UpdateMachineForMBtnSubmit"
				data-id="<%=mcn.getId()%>" class="mx-2 btn btn-primary">Edit
				Details</button>
			<button data-bs-dismiss="modal" type="button"
				class="btn btn-primary closethemodal">Close</button>
		</div>
	</form>
</div>