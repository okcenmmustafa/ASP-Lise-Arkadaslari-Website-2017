<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Mainpage</title>
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
				<table >
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
	
				<%
				Set oConn = Server.CreateObject("ADODB.Connection")
				oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim2.mdb"))
				ssql="select * from Votes ORDER BY Name;"
				Set oRS = oConn.Execute(sSQL)

				%>
	<form action="veri.asp" method="POST">
	<div class="ozel4">
				<div class="ozel10" style="width:100px; margin: 90px 0px 0px 50px">
					<h3 style="text-align: center">Votes</h3>
				</div>
				<div style="margin-left: 10px" >
				<h3>Select Your Best Teacher</h3> 
				<table style="margin-left: 15px">
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="teacher" value="1" id="MEN">
						<input type="text" name="deger" value="
						<%Do While NOT oRS.EOF 

						if oRS("kimlik") = 1 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>
						" id="MEN">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="MEN" >Mehmet Emre Namlı</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="teacher" value="2" id="GRA">
						<input type="text" name="deger" value="
						<%Do While NOT oRS.EOF 
						if oRS("name") = "Gulsah Reyhan Alpaslan" then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>
						" id="GRA">
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="GRA">Gülşah Reyhan Alpaslan</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="teacher" value="3" id="ADC">
						<input type="text" name="deger" value="
						
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 3 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" id="ADC">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="ADC">Ali Demir Çeçen</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="teacher" value="4" id="AG">
						<input type="text" name="deger" value="
						<%Do While NOT oRS.EOF 

						if oRS("kimlik") = 4 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" id="AG">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="AG">Ali Gündüz</label>

						</td>
					</tr>
				</table>
				<h3>Select Your Best Place</h3> 
				<table style="margin-left: 15px" >
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="Place" id="class">
						<input type="text" name="Deger2" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 5 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>
						" id="class">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="class" >Class</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Garden">
						<input type="text" name="Deger2" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 6 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="Garden">Garden</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="SH">
						<input type="text" name="Deger2" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 7 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="SH">Sports hall</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Canteen">
						<input type="text" name="Deger2" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 8 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Canteen">Canteen</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Corridors">
						<input type="text" name="Deger2" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 9 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Corridors">Corridors</label>
						</td>
					</tr>
				</table>
				<h3>Select Your Best Favorite Lesson</h3> 
				<table style="margin-left: 15px" >
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="Lesson" id="Mathematics">
						<input type="text" name="Deger3" value="
						
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 10 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Mathematics" >Mathematics</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="History">
						<input type="text" name="Deger3" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 11 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="History">History</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Literature">
						<input type="text" name="Deger3" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 12 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Literature">Literature</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="PEL">
						<input type="text" name="Deger3" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") =13 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="PEL">Physical Education Lesson</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Chemistry">
						<input type="text" name="Deger3" value="
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 14 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Chemistry">Chemistry</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Physics">
						<input type="text" name="Deger3" value="
						
						<%Do While NOT oRS.EOF 
						if oRS("kimlik") = 15 then
						%><%=oRS("Rate")%>
						<%end if
						oRS.MoveNext
						loop%>

						" >
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Physics">Physics</label>
						</td>
					</tr>
					<tr >
						<td colspan="2" style="padding:20px 0px 0px 0px">
							
						<a href="index.htm"><input style="width: 150px" type="submit" name="send" value="Send"></a>
					
						</td>
					</tr>
					
				</table>
				</div>

	</div>
	</form>
		
			<div class="ozel4">
				<div class="ozel10" style="width:100px; margin: 90px 0px 0px 50px">
					<h3 style="text-align: center">Votes</h3>
				</div>
				<div style="margin-left: 10px" >
				<h3>Select Your Best Teacher</h3> 
				<table style="margin-left: 15px">
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="Teacher" value="Mehmet Emre Namli" id="MEN">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="MEN" >Mehmet Emre Namlı</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Teacher" value="Gulsah Reyhan Alpaslan" id="GRA">
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="GRA">Gülşah Reyhan Alpaslan</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Teacher" value="Ali Demir Cecen" id="ADC">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="ADC">Ali Demir Çeçen</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Teacher" value="Ali Gunduz" id="AG">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="AG">Ali Gündüz</label>
						</td>
					</tr>
				</table>
				<h3>Select Your Best Place</h3> 
				<table style="margin-left: 15px" >
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="Place" id="class">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="class" >Class</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Garden">
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="Garden">Garden</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="SH">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="SH">Sports hall</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Canteen">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Canteen">Canteen</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Place" id="Corridors">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Corridors">Corridors</label>
						</td>
					</tr>
				</table>
				<h3>Select Your Best Favorite Lesson</h3> 
				<table style="margin-left: 15px" >
						
								
					<tr style="margin-left: 50px">

						<td>
						<input type="radio" name="Lesson" id="Mathematics">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Mathematics" >Mathematics</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="History">
						</td>
						<td>
						<label style="width: 180px; text-align:left; font-size: 14px " for="History">History</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Literature">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Literature">Literature</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="PEL">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="PEL">Physical Education Lesson</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Chemistry">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Chemistry">Chemistry</label>
						</td>
					</tr>
					<tr>
						<td>
						<input type="radio" name="Lesson" id="Physics">
						</td>
						<td>
						<label style="width: 150px; text-align:left; font-size: 14px " for="Physics">Physics</label>
						</td>
					</tr>
					<tr >
						<td colspan="2" style="padding:20px 0px 0px 0px">
							
						<a href="index.htm"><input style="width: 150px" type="submit" name="send" value="Send"></a>
					
						</td>
					</tr>
					
				</table>
				</div>

	</div>
	<%oConn.Close
Set oRS = Nothing
Set oConn = Nothing%>
	<div class="ozel2" >
			<div class="ozel5" style="margin-top: 50px;opacity:1;">
				<img src="Photos/sinif.jpg">
			</div>
			<div class="ozel6" style="margin-top: 50px" >
		<p style="margin:25px; font-family: Lucida Handwriting; float: left;">Tam 4 yıl oldu o tozlu sıralardan Ayrılalı.Neşesiyle Gürültüsüyle Üzüntüsüyle Espirisiyle tam 4 yıl.Çoğunuzla görüşmeye devam etsem de o sıraların özlemi farklı oluyormuş.4 yıl dirsek çürüttüğümüz o sıralarda başka dirsekler çürüyor şimdi. Kadriye Moroğlu Anadolu Lisesi Başka 12-C ler mezun ediyor ve edicek . Ama hiçbiri 2014 12-C si gibi olamacak. Hepinizi Seviyorum.</p>
				<div class="center" style="border:none;width: 100px; height: 100px; margin-left: 400px ;margin-top:-50px"> <img src="Photos/sign.png"></div>
			</div>

		
	</div>
	<div class="lastdiv" style="top: 200px">
		<div style="margin-left:300px">
		<p style="font-family:Arial; font-weight:bold; text-align:center; float: left;clear: left">Designed by © by M.Mustafa Okcen</p>
		</div>
		<div class="center" style="border:none; width: 40px;height: 40px; margin-top: 7px">
			<img src="Photos/Mm.png">
		</div>
	</div>

</div>

</body>

</html>