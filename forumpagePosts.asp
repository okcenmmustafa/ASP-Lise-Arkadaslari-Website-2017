<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Forum Page</title>
</head>
<body>
<div class="firstdiv">
	<div class="ozel">
			<a href="index.asp"><img src="Photos/Kadriye Moroglu.png"></a>
	</div>

<div style="width: 440px;height: 40px ; position: relative; margin: 220px 0px 0px 440px; position:absolute;"  >

<%
If Session("UserLoggedIn") <>"" Then
%><div style="margin:20px 0px 0px 220px; width:250px">
<%Response.Write "Welcome <b>" & Session("UserLoggedIn") & "</b>" %>
	</div>
	
	<div style="margin:-23px 0px 0px 420px; width:250px">
	<form action="logout.asp" method="POST"><input type="submit" name="logout" value="Log out"></form>
	</div>


<%else%>




<form  action="login.asp" method="POST">
				<table style="position: relative;">
				<tr>
						<td>				
							<label style="width: 80px"  for="username" ><p>Username :</p></label>
						</td>
						<td>
							<input  style="margin:0px" type="text" name="username" size="14" id="username">
						</td>
						<td>
							<label  style="width: 80px" for="password" ><p>Password :</p></label>
						</td>
						<td>
							<input style="margin:0px" type="password" name="userpwd" size="14" id="password">
						</td>
						<td>
					<input  style="margin:2px" type="submit" name="login" value="Log in">
						</td>
						<td>
					<a href="Addnew.asp"><input style="margin:2px" type="button" value="Signup" name="Signup"></a>
					</td>
				</tr>
				</table>
<%

end if

%> 
</table>
	</div>
<div class="ozel3">
			<table style="margin:auto;object-position: center; position: relative;">
					<th>
						<a class="ozel_a" href="index.asp"><p class="fonttype">MAİNPAGE</p></a>
					</th>
					<th>
						<a class="ozel_a" href="People.asp"><p class="fonttype">PEOPLE</p></a>
					</th>
					<th>
						<a class="ozel_a" href="Forum.asp"><p class="fonttype">FORUM</p></a>	
					</th>
					<th>
						<a  class="ozel_a" href="photos.asp"><p class="fonttype">PHOTOS</p></a>
					</th>
					<th>
						<a class="ozel_a" href="videos.asp"><p class="fonttype">VIDEOS</p></a>
					</th>
					<th>
						<a class="ozel_a" href="who.asp"><p class="fonttype">WHERE ARE THEY NOW ?</p></a>
					</th>
					<th>
						<a class="ozel_a" href="map.asp"><p class="fonttype">MAP</p></a>
					</th>					
			</table>
	</div>
	
</form>
	<div class="ozel7">
				
					<%
				Set oConn = Server.CreateObject("ADODB.Connection")
				oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
				ssql="select * from Form ORDER BY date;"
				ssql2="select * from FormComment ORDER BY comment_id;"
				dim d
				Set oRS = oConn.Execute(sSQL)
				Set oRS2 = oConn.Execute(sSQL2)
				Do While NOT oRS.EOF 
					
					
				if oRS("date") = Request.QueryString("topic") then
				%>
			<table class="table2" cellspacing="0" style="margin-left: 100px">
				<thead>
					<tr class="catbg">
						<th colspan="3" class="lefttext"><h1 align="right">TOPIC</h1></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2"">
							<div class="ozel9" style="padding: 0px; margin: 0px;">
		  	
		  							<div class="ozel10" style="background-color:rgba(98, 78, 121, 0.8);color:white;text-align:left;width: 400px;text-align: center">
		  									<p><%=oRS("Topic")%></p>
		  							</div>
		  							<div class="ozel11" style="text-align:center;height:100px ;padding:10px;  width: 600px; background-color: grey">
		  									<p style="margin: 0px; padding:0px; color: white;"><%=oRS("Content")%></p>
		  							</div>
		  							<div class="ozel12" style="width:170px;margin-left: 460px">
		  									<p style="font-family:Arial; font-size: 10px;text-align: center;padding: 3px "><%=oRS("date")%></p>
		  							</div>
		  							<div class="ozel13" style="background-color:rgba(98, 78, 121, 0.6);color:white;">
		  									<p style="margin: 0px;"><%=oRS("name")%> <%=oRS("lastname")%></p>
		  							</div>
		  		
		  					</div>
		
						
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</tbody>
			</table>
					
			<table class="table2" cellspacing="0">
		
				<thead><hr>
					<tr class="catbg">
						<th colspan="3" class="lefttext"><h2 align="right">Comments</h1></th>
					</tr>
				</thead>

			<tbody>

			
				<tr>
					<td colspan="2"">
						<%	
	d=oRS("id")
	n=oRS("Username")
	b=oRS("date")
	end if
	oRS.MoveNext

	Loop
	Do While NOT oRS2.EOF 
	
	if oRS2("owner_id")= d then
%>
						<div class="ozel9" style="margin-top:24px">
	  	
						  		<div class="ozel10" style="margin-left: 200px;" >
					  						<p style="font-family:Georgia; font-size:14px;font-weight: bold; text-align:center;" ><%=oRS2("name")%> <%=oRS2("lastname")%></p>
					  			</div>
						  			<div class="ozel11">
						  					<p style="margin: 0px; padding:0px;"><%=oRS2("comment")%> </p>
						  			</div>
						  		<div class="ozel14" >
						  					<h5 style="color: green"><%=oRS2("like")%></h5>
						  		</div>
						  		<div class="ozel15">
						  					<a href="forumpagePosts.html"><img style="align:left" src="Photos/like.png"></a>
						  		</div>
						  		
						  		<div class="ozel16">
						  					<a href="forumpagePosts.html"><img src="Photos/dislike.png"></a>
						  		</div>
						  		<div class="ozel17">
						  					<h5 style="color: red"><%=oRS2("dislike")%></h5>
						  		</div>
						  		<div class="ozel12">
						  					<p style="font-family:Arial; font-size: 10px; padding: 4px "><%=oRS2("date")%></p>
						  		</div>
	  							  					
	  					</div>
					</td>
				</tr>
				</tbody>
				</table>
					  			<%	
							end if
							oRS2.MoveNext
							Loop
	

								%>	
		
	  	
	  	  			<%	
	
If Session("UserLoggedIn") <>"" Then

%>	
		<form action="formsend.asp" method="post" >
			<input type="hidden" name="username" value="<%=n%>">
	  	<div class="ozel9">
	  	
	  		<div class="ozel10" style="height: 30px">
	  		<p style="text-align: center;font-weight:bold;font-family:Arial;padding: 5px"><%=Session("name")%> <%=Session("lastname")%></p></div>
	  		
	  			<div class="ozel11">

	  			<p style="float:left ;margin: 0px; padding:0px;"><textarea id="confirmationText" class="text"  name="comment" class="fonttype" style="resize: none; border:none;font-weight: normal " border="0" name="message" id="message" rows="3" cols="47"placeholder="Enter your message..."></textarea>
	  			</p>
	  			<input type="hidden" name="date" value="<%=date()%> <%=time%>">
	  			<input type="hidden" name="d" value="<%=d%>">
	  			<input type="hidden" name="b" value="<%=b%>">	

	  			</div>
	  		<div class="ozel12" style="height: 30px ; padding:2px; ">
	  			<input style="font-family:Calibri;font-weight: bold;" type="submit" class="button1" value="SEND" name="send">
	  		</div>
	  		
	  	</div></form>
	<%else%>

<div class="ozel9">
	  	
	  		
	  			<div class="ozel11" style="position: relative;">
	  			<p style="float:left ;margin: 0px; padding:0px; text-align: center; padding: 5px">You should be <a style="color:red; font-weight: bold" href="Addnew.asp">REGİSTER</a> if you want to enter your comment in this area..</p>
	  			</div>
	  			<div class="ozel12" style="height: 30px ; padding:2px; ">
	  			</div>
	  			
	  		
	  	</div>
	
	
<%end if%>
<%oConn.Close
Set oRS = Nothing
Set oConn = Nothing
		%>
		<table  style="margin-left: 340px">
	 <tr>
						
									<tr>
									<td>	&nbsp;
										<tr>
										<td>	&nbsp;
											<tr>
											<td>	&nbsp;
													<tr>
														<td>	&nbsp;	
														
														</td>
														<td>												
														</td>
														
													</tr>
											</td>
											</tr>
										</td>
										</tr>				
									</td>
									</tr>
								
						<tr>
						<td>	&nbsp;
							<tr>
							<td>	&nbsp;
								<tr>
								<td>	&nbsp;
									<tr>
									<td>	&nbsp;
										<tr>
										<td>	&nbsp;
											<tr>
											<td>	&nbsp;
													<tr>
													<td>
														&nbsp;
													</td>
													<td>
														&nbsp;
													</td>
													<td>
														&nbsp;
													</td>

														<td colspan="2">	
														<p style="font-family:Arial; font-weight:bold; text-align:right; ">Created © by M.Mustafa Okcen</p>
														</td>
														<td>
														<div class="center" style="border:none; width: 40px;height: 40px; margin-top: -5px; opacity:0.5">
															<img src="Photos/Mm.png">
														</div>
														</td>
														
													</tr>
											</td>
											</tr>
										</td>
										</tr>				
									</td>
									</tr>
								</td>
								</tr>
							</td>
							</tr>
						</td>
						</tr>
					</table>	

	</div>

	

</body>
</html>