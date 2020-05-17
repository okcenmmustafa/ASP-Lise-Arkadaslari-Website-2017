<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Videos</title>
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
						<a class="ozel_a" href="map.asp?x=3375&y=4445&zoom=1100"><p class="fonttype">MAP</p></a>
					</th>					
			</table>
	</div>
	</form>
	<div class="ozel7" style="height:1000px">
	<table style="margin-left: 50px">
	  <tr>
			<%
			  	Set oConn = Server.CreateObject("ADODB.Connection")
				oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
				ssql="select * from Videos; "
				Set oRS = oConn.Execute(sSQL)

				Do While NOT oRS.EOF 
					
					
		if oRS("videos_id") mod 3 = 1  Then
		%>
		<tr>
		<%end if%>
		<td>
							<div class="center">
									<a href="videospage.asp?order=<%=oRS("order")%>"><img src="Photos/<%=oRS("order")%>.jpg"></a>
							</div>
			</td>
		
		<% if oRS("videos_id") mod 3 = 0 Then
		%>
		</tr>
		<%end if%>

				<%
	oRS.MoveNext
Loop %>	

<%
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>
</tr></table>					
						
						

					
	
	</div>
	<div class="lastdiv" style="top: 1300px">
		<div style="margin-left:300px">
		<p style="font-family:Arial; font-weight:bold; text-align:center; float: left;clear: left">Created © by M.Mustafa Okcen</p>
		</div>
		<div class="center" style="border:none; width: 40px;height: 40px; margin-top: -5px">
			<img src="Photos/Mm.png">
		</div>
	</div>
</body>
</html>