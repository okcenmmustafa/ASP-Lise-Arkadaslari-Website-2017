<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Sign Up</title>
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
						<a class="ozel_a" href="map.asp"><p class="fonttype">MAP</p></a>
					</th>					
			</table>
	</div>
	</form>

	<div class="ozel7" style="height: 1000px">
		
		<div>
			<fieldset>
			<legend>Account Information</legend>

			<form action="AddnewOK.asp" method="post" >
			<p>
					<label for="username1" >Username :</label>
					<input type="text" name="username" id="username1">
					<input type="hidden" name="date" value="<%=date()%> <%=time%>">

				</p>
				<p>
					<label for="password1" >Password :</label>
					<input type="password" name="password" id="password1">
				</p>
				
					 
				
			</fieldset>
		</div>
			<div>
						<fieldset>
							<legend>Personal Information</legend>
							<p>
								<label for="schoolNo">School Number :</label><input type="number" name="school_nub" id="schoolNo">
							</p>
							<p>
								<label for="name" >Name :</label>
								<input type="text" name="name" id="name">
							</p>
							<p>
								<label for="lastname" >Lastname :</label>
								<input type="text" name="lastname" id="lastname">
							</p>
							<p >
								<label for="Nickname" >Nickname :</label>
								<input type="text" name="nickname" id="Nickname">
							</p>	
							<p style="clear: left">
								<label for="gender" >Gender :</label>
								<table>
								<tr>
									<td><input type="radio" name="gender" value="male">Male</td>
									<td><input type="radio" name="gender" value="female">Female</td>
								</tr>
								</table>
							</p>
							<p>
								<label for="job" >Birthdate :</label>
								<input type="date" name="birthdate" id="birthdate">
							</p>	

							<p>
								<label for="job" >Job :</label>
								<input type="text" name="job" id="job">
							</p>
							<p>
								<label for="University" >University :</label>
								<input type="text" name="university" id="University">
							</p>
							<p>
								<label for="Department" >Department :</label>
								<input type="text" name="department" id="Department">
							</p>
							<p>
								<label for="tel" >Tel Number :</label>
								<input type="tel" name="telnumber" id="tel">
							</p>

							<p>
								<label for="email">E-mail :</label>
								<input type="email" name="email" id="email">
							</p>
							<p>
								<label for="website" >Website :</label>
								<input type="website" name="website" id="website">
							</p>
							<p>
								<label for="face" >Facebook ID:</label>
								<input type="text" name="face" id="face">
							</p>
							<p>
								<label for="Twitter" >Twitter  ID:</label>
								<input type="text" name="Twitter" id="Twitter">
							</p>
							<p>
								<label for="linked" >Linked in ID :</label>
								<input type="text" name="linked" id="linked">
							</p>
							<p>
								<label for="adress">Adress :</label>
								<textarea name="adress" id="adress" rows="10" cols="25"placeholder="Enter Your Adress..."></textarea>
							</p>
						</fieldset>
			</div>
			<div>
				<fieldset>
						<legend>Live</legend>
						<p>
						<label for ="city">Where are you living ?</label>
						<select name="live">
			
							    <option value="0">Select...</option>
							    <option value="82">Abroad</option>
							    <option value="1">Adana</option>
							    <option value="2">Adıyaman</option>
							    <option value="3">Afyonkarahisar</option>
							    <option value="4">Ağrı</option>
							    <option value="5">Amasya</option>
							    <option value="6">Ankara</option>
							    <option value="7">Antalya</option>
							    <option value="8">Artvin</option>
							    <option value="9">Aydın</option>
							    <option value="10">Balıkesir</option>
							    <option value="11">Bilecik</option>
							    <option value="12">Bingöl</option>
							    <option value="13">Bitlis</option>
							    <option value="14">Bolu</option>
							    <option value="15">Burdur</option>
							    <option value="16">Bursa</option>
							    <option value="17">Çanakkale</option>
							    <option value="18">Çankırı</option>
							    <option value="19">Çorum</option>
							    <option value="20">Denizli</option>
							    <option value="21">Diyarbakır</option>
							    <option value="22">Edirne</option>
							    <option value="23">Elazığ</option>
							    <option value="24">Erzincan</option>
							    <option value="25">Erzurum</option>
							    <option value="26">Eskişehir</option>
							    <option value="27">Gaziantep</option>
							    <option value="28">Giresun</option>
							    <option value="29">Gümüşhane</option>
							    <option value="30">Hakkâri</option>
							    <option value="31">Hatay</option>
							    <option value="32">Isparta</option>
							    <option value="33">Mersin</option>
							    <option value="34">İstanbul</option>
							    <option value="35">İzmir</option>
							    <option value="36">Kars</option>
							    <option value="37">Kastamonu</option>
							    <option value="38">Kayseri</option>
							    <option value="39">Kırklareli</option>
							    <option value="40">Kırşehir</option>
							    <option value="41">Kocaeli</option>
							    <option value="42">Konya</option>
							    <option value="43">Kütahya</option>
							    <option value="44">Malatya</option>
							    <option value="45">Manisa</option>
							    <option value="46">Kahramanmaraş</option>
							    <option value="47">Mardin</option>
							    <option value="48">Muğla</option>
							    <option value="49">Muş</option>
							    <option value="50">Nevşehir</option>
							    <option value="51">Niğde</option>
							    <option value="52">Ordu</option>
							    <option value="53">Rize</option>
							    <option value="54">Sakarya</option>
							    <option value="55">Samsun</option>
							    <option value="56">Siirt</option>
							    <option value="57">Sinop</option>
							    <option value="58">Sivas</option>
							    <option value="59">Tekirdağ</option>
							    <option value="60">Tokat</option>
							    <option value="61">Trabzon</option>
							    <option value="62">Tunceli</option>
							    <option value="63">Şanlıurfa</option>
							    <option value="64">Uşak</option>
							    <option value="65">Van</option>
							    <option value="66">Yozgat</option>
							    <option value="67">Zonguldak</option>
							    <option value="68">Aksaray</option>
							    <option value="69">Bayburt</option>
							    <option value="70">Karaman</option>
							    <option value="71">Kırıkkale</option>
							    <option value="72">Batman</option>
							    <option value="73">Şırnak</option>
							    <option value="74">Bartın</option>
							    <option value="75">Ardahan</option>
							    <option value="76">Iğdır</option>
							    <option value="77">Yalova</option>
							    <option value="78">Karabük</option>
							    <option value="79">Kilis</option>
							    <option value="80">Osmaniye</option>
							    <option value="81">Düzce</option>
						</select>				

						</p>
						<p>
							<label for ="city">Are you wanna get notice?</label>
							<label for="yes">Yes</label><input type="radio" name="notice" value="yes" id="yes">
							<label for="no">No</label><input type="radio" name="notice" value="no" id="no">
						</p>
				</fieldset>
			</div>
			<div>
				<fieldset>
					<legend>Hobbies</legend>
					<p>
						<label for="basket">Playing Basketball</label><input type="checkbox" name="basketball" value="Checked" id="basket">
					</p>
					<p>
						<label for="picture">Drawing a Picture</label><input type="checkbox" name="draw" value="Checked" id="picture">
					</p>
						<label for="guitar">Playing guitar</label><input type="checkbox" name="guitar" value="Checked" id="guitar"> 
				</fieldset>
			</div>
			<div style="position: center">
					<p>
					<input style="left:700px" type="submit" value ="Send"/>
					<input type="reset" value="Reset"/>
					</p>
			</div>
		
	</div>
	</form>
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