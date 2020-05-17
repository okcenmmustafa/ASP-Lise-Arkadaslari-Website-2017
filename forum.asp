<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<style type="text/css"> 
	::placeholder
	{ color:white;
		}
	</style>
	<title>Forum</title>
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
						<a class="ozel_a" href="map.asp?x=3375&y=4445&zoom=1100"><p class="fonttype">MAP</p></a>
					</th>					
			</table>
	</div>
	
</form>
	
	<div class="ozel7">
		<table class="table1" style="margin-left: 100px">
				<tbody class="header">
					<tr>
						<td colspan="4">
							<div >
								<h3 align="right">
									Messages From People
								</h3>
							</div>
						</td>
					</tr>
				</tbody>

						<%If Session("UserLoggedIn") <>"" Then

						%>	
				<form action="Topicac.asp" method="POST">
				<tbody class="content">
					<tr>
							<td colspan="2"">
								<div class="ozel9" style="padding-top:55px; margin: 0px;">
				  	
			  						<div class="ozel10" style="background-color:rgba(98, 78, 121);text-align:left;width: 400px">
			  							<p class="font1" style="font-size:15px"><input style="background-color:rgba(98, 78, 121, 0.8); border:none; width: 350px;" type="text" name="Topic" placeholder="Write Your Topic..."></p>
			  						</div>
			  						<div class="ozel11" style="text-align:center;  width: 600px; background-color:grey">
			  							<p style="margin: 0px; padding:0px;"><textarea style="resize: none; border:none; background-color:grey; color:white;" border="0" name="content" id="message" rows="3" cols="78" placeholder="Enter your idea..."></textarea></p>
			  						</div>
			  						<input type="hidden" name="date" value="<%=date()%> <%=time%>">
			  						<input type="hidden" name="name" value="<%=Session("name")%>">
			  						<input type="hidden" name="lastname" value="<%=Session("lastname")%>">
	  								
			  						<div class="ozel12" style="height: 30px ; margin-left:500px; padding:2px; ">
	  									<input type="submit" class="button1" style="" value="SEND" name="send">
	  								</div>
			  		</form>
			  					</div>
			
						
							</td>
					</tr>
					<%else%>
					<tr>
				<td>
					<div class="ozel9" style="padding-top:55px; margin: 0px;">
	  	
	  		
			  			<div class="ozel11" style="margin: 0px; text-align:center;padding: 5px; width: 600px; background-color:grey">
			  			<p style="float:left ;margin: 0px; padding:5px; text-align: center; padding: 5px">You should be <a style="color:red; font-weight: bold" href="Addnew.asp">REGİSTER</a> if you want to open a topic in this area..</p>

			  			</div>
	  		
	  			
	  		
	  				</div>
	  			</td>
	  			</tr>
	  			<%end if%>
						<%
								Set	oConn = Server.CreateObject("ADODB.Connection")
								oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
								ssql="select * from Form; "
								dim d
								Set oRS = oConn.Execute(sSQL)

								Do While NOT oRS.EOF 
									d=oRS("date")
						%>
					<tr>
							<td colspan="2"">
								<div class="ozel9" style="padding-top:55px; margin:80px 0px 0px 0px">
				  	
			  						<div class="ozel10" style="background-color:rgba(98, 78, 121, 0.8);color:white;text-align:left;width: 400px">
			  							<p class="font1" style="font-family:Arial; font-size: 13px; padding: 3px;text-align: center;font-family:Calibri;font-weight:bold "><a href="forumpagePosts.asp?topic=<%=oRS("date")%>"><%=oRS("Topic")%> </a></p>
			  						</div>
			  						<div class="ozel10" style="background-color:rgba(98, 78, 121, 0.6);width:100px; margin:0px 0px 0px 500px">
			  							<p class="font1" style="font-family:Arial; font-size: 10px; padding: 4px; text-align: center;color:white;"><a href="forumpagePosts.asp"><%=oRS("comment_co")%> </a></p>
			  						</div>
			  						<div class="ozel10" style="background-color:rgba(98, 78, 121, 0.6);margin:0px 0px 0px 200px">
			  							<p class="font1" style="font-family:Arial; font-size: 10px; padding: 4px ;text-align: center;color:white;"><a href=""><%=oRS("name")%> <%=oRS("lastname")%> </a></p>
			  						</div>

			  						<div class="ozel11" style="text-align:center;height:100px;  width: 600px; background-color:grey;">
			  							<p style="margin: 0px; padding:0px; color:white;text-align: center;"><%=oRS("Content")%> </p>
			  						</div>
			  						<div class="ozel12" style="margin-left: 460px;width:170px">
			  							<p style="font-family:Arial; font-size: 10px; padding: 4px;text-align: center; "><%=oRS("date")%> </p>
			  						</div>
			  						<div class="ozel13" style="background-color:rgba(98, 78, 121, 0.6);color:white;margin-left:200px; width: 280px">
			  							<p class="font1" style="font-family:Arial; font-size: 10px; padding: 4px;text-align: center; ">Last Post by <%=oRS("LastPost")%> at <%=oRS("date")%> </p>
			  						</div>
			  		
			  					</div>
			
						
							</td>
					</tr>
					<%	
						oRS.MoveNext
					Loop


					oConn.Close
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
														<td colspan="2">	&nbsp;	
														<p style="font-family:Arial; font-weight:bold; text-align:right;">Created © by M.Mustafa Okcen</p>
														</td>
														<td>
														<div class="center" style="border:none; width: 40px;height: 40px; margin-top: 20px; opacity:0.5">
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
	
</body>
</html>