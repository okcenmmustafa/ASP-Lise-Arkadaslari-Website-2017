<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="main.css">
		<title>Map</title>
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

			</form><div class="ozel7">
			<div class="ozel7" style="margin:-339px 0px 0px 66px;opacity:0.9; width: 320px; height: 320px;">


	<table  style="position: absolute;background-color:rgba(0,0,0,0.4);border-radius:15px">
	<tr>
				<td>
					&nbsp;
				</td>
				<td> &nbsp;
				</td>
					<td>
				<a href="map.asp?
				x=
				<%=request("x")%>

				&y=
				<%if request("zoom")=150 and request("y")+190>670 then%>
				<%=670%>
				<%else if request("zoom")=300 and request("y")+190>1350  then%>
				<%=1350%>
				<%else if request("zoom")=500 and request("y")+190>2250  then%>
				<%=2250%>	
				<%else if request("zoom")=900 and request("y")+190>4000 then%>
				<%=4000%>
				<%else if request("zoom")=1100 and request("y")+190>4900 then%>
				<%=4900%>
				<%else%>
				<%=request("y")+190%>
				<%end if%><%end if%><%end if%><%end if%><%end if%>
				&zoom=
				<%=request("zoom")%>"><input class="button1" style="width:40px" type="submit" name="secim" value="^">

				</a>
			</td>
			<td>
			&nbsp;
			</td>
			<td> &nbsp;
			</td>
	</tr>
	<tr>
			<td>
				<a href="map.asp?
				x=
				<%if request("zoom")=150 and request("x")+190>675 then%>
				<%=675%>
				<%else if request("zoom")=300 and request("x")+190>1342  then%>
				<%=1342%>
				<%else if request("zoom")=500 and request("x")+190>2240  then%>
				<%=2240%>				
				<%else if request("zoom")=900 and request("x")+190>4050 then%>
				<%=4050%>
				<%else if request("zoom")=1100 and request("x")+190>4050 then%>
				<%=4050%>
				<%else%>
				<%=request("x")+190%>
				<%end if%><%end if%><%end if%><%end if%><%end if%>
				&y=
				<%=request("y")%>
				&zoom=
				<%=request("zoom")%>"><input class="button1" style="width:40px" type="submit" name="secim" value="<"></a>
			</td>
			<td>&nbsp;
			</td>
			<td>&nbsp;
			</td>
			<td>
				<a href="map.asp?
				x=
				<%if request("zoom")=150 and request("x")-190<460 then%>
				<%=460%>
				<%else if request("zoom")=300 and request("x")-190<470  then%>
				<%=470%>	
				<%else if request("zoom")=500 and request("x")-190>480  then%>
				<%=480%>	
				<%else if request("zoom")=900 and request("x")-190<500 then%>
				<%=500%>
				<%else if request("zoom")=1100 and request("x")-190<500 then%>
				<%=500%>
				<%else%>
				<%=request("x")-190%>
				<%end if%><%end if%><%end if%><%end if%><%end if%>
				&y=
				<%=request("y")%>
				&zoom=
				<%=request("zoom")%>"><input class="button1" style="width:40px" type="submit" name="secim" value=">"></a>
			</td>
			<td>
			&nbsp;
			</td>
			<td> &nbsp;
			</td>
	</tr>
	<tr>
			<td>
			&nbsp;
			</td>
			<td> &nbsp;
			</td>
			<td>
				<a href="map.asp?x=<%=request("x")%>
					&y=
				<%if request("zoom")=150 and request("y")-190<460 then%>
				<%=460%>
				<%else if request("zoom")=300 and request("y")-190<470  then%>
				<%=470%>
				<%else if request("zoom")=500 and request("y")-190<495  then%>
				<%=495%>
				<%else if request("zoom")=900 and request("y")-190<500 then%>
				<%=500%>
				<%else if request("zoom")=1100 and request("y")-190<500 then%>
				<%=500%>
				<%else%>
				<%=request("y")-190%>
				<%end if%><%end if%><%end if%><%end if%><%end if%>
				&zoom=
				<%=request("zoom")%>"><input class="button1" style="width:40px" type="submit" name="secim" value="v"></a>
				</td>
	</tr>
	<tr>
					<td>
					&nbsp;
					</td>
					<td colspan="3" >
					<a href="map.asp?
					x=
					<%if	request("x")<0 or request("zoom")=0 then%><%=0%>
					<%else if request("zoom")=150  then%>
					<%if (request("x")+432)<500 then%><%=500%>
					<%else if (request("x")+432)>1342 then%><%=1342%>
					<%else%><%=request("x")+432%>
					<%end if%><%end if%>


					<%else if request("zoom")=300  then%>	
					<%if (request("x")+574)<500 then%><%=500%>
					<%else if (request("x")+574)>2240 then%><%=2240%>
					<%else%><%=request("x")+574%>
					<%end if%><%end if%>

					

					<%else if request("zoom")=500  then%>
					<%if (request("x")+1154)<500 then%><%=500%>
					<%else if (request("x")+1154)>4050 then%><%=4050%>
					<%else%><%=request("x")+1154%>
					<%end if%><%end if%>
					
					<%else if request("zoom")=900  then%>
					<%if (request("x")+575)<500 then%><%=500%>
					<%else if (request("x")+575)>4900 then%><%=4900%>
					<%else%><%=request("x")+575%>
					<%end if%><%end if%>
					

					<%else if request("zoom")=1100  then%>
					<%if (request("x"))<500 then%><%=500%>
					<%else if (request("x"))>4900 then%><%=4900%>
					<%else%><%=request("x")%>
					<%end if%><%end if%>
				
					<%end if%><%end if%><%end if%><%end if%><%end if%><%end if%>



					&y=
					<%if request("x")<0 or request("zoom")=0 then%><%=0%>

					<%else if request("zoom")=150  then%>
					<%if (request("y")+477)>1350 then%><%=1350%>
					<%else if (request("y")+477)<470 then%><%=470%>
					<%else%><%=request("y")+477%>
					<%end if%><%end if%>
					
					
					<%else if request("zoom")=300  then%>
					<%if (request("y")+633)>2250 then%><%=2250%>
					<%else if (request("y")+633)<495 then%><%=495%>
					<%else%><%=request("y")+633%>
					<%end if%><%end if%>
					

					<%else if request("zoom")=500  then%>
					<%if (request("y")+1268)>4050 then%><%=4050%>
					<%else if (request("y")+1268)<500 then%><%=500%>
					<%else%><%=request("y")+1268%>
					<%end if%><%end if%>

					<%else if request("zoom")=900  then%>
					<%if (request("y")+637)>4900 then%><%=4900%>
					<%else if (request("y")+637)<500 then%><%=500%>
					<%else%><%=request("y")+637%>

					<%end if%><%end if%>
					<%else if request("zoom")=1100  then%>
					<%if (request("y"))>4900 then%><%=4900%>
					<%else if (request("y"))<500 then%><%=500%>
					<%else%><%=request("y")%>
					<%end if%><%end if%>
					
				
					
					<%end if%><%end if%><%end if%><%end if%><%end if%><%end if%>

					&zoom=
					<%if request("zoom")=1100 then%><%=1100%>
					<%else if request("zoom")=900 then%><%=1100%>
					<%else if request("zoom")=500 then%><%=900%>
					<%else if request("zoom")=300 then %><%=500%>
					<%else%><%=300%>
					<%end if%><%end if%><%end if%><%end if%>
					"><input class="button1" style="width:30px" type="submit" name="secim" value="+"></a>


					<a href="map.asp?x=


					<%if	request("x")<0 or request("zoom")=0 then%><%=0%>

					<%else if request("zoom")=150  then%>
					<%if (request("x"))<460 then%><%=460%>
					<%else if (request("x"))>675 then%><%=675%>
					<%else%><%=request("x")%>
					<%end if%><%end if%>

					<%else if request("zoom")=300  then%>	
					<%if (request("x")-432)<460 then%><%=460%>
					<%else if (request("x")-432)>675 then%><%=675%>
					<%else%><%=request("x")-432%>
					<%end if%><%end if%>
					

					<%else if request("zoom")=500  then%>
					<%if (request("x")-574)<470 then%><%=470%>
					<%else if (request("x")-574)>1342 then%><%=1342%>
					<%else%><%=request("x")-574%>
					<%end if%><%end if%>

					<%else if request("zoom")=900  then%>
					<%if (request("x")-1154)<480 then%><%=480%>
					<%else if (request("x")-1154)>2240 then%><%=2240%>
					<%else%><%=request("x")-1154%>
					<%end if%><%end if%>

					<%else if request("zoom")=1100  then%>
					<%if (request("x")-575)<500 then%><%=500%>
					<%else if (request("x")-575)>4050 then%><%=4050%>
					<%else%><%=request("x")-575%>
					<%end if%><%end if%>	
				
					

					<%end if%><%end if%><%end if%><%end if%><%end if%><%end if%>


					&y=
					<%if request("x")<0 or request("zoom")=0 then%><%=0%>

					<%else if request("zoom")=150  then%>
					<%if (request("y"))>670 then%><%=670%>
					<%else if (request("y"))<460 then%><%=460%>
					<%else%><%=request("y")%>
					<%end if%><%end if%>

					<%else if request("zoom")=300  then%>
					<%if (request("y")-477)>670 then%><%=670%>
					<%else if (request("y")-477)<460 then%><%=460%>
					<%else%><%=request("y")-477%>
					<%end if%><%end if%>

					<%else if request("zoom")=500  then%>
					<%if (request("y")-633)>1350 then%><%=1350%>
					<%else if (request("y")-633)<470 then%><%=470%>
					<%else%><%=request("y")-633%>
					<%end if%><%end if%>

					<%else if request("zoom")=900  then%>
					<%if (request("y")-1268)>2250 then%><%=2250%>
					<%else if (request("y")-1268)<495 then%><%=495%>
					<%else%><%=request("y")-1268%>
					<%end if%><%end if%>
					<%else if request("zoom")=1100  then%>
					<%if (request("y")-637)>4000 then%><%=4000%>
					<%else if (request("y")-637)<500 then%><%=500%>
					<%else%><%=request("y")-637%>
					<%end if%><%end if%>
					

				
					
					<%end if%><%end if%><%end if%><%end if%><%end if%><%end if%>

					&zoom=
					<%if request("zoom")=1100 then%><%=900%>
					<%else if request("zoom")=900 then%><%=500%>
					<%else if request("zoom")=500 then%><%=300%>
					<%else if request("zoom")=300 then %><%=150%>
					<%else%><%=150%>
					<%end if%><%end if%><%end if%><%end if%>
					"><input class="button1" style="width:30px" type="submit" name="secim" value="-"></a>
					</td>
					<td>
					&nbsp;
					</td>
		
		</tr>

	</table>
 	</form>
		
	</div>
		

				<div style=";margin-left:auto; margin-right:auto;border: 15px solid #CCC;width:485px; height: 485px;background-image:url(http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg);background-size:<%=request.QueryString("zoom")%>% <%=request.QueryString("zoom")%>%;  background-position: <%=request.QueryString("x")%>px <%=request.QueryString("y")%>px  ;  " 
						
				</div>
			
		
		
				</div>
				<div class="lastdiv" style="top:1200px">
					<div style="margin-left:300px">
					<p style="font-family:Arial; font-weight:bold; text-align:center; float: left;clear: left">Designed © by M.Mustafa Okcen</p>
					</div>
					<div class="center" style="border:none; width: 40px;height: 40px; margin-top: -5px">
						<img src="Photos/Mm.png">
					</div>
				</div>
</body>
</html>
