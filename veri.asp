<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%

dsn = "DBQ=" & Server.Mappath("veritabanim2.mdb") & ";Driver={Microsoft Access Driver (*.mdb)};" 
Set conn=Server.CreateObject("ADODB.Connection")
conn.Open dsn

SQL = "Update Votes Set Rate = '"& Request.Form("Deger")+1 &"' Where kimlik = '" & request.form("Teacher") & "'"



  Set RS = conn.Execute(SQL)

 
  conn.Close
  Set conn = Nothing

%>

<p align="center"><b>
<%
response.write "Kayýt Düzeltilmiþtir"


%>
<br>
<br>
<a href="menu.htm">Menu</a></font></p>