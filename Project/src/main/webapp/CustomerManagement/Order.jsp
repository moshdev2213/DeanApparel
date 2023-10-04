
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="apparels.DAO.*"%>
<%@page import="java.util.*"%>
<%@page import="apparels.Modal.*"%>
<%@page import="apparels.DBcon.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.*"%>
<%@page import="java.time.format.*"%>

<%@page import="java.util.Date"%>
<%
User authin = (User) request.getSession().getAttribute("auth");

NumberFormat nf = NumberFormat.getInstance(new Locale("en", "US"));

OrderDao od = new OrderDao(DbCon.getConnection());
List<Order> order = null;
if (authin != null) {
	request.setAttribute("authin", authin);

	order = od.getOrderList2(Integer.parseInt(request.getParameter("id")));
} else {
	response.sendRedirect("Cuslogin.jsp");
}
%>

<%
if (order != null) {

	for (Order o : order) {
%>
<input type="hidden" id="pid" value="<%=o.getId()%>" />
<input type="hidden" id="authmail"
	value="<%=authin != null ? authin.getEmail() : ""%>" />
<input type="hidden" id="oid" value=<%=o.getOid()%> />
<div class="card my-2">
	<div class="card-header p-3 pb-0">
		<div class="d-flex justify-content-between align-items-center">
			<div>
				<h6>Order Details</h6>
				<p class="text-sm mb-0">
					Invoice no. <b><%=o.getInvoice()%></b><br> Date <b><%=o.getDayz()%></b>
				</p>
				<p class="text-sm">
					Code: <b>KF332</b>
				</p>
			</div>
			<div class="d-flex justify-content-around align-items-center">
				<a href="#" data-bs-toggle="modal" data-bs-target="#invoiceModal"
					class="btn bg-gradient-secondary ms-auto mb-0"
					style="margin-right: 10px;">Invoice</a>

				<div class="modal fade" id="invoiceModal" style="z-index: 9999999;"
					tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog  modal-lg modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body p-0">
								<form class="" action="index.html" id="pdf" method="post">
									<div class="card my-sm-5 my-lg-0">
										<div class="card-header text-center pb-0">
											<div class="row justify-content-between">
												<div class="col-md-4 text-start mt-1">

													<h6 class="mb-0">St. Independence Embankment, 050105
														Bucharest, Romania</h6>
													<p class="d-block text-secondary mb-2 mb-md-0">tel: +4
														(074) 1090873</p>
												</div>
												<div class="col-lg-3 col-md-7 text-md-end text-start ">
													<h6 class="d-block mt-2 mb-0">
														Billed to:
														<%=authin != null ? authin.getFname() : ""%>
													</h6>
													<p class="text-secondary mb-0">
														4006 Locust View Drive<br> San Francisco CA<br>
														California
													</p>
												</div>
											</div>
											<!-- <br> -->
											<div class="row justify-content-md-between">
												<div class="col-md-4 mt-md-1 mt-4">
													<h6 class="mb-0 text-start text-secondary">Invoice no</h6>
													<h5 class="text-start mb-0"><%=o.getInvoice()%></h5>
												</div>
												<div class="col-lg-5 col-md-7 mt-auto">
													<div class="row mt-md-1 mt-4 text-md-end text-start">
														<div class="col-md-2">
															<h6 class="text-secondary mb-0"></h6>
														</div>
														<div class="col-md-10">
															<h6 class="text-dark mb-0">
																Date :
																<%=o.getOplaceddate()%></h6>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="card-body p-3 pb-0">
											<div class="row">
												<div class="col-12">
													<div class="table-responsive ">
														<table class="table text-right"
															id="tbl_exporttable_to_xls">
															<thead class="bg-default">
																<tr>
																	<th scope="col" class="pe-2 text-start ps-2 text-white">Item</th>
																	<th scope="col" class="pe-2 text-white">Qty</th>
																	<th scope="col" class="pe-2 text-white" colspan="2">Rate</th>
																	<th scope="col" class="pe-2 text-white">Amount</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="text-start"><%=o.getName()%></td>
																	<td class="ps-4"><%=o.getQuantity()%></td>
																	<td class="ps-4" colspan="2">Rs <%=nf.format(o.getPrice())%>.00
																	</td>
																	<td class="ps-4 text-end">Rs <%=nf.format(o.getPrice() * o.getQuantity())%>
																		.00
																	</td>
																</tr>

															</tbody>
															<tfoot>
																<tr>
																	<th></th>
																	<th></th>
																	<th class="h5 ps-4" colspan="2">Coupon</th>
																	<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getCpn())%>.00
																	</th>
																</tr>
																<tr>
																	<th></th>
																	<th></th>
																	<th class="h5 ps-4" colspan="2">Delivery</th>
																	<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getDfee())%>.00
																	</th>
																</tr>
																<tr>
																	<th></th>
																	<th></th>
																	<th class="h5 ps-4" colspan="2">Total</th>
																	<th colspan="1" class="text-end h5 ps-4">Rs <%=nf.format(o.getTotal())%>.00
																	</th>
																</tr>
															</tfoot>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="card-footer mt-md-2 mt-2 pt-0">
											<div class="row">
												<div class="col-lg-5 text-left">
													<h5>Thank you!</h5>
													<p class="text-secondary text-sm">If you encounter any
														issues related to the invoice you can contact us at:</p>
													<h6 class="text-secondary mb-0">
														email: <span class="text-dark"><a
															href="/cdn-cgi/l/email-protection" class="__cf_email__"
															data-cfemail="21525451514e53556142534440554857440c55484c0f424e4c">[email&#160;protected]</a></span>
													</h6>
												</div>

											</div>
										</div>
									</div>
								</form>
								<div class="text-center mt-2">
									<a href="#" onclick="generateimg()" class="btn btn-danger">IMG</a>
									<a href="#" onclick="generatepdf()" class="btn btn-danger">PDF</a>
									<a href="#" onclick="ExportToExcel('xlsx')"
										class="btn btn-success">Export CSV</a>
									<button type="button" class="btn btn-dark rounded"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- modal End invoce-->
				<a href="#" data-bs-toggle="modal" data-bs-target="#rateModal"
					class="btn bg-gradient-secondary ms-auto mb-0">Add Rating</a>
				<!-- modal Start -->
				<div class="modal fade" id="rateModal" style="z-index: 99999;"
					tabindex="-1" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog  modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
								<form id="myFormRating" action="javascript:0">
									<div class="form-row">
										<h5 class="ml-1 text-black" style="font-weight: 700">
											<%=o.getName()%></h5>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Comments</label>
										<textarea class="form-control" id="comment" required rows="5"
											name="comment"></textarea>
									</div>
									<div class="row">
										<div class="col-6">
											<label for="inputState">Quality</label> <select id="quality"
												class="form-control" name="quality">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
										<div class="col-6">
											<label for="inputState">Accuracy</label> <select
												id="accuracy" class="form-control" name="accuracy">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="col-6">
											<label for="inputState">Durability</label> <select
												id="durability" class="form-control" name="durability">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
										<div class="col-6">
											<label for="inputState">Shipping</label> <select
												id="shipping" class="form-control" name="shipping">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="col-6">
											<label for="inputState">As mentioned</label> <select
												id="asment" class="form-control" name="asment">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
										<div class="col-6">
											<label for="inputState">Reliability</label> <select
												id="reliability" class="form-control" name="reliability">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="col-12">
											<label for="inputState">Product Rating</label> <select
												id="prate" class="form-control" name="prate">
												<option value="1" selected>1 STAR</option>
												<option value="2">2 STAR</option>
												<option value="3">3 STAR</option>
												<option value="4">4 STAR</option>
												<option value="5">5 STAR</option>
											</select>
										</div>
									</div>
									<div class="text-center mt-2">
										<button type="button"
											class="btn btn-dark rounded closethemodal"
											data-bs-dismiss="modal">Close</button>
										<button type="submit"
											class="btn bg-primary text-white rounded InsertRate">
											Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- modal End rating-->
			</div>

		</div>
	</div>
	<div class="card-body p-3 pb-0 pt-0">
		<hr class="horizontal dark mt-0 mb-4">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-12">
				<div class="d-flex">
					<div>
						<img src="../assets/img/Products/<%=o.getThumbnail()%>"
							class="avatar avatar-xxl me-3" alt="product image">
					</div>
					<%
					String cancelled = "";
					cancelled = od.SelectCanceledOrder(o.getOid());
					System.out.print(cancelled);
					%>
					<div>
						<h6 class="text-lg mb-0 mt-2"><%=o.getName()%></h6>
						<%
						if (Integer.parseInt(o.getDiff()) < 0) {
						%>
						<p class="text-sm mb-3">
							Order was delivered
							<%=Math.abs(Integer.parseInt(o.getDiff()))%>
							days ago.
						</p>
						<span class="badge badge-sm bg-gradient-success">Delivered</span>
						<%
						} else if (cancelled != "" && Integer.parseInt(o.getDiff()) > 0) {
						%>
						<p class="text-sm mb-2">
							Cancelled <span class="text-sm text-bolder"><%=cancelled%></span>
							Due To Your Request
						</p>
						<span class="badge badge-sm bg-gradient-danger">Order
							Cancelled</span>
						<%
						} else if (Integer.parseInt(o.getDiff()) > 0) {
						%>
						<p class="text-sm mb-3">
							Order will be delivered in
							<%=Math.abs(Integer.parseInt(o.getDiff()))%>
							days.
						</p>
						<span class="badge badge-sm bg-gradient-danger">Not
							Delivered</span>

						<%
						}
						%>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-12 my-auto text-end">

				<%
				if (Integer.parseInt(o.getDiff()) < 0) {
				%>
				<a data-bs-toggle="modal" data-bs-target="#feedbackModal"
					class="btn bg-gradient-info mb-0">FeedBack</a> <a
					class="btn bg-gradient-success mb-0" data-bs-toggle="modal"
					data-bs-target="#refundModal">Refund</a>
				<%
				}

				else if (cancelled != "" && Integer.parseInt(o.getDiff()) > 0) {
				%>
				<button disabled class="btn bg-gradient-danger mb-0">Cancel</button>
				<%
				}

				else if (Integer.parseInt(o.getDiff()) > 0) {
				%>
				<button class="btn bg-gradient-danger mb-0" id="CancelOrder">Cancel</button>
				<%
				}
				%>

				<button data-bs-toggle="modal" class="d-none" id="openthemodal"
					data-bs-target="#opModal">here</button>

				<!-- modal cancellation -->
				<div class="modal fade" id="opModal" style="z-index: 99999;"
					tabindex="-1" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog  modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
								<form id="myFormcancellation" action="javascript:0">
									<div class="form-row">
										<h5 class="ml-1 text-black" style="font-weight: 700">
											<%=o.getName()%></h5>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Reason For
											Cancellation</label>
										<textarea class="form-control" id="Reason" required rows="5"
											name="Reason"></textarea>
									</div>

									<div class="text-center mt-2">
										<button type="button"
											class="btn btn-dark rounded closethemodal"
											data-bs-dismiss="modal">Close</button>
										<button type="submit"
											class="btn bg-primary text-white rounded"
											id="CancelOrderfurther">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- modal End cancellation-->

				<!-- modal refund -->
				<div class="modal fade" id="refundModal" style="z-index: 99999;"
					tabindex="-1" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog  modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
								<form id="myFormRefund" action="javascript:0">
									<div class="form-row">
										<h5 class="ml-1 text-black text-start"
											style="font-weight: 700">
											<%=o.getName()%></h5>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1" class="text-start">Reason
											For Refunding</label>
										<textarea class="form-control" id="refundreason" required
											rows="5" name="refundreason"></textarea>
									</div>

									<div class="row">
										<div class="col-6">
											<label for="inputState" class="text-start">Email</label>
											<div class="form-group">
												<input type="email" disabled value="<%=o.getEmail()%>"
													class="form-control" placeholder="name@example.com"
													id="refundemail">
											</div>
										</div>
										<div class="col-6">
											<label for="inputState" class="text-start">Number</label>
											<div class="form-group">
												<input class="form-control" type="tel" required
													pattern="[0-7]{1}[0-9]{9}"
													title="Phone number with 0-7 and remaing 9 digit with 0-9"
													placeholder="+94771478777" id="refundtel">
											</div>
										</div>
									</div>

									<input type="hidden" id="refundtotal" value="<%=o.getTotal()%>" />

									<div class="text-center mt-2">
										<button type="button"
											class="btn btn-dark rounded closethemodal"
											data-bs-dismiss="modal">Close</button>
										<button type="submit"
											class="btn bg-primary text-white rounded" id="refundsubmit">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- modal End refund-->

				<p class="text-sm mt-2 mb-0">
					Do you like the product? Leave us a review <a href="#"
						data-bs-toggle="modal" data-bs-target="#rateModal">here</a>.
				</p>
			</div>
			<!-- contact us Modal -->
			<div class="modal fade" id="feedbackModal" style="z-index: 9999999;"
				tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog  modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body pb-0">
							<form id="myForm" action="javascript:0">
								<div class="form-row">
									<h5 class="ml-1 text-black" style="font-weight: 700">
										<%=o.getName()%></h5>
								</div>

								<div class="row">
									<div class="col-6">
										<label for="inputState">Email</label>
										<div class="form-group">
											<input type="email" disabled value="<%=o.getEmail()%>"
												class="form-control" placeholder="name@example.com"
												id="feedbackemail">
										</div>
									</div>
									<div class="col-6">
										<label for="inputState">Number</label>
										<div class="form-group">
											<input class="form-control" type="tel" required
												pattern="[0-7]{1}[0-9]{9}"
												title="Phone number with 0-7 and remaing 9 digit with 0-9"
												placeholder="+94771478777" id="feedbacktel">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label for="example-search-input" class="form-control-label">FirstName</label>
											<input required class="form-control"
												value="<%=authin != null ? authin.getFname() : ""%>"
												type="text" placeholder="john" id="feedbackfname">
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label for="example-search-input" class="form-control-label">LastName</label>
											<input required class="form-control"
												value="<%=authin != null ? authin.getLname() : ""%>"
												type="text" placeholder="smith" id="feedbacklname">
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="exampleFormControlTextarea1">FeedBack</label>
									<textarea class="form-control" id="feedbackcomment" required
										rows="5"></textarea>
								</div>

								<div class="text-center mt-2">
									<button type="button"
										class="btn btn-dark rounded closethemodal"
										data-bs-dismiss="modal">Close</button>
									<button type="submit" class="btn bg-primary text-white rounded"
										id="feedbacksubmit">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- modal contacct us ends End -->

		</div>
		<%
		LocalDateTime myDateObj = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd MMM HH:mm:ss a");
		String formattedDate = myDateObj.format(myFormatObj);
		%>
		<hr class="horizontal dark mt-4 mb-4">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-12">
				<h6 class="mb-3">Track order</h6>
				<div class="timeline timeline-one-side">
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-bell-55 text-primary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">Order
								Placed</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOplaceddate()%></p>
						</div>
					</div>
					<%
					if (!formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-html5 text-secondary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">
								Order Status <span class="badge badge-sm bg-gradient-warning">Pending</span>
							</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOconfirmeddate()%></p>
						</div>
					</div>
					<%
					} else if (formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-html5 text-primary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">
								Order Status <span class="badge badge-sm bg-gradient-success">Approved</span>
							</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOconfirmeddate()%></p>
						</div>
					</div>
					<%
					}
					%>


					<%
					if (!formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-cart text-secondary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">Order
								transmitting to courier</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOtransmiteddate()%></p>
						</div>
					</div>
					<%
					} else if (formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-cart text-primary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">Order
								transmitted to courier</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOtransmiteddate()%></p>
						</div>
					</div>
					<%
					}
					%>


					<%
					if (!formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-check-bold text-secondary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">Order
								delivering</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOdelivereddate()%></p>
						</div>
					</div>
					<%
					} else if (formattedDate.equals(o.getOconfirmeddate())) {
					%>
					<div class="timeline-block mb-3">
						<span class="timeline-step"> <i
							class="ni ni-check-bold text-primary"></i>
						</span>
						<div class="timeline-content">
							<h6 class="text-dark text-sm font-weight-bold mb-0">Order
								delivered</h6>
							<p class="text-secondary font-weight-bold text-xs mt-1 mb-0"><%=o.getOdelivereddate()%></p>
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
			<%
			String cnum = o.getCnum();
			String lastThree = cnum.substring(cnum.length() - 4);
			%>
			<div class="col-lg-5 col-md-6 col-12">
				<h6 class="mb-3">Payment details</h6>
				<div
					class="card card-body border card-plain border-radius-lg d-flex align-items-center flex-row p-3">
					<img class="w-10 me-3 mb-0"
						src="../assets/img/Cards/<%=o.getCname()%>.png" alt="logo">
					<h6 class="mb-0">
						****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;****&nbsp;&nbsp;&nbsp;<%=lastThree%></h6>
					<button type="button"
						class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto"
						data-bs-toggle="tooltip" data-bs-placement="bottom" title=""
						data-bs-original-title="We do not store card details">
						<i class="fas fa-info" aria-hidden="true"></i>
					</button>
				</div>
				<h6 class="mb-3 mt-4">Billing Information</h6>
				<ul class="list-group">
					<li
						class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg">
						<div class="d-flex flex-column">
							<h6 class="mb-3 text-sm">
								Name :<%=authin != null ? authin.getFname() : ""%>
								<%=authin != null ? authin.getLname() : ""%></h6>
							<span class="mb-2 text-xs">Company Name: <span
								class="text-dark font-weight-bold ms-2"><%=o.getCompany()%>
							</span></span> <span class="mb-2 text-xs">Email Address: <span
								class="text-dark ms-2 font-weight-bold"><%=o.getEmail()%></span></span>
							<span class="text-xs">Invoice Number: <span
								class="text-dark ms-2 font-weight-bold"><%=o.getInvoice()%></span></span>
						</div>
					</li>
				</ul>
			</div>
			<div class="col-lg-4 col-12 ms-0">
				<h6 class="mb-1">Order Summary</h6>
				<div class="d-flex justify-content-between">
					<span class="mb-2 text-sm"> Price: </span> <span
						class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getPrice())%>.00
					</span>
				</div>
				<div class="d-flex justify-content-between">
					<span class="mb-2 text-sm"> Quantity: </span> <span
						class="text-dark text-sm font-weight-bold ms-2 text-truncate"><%=nf.format(o.getQuantity())%></span>
				</div>
				<div class="d-flex justify-content-between">
					<span class="mb-2 text-sm"> Delivery: </span> <span
						class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getDfee())%>.00
					</span>
				</div>
				<div class="d-flex justify-content-between">
					<span class="text-sm"> Coupon: </span> <span
						class="text-dark text-sm font-weight-bold ms-2 text-truncate">Rs.<%=nf.format(o.getCpn())%>.00
					</span>
				</div>
				<div class="d-flex justify-content-between mt-2">
					<span class="mb-2 text-lg"> Total: </span> <span
						class="text-dark text-lg ms-2 font-weight-bold">Rs.<%=nf.format(o.getTotal())%>.00
					</span>
				</div>
				<div class="d-flex justify-content-center mt-0">
					<div
						style="background-image:url('../assets/img/Vehicle/<%=o.getVehicle()%>');
											   background-size:contain;
											   background-repeat:no-repeat;
											   width: 250px;
                          					   height: 150px;
                          					   background-position:center;	"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<%
}
}
%>
