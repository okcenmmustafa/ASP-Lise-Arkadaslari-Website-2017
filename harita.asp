<%
	if Session("UserLoggedIn")="" then
	response.redirect("oturum_acma.asp")
	
	else 
%>
<html>
<head>
	<meta charset="UTF-8"
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Havva ERDAĞI </title>
	<link rel="stylesheet" type="text/css" href="sag_menu.css">
	<style>
	p{
	color:white;	
	}
	a{
	    text-decoration:none;
		color:white;
	}
	</style>
</head>

<body>
	<div class="sag_menu"> 
		<center>
		<img src="resimler/havva.ico">
		<p>Havva ERDAĞI</p>
		</center>
		<ul>
			<li><a href="index.asp">Anasayfa</a></li><hr>
			<li><a href="videolar.asp">Videolar</a></li><hr>
			<li><a href="fotograflar.asp">Fotoğraflar</a></li><hr>
			<li><a href="Kisiler.asp">Kişiler</a></li><hr>
			<li><a href="Forum.asp">Forum</a></li><hr>
			<li><a href="Kisi_kayit.asp">Kişi Kayıt</a></li><hr>
			<li><a href="harita.asp?x=3755&y=4635&zoom=1100">Harita</a></li><hr>
			<li><a href="oturum_acma.asp">Oturum Açma</a></li><hr>
			<li><a href="kim_nerede.asp">Kim Nerede Ne Yapıyor?</a></li><hr>
		</ul>
		
		<div class="right">
	<a href=""><img src="resimler/facebook.png"></a>
	<a href="http://www.instagram.com/havvaerdagi" target="_blank"><img src="resimler/instagram.png">
	<a href=""><img src="resimler/twitter.png">
	</div>
	</div>
	<div class="yan_menu">
	
			</form><div class="ozel7">
			<div class="ozel7" style="margin:-309px 0px 0px 66px;opacity:0.9; width: 320px; height: 320px;">


	<table  style="position: absolute;background-color:rgba(0,0,0,0.4);border-radius:15px">
	<tr>
				<td>
					&nbsp;
				</td>
				<td> &nbsp;
				</td>
					<td>
				<a href="harita.asp?
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
				<a href="harita.asp?
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
				<a href="harita.asp?
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
				<a href="harita.asp?x=<%=request("x")%>
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
					<a href="harita.asp?
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


					<a href="harita.asp?x=


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
		</div>
	
	
</body>

</html>

<%

end if

%>

















