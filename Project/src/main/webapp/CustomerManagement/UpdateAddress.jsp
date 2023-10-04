<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>

<%
CusProfileDao cpd = new CusProfileDao(DbCon.getConnection());
UserAddress usr = new UserAddress();
usr = cpd.getUserAddresses(request.getParameter("email"), Integer.parseInt(request.getParameter("id")));

//fetch the districts bt the connection of the checkout dao

CheckOutDao chk = new CheckOutDao(DbCon.getConnection());

HashMap<String, String> district = new HashMap<String, String>();
district = chk.getALLDistrict();

HashMap<String, String> province = new HashMap<String, String>();
province = chk.getALLProvince();
%>
<div class="card-header pb-0">
	<div class="d-flex align-items-center">
		<p class="mb-0">User Address</p>
		<a class="bg-white ms-auto">Edit Your Addresses</a>
	</div>
</div>
<div class="card-body pt-1">

	<div class="row">
		<div class="col-6">
			<label for="c_country" class="text-black">District <span
				class="text-danger">*</span>
			</label> <select id="c_country" name="c_district" class="form-control"
				required>
				<%
				for (Map.Entry<String, String> entry : district.entrySet()) {
				%>
				<option value="<%=entry.getKey()%>"
					<%if (entry.getKey().equals(usr.getDistrictId()))
	out.print("selected");%>><%=entry.getValue()%></option>
				<%
				}
				%>

			</select>
		</div>
		<div class="col-6">
			<label for="c_country" class="text-black">Province <span
				class="text-danger">*</span>
			</label> <select id="c_province" name="c_province" class="form-control"
				required>
				<%
				for (Map.Entry<String, String> entry : province.entrySet()) {
				%>
				<option value="<%=entry.getKey()%>"
					<%if (entry.getKey().equals(usr.getProvinceId()))
	out.print("selected");%>><%=entry.getValue()%></option>
				<%
				}
				%>

			</select>
		</div>
		<div class="col-md-12">
			<div class="form-group">
				<label for="example-text-input" class="form-control-label">Address
					Of The</label> <input class="form-control" type="text" id="address_of"
					required placeholder="home , office , etc...."
					value="<%=usr.getAddressOf()%>" />
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="example-text-input" class="form-control-label">City</label>
				<input class="form-control" required id="city_ad" type="text"
					value="<%=usr.getCity()%>" />
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="example-text-input" class="form-control-label">Street</label>
				<input class="form-control" required id="street_ad" type="text"
					value="<%=usr.getSrteet()%>" />
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label for="postal_ad" class="form-control-label">Postal
					code</label> <input class="form-control" required id="postal_ad" type="tel"
					pattern="\d{1,6}" placeholder="437300"
					title="Please input a 6-digit numeric code" 
					value="<%=usr.getPostalCode()%>"/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<button type="submit" data-id="<%=usr.getaId()%>"
				class="btn btn-danger btn-sm ms-auto btnDltAddress">Delete
				Address</button>
		</div>
		<div class="col-md-4">
			<button type="submit" data-id="<%=usr.getaId()%>"
				class="btn btn-success btn-sm ms-auto btnUptAddress">Update
				Address</button>
		</div>
		<div class="col-md-4">
			<button type="submit"
				class="btn btn-primary btn-sm ms-auto btnAddNewAddress">Add
				New Address</button>
		</div>
	</div>
</div>