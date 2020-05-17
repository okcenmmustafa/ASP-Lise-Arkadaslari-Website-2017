
<% 
'kutuyu boþ býrakmayý engelleme


'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("Veritabanim2.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "Users", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("RegisterDate") = request("date")
ssql="select * from Users; "
		Set oRS = Baglantim.Execute(sSQL)
		dim test
		test=0
		Do While NOT oRS.EOF 
		if test=2 then 
		else
			if request("username")=oRS("Username") then
			test=1
			response.Write(test)
			
			else
				if test=0 then 
			Tablom("Username") =  request("username")
			Tablom("Password") =  request("password")
			Tablom("school_nub") =  request("school_nub")
			Tablom("name") =  request("name")
			Tablom("lastname") =  request("lastname")
			Tablom("nickname") =  request("nickname")
			Tablom("gender") =  request("gender")
			Tablom("birthdate") =  request("birthdate")
			Tablom("job") =  request("job")
			Tablom("university") =  request("university")
			Tablom("department") =  request("department")
			Tablom("telnumber") =  request("telnumber")
			Tablom("email") =  request("email")
			Tablom("website") =  request("website")
			Tablom("facebook_id") =  request("face")
			Tablom("twitter_id") =  request("Twitter")
			Tablom("linkedin_id") =  request("linked")
			Tablom("adress") =  request("adress")
			Tablom("live") =  request("live")
			Tablom("notice") =  request("notice")
			Tablom("basketball") =  request("basketball")
			Tablom("draw") =  request("draw")
			Tablom("guitar") =  request("guitar")
			Tablom.Update
		
				  	test=2
					response.write "Veri Girisi Yapilmistir"
				end if
		'aktarma islemi birince tablonun guncellenmesi:

			
			end if
		end if
 		oRS.MoveNext
		loop	
		Tablom.close
		set Tablom= Nothing
	'baglantinin kesilmesi:
  		Baglantim.close
		set Baglantim= Nothing
		%><%=request("username")%><%=request("password")%><%
			'tablonun kapatilmasi:
	  
%>
	
	<%if test=1 then %>
	<html>
	
	
	<head runat="server">
    <title>Addnew</title>
    <meta http-equiv="Refresh" content="7;url=Addnew.asp" />
	</head>
	<body>
	<%="Girdiginiz kullanici adi daha once alinmistir lutfen baska bir kullanici adi belirleyiniz."
    
    else if test=2 then
		dim username, user

		Response.Buffer=True
		Response.Expires = -100
		 
		username=request.form("username")
		userpwd=request.form("password")

		Veritabani_Yol=SERVER.MAPPATH("Veritabanim2.mdb")
		Set Baglanti=Server.CreateObject("Adodb.Connection")
		Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
		Set Rs=Server.CreateObject("Adodb.recordset")

		Sorgu="select * from Users where username = '" & request.form("username") & "' and Password = '" & Request.form("password") & "'"
		    Set grup = Baglanti.Execute(sorgu) 'ppp
		    

		Rs.Open Sorgu, Baglanti, 1, 3
			If RS.BOF And RS.EOF Then
			    Response.Write "Bilgiler onaylanmadi. Yanlis Kullanici Adi veya Sifre."
			Else
			    user = grup("name")
			    lastname= grup("lastname")
			    id   = grup("id")
			    username=grup("Username")
		        Session("UserLoggedIn") = user
		        Session("id")= id
		        Session("username")=username
		       	Session("name")=user
		        Session("lastname")=lastname
		     	Response.Write "Bilgiler onaylandi."
	     
	 		End If
	 end if		
	 end if
 		
 		%><!DOCTYPE html>
	<html>
	
	
	<head runat="server">
    <title>LOGIN</title>
    <meta http-equiv="Refresh" content="7;url=index.asp" />
	</head>
	<body>
 	</body>
	</html>