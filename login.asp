	<!DOCTYPE html>
	<html>
	
	
	<head runat="server">
    <title>LOGIN</title>
    <meta http-equiv="Refresh" content="0;url=index.asp" />
	</head>
<%
dim username, user

Response.Buffer=True
Response.Expires = -100
 
username=request.form("username")
userpwd=request.form("userpwd")

Veritabani_Yol=SERVER.MAPPATH("Veritabanim2.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

Sorgu="select * from Users where username = '" & request.form("username") & "' and Password = '" & Request.form("userpwd") & "'"
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
 		%>
 	</body>
	</html>