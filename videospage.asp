<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Videos Page</title>
</head>
<body >
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
					ssql="select * from Videos ORDER BY videos_id;"
					ssql2="select * from VideoComment ORDER BY comment_id;"
					Set oRS = oConn.Execute(sSQL)
					Set oRS2 = oConn.Execute(sSQL2)
					dim d	
					Do While NOT oRS.EOF 
						
						
					if oRS("order") = Request.QueryString("order")  then
					%>		
		<div class="photopage" style="background-color:grey">
				<video style="border-radius: 65px" controls width="580" height="360">
					<source src="<%=oRS("order")%>.mp4" type="video/mp4">
							</video>
		</div>

	<table  style="margin-left: 300px">
		<%	
	d=oRS("order")
	end if
	oRS.MoveNext

	Loop
	Do While NOT oRS2.EOF 
	
	if oRS2("owner_id")= d then
%><tr>
<td colspan="3">
		<div >
	  	
	  		<div class="ozel10" >
	  		<p style="font-family:Tahoma; font-size:14px;font-weight: bold; text-align: center" ><%=oRS2("name")%> <%=oRS2("lastname")%></p>
	  		</div>
	  			<div class="ozel11">
	  			<p class="fonttype" style="margin: 0px; padding:0px; font-weight: normal"><%=oRS2("comment")%> </p>
	  			</div>
	  		<div class="ozel14" >
	  					<h5 style="color: green"><%=oRS2("like")%></h5></div>
	  		<div class="ozel15">
	  			<a href="MustafaOkcen.html"><img style="align:left" src="../Photos/like.png"></a>
	  		</div>
	  		
	  		<div class="ozel16">
	  			<a href="MustafaOkcen.html"><img src="../Photos/dislike.png"></a>
	  		</div>
	  		<div class="ozel17">
	  				<h5 style="color: red"><%=oRS2("dislike")%></h5>
	  		</div>
	  		<div class="ozel12">
	  			<p style="font-family:Arial; font-size: 11px;width:140px;padding: 4px ;font-weight:bold"><%=oRS2("comment_date")%></p>
	  		</div>
	

	  	</div>
	 </td>  
	</tr>	
	 	<%	
end if
oRS2.MoveNext
Loop
	

If Session("UserLoggedIn") <>"" Then

%>	<tr>
		<td colspan="3">
		<form action="videocomment.asp" method="POST">
	  		<div>
	  		<input type="hidden" name="date" value="<%=date()%> <%=time%>">
	  			<input type="hidden" name="d" value="<%=d%>">
	  	
	  		<div class="ozel10" style="height: 30px">
	  		<p style="font-weight: bold; text-align: center; padding: 5px"><%=Session("name")%> <%=Session("lastname")%> </p></div>
	  			<div class="ozel11">
	  			<p style="float:left ;margin: 0px; padding:0px;"><textarea style="resize: none; border:none; " border="0" name="comment" id="message" rows="3" cols="48"placeholder="Enter your message..."></textarea> </p>
	  			</div>
	  		<div class="ozel12" style="height: 30px ; padding:2px; ">
	  			<input type="submit" class="button1" value="SEND" name="send">
	  		</div>
	  		</form>
	  	</div>
	  </td>
	  </tr>
<%else%>
<div class="ozel9">
		<tr>
	  		<td colspan="3">	  		
	  			<div class="ozel11">
	  			<p style="float:left ;margin: 0px; padding:0px; text-align: center; padding: 5px">You should be <a style="color:red; font-weight: bold" href="Addnew.asp">REGİSTER</a> if you want to enter your comment in this area..</p>

	  			</div>
	  		
	  			</td>
	  		</tr>
	  		
	  	</div>
	</div>
<%end if%>
<%oConn.Close
Set oRS = Nothing
Set oConn = Nothing
		%>
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
														<div class="lastdiv" style="margin-bottom:10px">	
														<p style="font-family:Arial; font-weight:bold; text-align:right;">Design by © by M.Mustafa Okcen</p>
														</td>
														<td colspan="2">
														<div class="center" style="border:none; width: 40px;height: 40px; margin-top: -5px;opacity: 0.5">
															<img src="Photos/Mm.png">
														</div>
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