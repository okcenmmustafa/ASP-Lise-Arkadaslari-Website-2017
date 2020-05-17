<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Where Are They Now ?</title>
</head>
<body>
	<div style="margin:auto">
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
	  	<div class="ozel8" style="margin-left: 140px;">
	  			<div style="width:600px; height: 200px;margin:0; padding:10px;">
	  				<img src="Photos/wherearethey.png">
	  			</div>
	  			<div style="margin-top:-50px">
	  					<p class="fonttype" style="text-align: center;font-size: 24px">Bu Fotografta Bölgesel Link Mevcuttur.</p></div>
	  	</div>
		<div style="border: 3px solid #CCC;margin: auto;padding:20px; border-radius: 15px; " >
				<p><img style="	 -webkit-border-radius:15px  15px 15px 15px; -moz-border-radius:15px 15px 15px 15px; border-radius:15px 15px 15px 15px;" src="Photos/sinif.jpg" width="907" height="347" usemap="#Map" border="0" />
			  <map name="Map" id="Map">
			<area shape="rect" coords="208,42,249,83" href="person2.asp?username=mustafaokcen" target="_self" />
			    <area shape="rect" coords="198,-2,242,32" href="person2.asp?username=2" target="_self"  />
			    <area shape="rect" coords="268,-19,326,42" href="person2.asp?username=3" target="_self" />
			    <area shape="rect" coords="349,-1,394,31" href="person2.asp?username=4" target="_self" />
			    <area shape="rect" coords="443,-6,489,45" href="person2.asp?username=5" target="_self" />
			    <area shape="rect" coords="526,3,563,45" href="person2.asp?username=6" target="_self" /> 
			    <area shape="rect" coords="585,-2,643,43" href="person2.asp?username=7" target="_self" /> 
			    <area shape="rect" coords="660,0,729,35" href="person2.asp?username=8" target="_self" />
			    <area shape="rect" coords="272,46,327,82" href="person2.asp?username=9" target="_self" />
			    <area shape="rect" coords="369,31,412,74" href="person2.asp?username=10" target="_self" />
			    <area shape="rect" coords="427,49,479,92" href="person2.asp?username=11" target="_self"  />
			    <area shape="rect" coords="508,65,553,102" href="person2.asp?username=12" target="_self"  />
			    <area shape="rect" coords="589,63,633,96" href="person2.asp?username=13" target="_self" />
			    <area shape="rect" coords="686,43,743,90" href="person2.asp?username=14" target="_self" />
			    <area shape="rect" coords="277,87,319,131" href="person2.asp?username=15" target="_self">
		        <area shape="rect" coords="336,104,390,145" href="person2.asp?username=16" target="_self">
		        <area shape="rect" coords="424,99,472,145" href="person2.asp?username=17" target="_self">
		        <area shape="rect" coords="489,103,534,145" href="person2.asp?username=18" target="_self">
		        <area shape="rect" coords="587,102,632,141" href="person2.asp?username=19" target="_self">
                <area shape="rect" coords="667,117,713,152" href="person2.asp?username=20" target="_self">
                <area shape="rect" coords="257,176,321,227" href="person2.asp?username=21" target="_self">
                <area shape="rect" coords="351,165,411,211" href="person2.asp?username=22" target="_self">
			    <area shape="rect" coords="439,164,481,219" href="person2.asp?username=23" target="_self">
			    <area shape="rect" coords="536,148,577,194" href="person2.asp?username=24" target="_self">
			    <area shape="rect" coords="619,155,680,208" href="person2.asp?username=25" target="_self">
			    <area shape="rect" coords="718,141,773,193" href="person2.asp?username=26" target="_self">
              </map>
	  		</p>
	 	 </div>
	 	 <div style="margin-top:10px; margin-left: 0px">
	 	 <table style="margin-left: 70px">
	  <tr>
				<%
	  	Set oConn = Server.CreateObject("ADODB.Connection")
		oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
		ssql="select * from Users; "
		Set oRS = oConn.Execute(sSQL)
		dim s
		s=0
		Do While NOT oRS.EOF 
			s=s+1
		%>
		
		
		<% if s mod 7 = 1  Then
		%>
		<tr>
		<%end if%>
		
		<td>
				<form action="person2.asp" method="POST">
				<div class="center" style="width:100px; height: 100px; float: none;"><input type="submit"  value="" style="border=none; position: absolute;width: 100px;height: 100px;margin-left: 0px;opacity: 0.000001"><img src="Photos/new/<%=oRS("photo_new")%>.jpg">
						<input type="hidden"  name="person" value="<%=oRS("RegisterDate")%>">

				</div>
				</form>
		</td>
		
		<% if s mod 7 = 0 Then
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
															&nbsp;
														</td>
													
														<td colspan="3">
														<div >	
														<p style="font-family:Arial; font-weight:bold; text-align:right;">Design by © by M.Mustafa Okcen</p>
														</td>
														<td>
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