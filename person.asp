<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Person Page</title>
</head>
<body  >	

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
	<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
ssql="select * from Users ORDER BY RegisterDate;"
ssql2="select * from PeopleComment ORDER BY comment_id;"
Set oRS = oConn.Execute(sSQL)
Set oRS2 = oConn.Execute(sSQL2)
dim d	
Do While NOT oRS.EOF 
	
	
if (oRS("Username") = Request.QueryString("username") or oRS("RegisterDate") = Request.form("person") ) then
		%>
				<div class="ozel10" style="background-color: black; width: 380px; height: 60px; margin:21px 0px 0px 60px; float: left;clear: left">
						<a href="person.asp?username=<%=oRS("username")%>"><h1 style="color:white; text-align: center; margin: 10px">Before</h1></a>
				</div>
				<div class="ozel10" style="background-color: white; width: 380px; height: 60px; margin-left: 450px;">
						<a href="person2.asp?username=<%=oRS("username")%>"><h1 style="text-align: center; padding: 10px">After</h1></a>
				</div>

<div class="center" style="background-color:#e6e6ff; margin: 100px 20px 0px 10px;width:240px; height: 240px"">
	  		<img src="Photos/Old/<%=oRS("photo")%>.jpg">
	  	</div>
	  	<div style="margin:auto;padding: auto; width: 1000px ">
	  		<table >
	  			<tr>
	  				<th colspan="4"><h2 style="font-family:Serif;font-weight: bold">Personal Information</h2>
	  				</th>
	  			</tr>
	  			<tr>
	  				<td width="100px">
	  					<p class="fonttype" style="font-weight: bold;">Name</p>  					
	  				</td>
	  				<td width="200px">
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("name")%></p>  
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;" >Surname</p> 					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("lastname")%></p>			
	  				</td>
	  			</tr>
				<tr>	
	  			</tr>
	  			<tr>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;">BirthDate</p>  					
	  				</td>
	  				<td width="100px">
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("BirthDate")%></p>
	  				</td>
	  				<td> 
	  					<p class="fonttype" style="font-weight: bold;">School Number</p> 					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("school_nub")%></p>				
	  				</td>
	  			</tr>
	  			<tr>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;">Best Place</p>  					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("place")%></p>				
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;">Best Teacher</p>  					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("Teacher")%></p>			
	  				</td>
  				</tr>
  				<tr>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;">Best Lesson</p>  					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: <%=oRS("lesson")%></p>				
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: bold;">Rate</p>  					
	  				</td>
	  				<td>
	  					<p class="fonttype" style="font-weight: normal">: : <%=oRS("rate")%>				
	  				</td>
  				</tr>
  			</table>
</div>
<table >
<%	
				d=oRS("id")
				n=oRS("Username")
				end if
				oRS.MoveNext

				Loop
				Do While NOT oRS2.EOF 
				
				if oRS2("owner_id")= d then
					%>
					
					<tr>
					<td>
		  	<div class="ozel9">
		  	
		  		<div class="ozel10" >
		  		<p style="font-family:Georgia; font-size:14px;font-weight: bold;text-align: center" ><%=oRS2("name")%> <%=oRS2("lastname")%></p>
		  		</div>
		  			<div class="ozel11">
		  			<p class="fonttype" style="font-weight: normal" "><%=oRS2("comment")%> </p>
		  			</div>
		  		<div class="ozel14" >
		  					<h5 style="color: green"><%=oRS2("like")%></h5>
		  		</div>
		  		<div class="ozel15">
		  			<a href="Mustafaokcen2.html"><img style="align:left" src="../Photos/like.png"></a>
		  		</div>
		  		
		  		<div class="ozel16">
		  			<a href="Mustafaokcen2.html"><img src="../Photos/dislike.png"></a>
		  		</div>
		  		<div class="ozel17">
		  				<h5 style="color: red"><%=oRS2("dislike")%></h5>
		  		</div>
		  		<div class="ozel12" style="width: 120px;background-color:none">
		  			<p style="background-color:none; font-family:Arial; font-size: 10px; padding-top: 4px "><%=oRS2("comment_date")%></p>
		  		</div>
		 	</div>	
		 	</td>
		 	</tr>
		  	<%	
						end if
						oRS2.MoveNext
						Loop
							

						If Session("UserLoggedIn") <>"" Then

						%>	
					<tr>
					<td>
					  	<form action="yorumyap.asp" method="post" >
					  	<input type="hidden" name="username" value="<%=n%>">
					  	
					  	<div class="ozel9">
					  	
					  		<div class="ozel10" style="height: 30px">
					  		<p style="text-align: center;font-weight:bold;font-family:Arial;padding: 5px"><%=Session("name")%> <%=Session("lastname")%></p></div>
					  			<div class="ozel11">
					  			<p style="float:left ;margin: 0px; padding-top:5px;"><textarea class="fonttype" style="resize: none; border:none;font-weight: normal" border="0" name="comment" id="message" rows="3" cols="45"placeholder="Enter your message..."></textarea> </p>
					  			</div>
					  			<input type="hidden" name="date" value="<%=date()%> <%=time%>">
					  			<input type="hidden" name="d" value="<%=d%>">

					  		<div  style="height: 30px ; padding:2px;margin-left: 310px;margin-top: 10px">
					  			<input style="font-family:Calibri;font-weight: bold;" type="submit" class="button1" value="SEND" name="send">
					  		</div>
					  		
					  		
					  	</div>
					  	</form>
				</td>
				</tr>
					<%else%>
				<tr>
				<td>
					<div class="ozel9">
	  	
	  		
			  			<div class="ozel11">
			  			<p style="float:left ;margin: 0px; padding:0px; text-align: center; padding: 5px">You should be <a style="color:red; font-weight: bold" href="Addnew.asp">REGİSTER</a> if you want to enter your comment in this area..</p>

			  			</div>
	  				</div>
	  			</td>
	  			</tr>

					<%end if%>
					<%oConn.Close
					Set oRS = Nothing
					Set oConn = Nothing
							%>

	
			
					
						<tr>
						<td>	&nbsp;
						</td>
						</tr>	
						<tr>
						<td>	&nbsp;
						</td>
						</tr>	
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>									
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
						<tr>
						<td>	&nbsp;
						</td>
						</tr>
											<tr rowspan="3">
														<td>	
														<p style="font-family:Arial; font-weight:bold; text-align:right;">Created © by M.Mustafa Okcen</p>
														</td>
														<td>
														<div class="center" style="border:none; width: 40px;height: 40px; margin-top: -7px; opacity:0.5">
															<img src="Photos/Mm.png">
														</div>
														</td>
														
											</tr>
									
					</table>	
	
 
</body>
</html>