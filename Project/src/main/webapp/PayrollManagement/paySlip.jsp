<%@page import="apparels.DBcon.DbCon"%>
<%@page import="apparels.DAO.SalaryMDao"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.Employee"%>
<%@page import="java.time.format.*"%>
<%@page import="java.text.*"%>
<%
	SalaryMDao smd = new SalaryMDao(DbCon.getConnection());
	List<String> payheads = smd.getPaySlipHeader(request.getParameter("sid"), request.getParameter("empmail"));
	
	System.out.print(payheads);
	 
%>
<div class="row">
	<div class="col-md-12">
		<div class="card" id="pdf">
			<div class="card-body">
				<h4 class="payslip-title text-center mb-1 text-uppercase">Payslip
					for the month of <%=payheads.get(5) %></h4>
				<div class="row">
					<div class="col-sm-6 mb-3">
						<img src="../assets/img/Dean.png" alt="">
					</div>
					<div class="col-sm-6 m-b-20 d-flex flex-column align-items-end">
						<h3 class="text-uppercase">
							<span class="text-danger"><%=payheads.get(4) %></span>
						</h3>
						<ul class="list-unstyled">
							<li>Salary Month: <span><%=payheads.get(5) %></span></li>
						</ul>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-6 m-b-20 ">
						<ul class="list-unstyled">
							<li>
								<h5 class="mb-0">
									<strong><%=payheads.get(0) %></strong>
								</h5>
							</li>
							<li><span class="text-capitalize"><%=payheads.get(1) %></span></li>
							<li>Employee ID: EMP<%=payheads.get(2) %></li>
							<li>Joining Date: <%=payheads.get(3) %></li>
						</ul>
					</div>
					<div class="col-sm-6 m-b-20 d-flex flex-column align-items-end">
						<ul class="list-unstyled mb-0">
							<li>
								<h5 class="mb-0 text-end">
									<strong>DEAN APPARELLS</strong>
								</h5>
							</li>
							<li class="text-end">Dean Technologies</li>
							<li class="text-end">Lake Road, Dehelgamuwa</li>
							<li class="text-end">Ibbagamuwa, Kurunegala</li>
						</ul>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div>
							<h4 class="m-b-10">
								<strong>Details</strong>
							</h4>
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td><strong>Basic Salary</strong> <span class="float-end">Rs.<%=payheads.get(7) %></span></td>
									</tr>
									<tr>
										<td><strong>Hourly Rate</strong> <span
											class="float-end">Rs.300</span></td>
									</tr>
									<tr>
										<td><strong>OT Rate</strong> <span class="float-end">Rs.500</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
					<div class="col-sm-12  d-flex justify-content-end">
						<p class="h3">
							<strong class="text-danger">Net Salary: Rs.<%=payheads.get(7) %></strong>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>