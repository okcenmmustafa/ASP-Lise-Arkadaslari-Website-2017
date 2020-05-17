<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<% 
'kutuyu boþ býrakmayý engelleme
If trim(request("Teacher"))="" then  
response.write ("<b>Eksik Bilgi! </b> Lütfen Bos birakmayiniz.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br> ")
response.end  
end if

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("Veritabanim2.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "Votes", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.Update
'Tablodaki alanlara veri aktarma

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim.mdb"))
ssql="select * from Votes; "
Set oRS = oConn.Execute(sSQL)
Do While NOT oRS.EOF 
if Tablom("name") = Request.form("name") then
	Tablom("Rate")=5
	
end if

	oRS.MoveNext
Loop



oConn.Close
Set oRS = Nothing
Set oConn = Nothing

%>
%>



'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

response.write "Veri Girisi Yapilmistir"
%>
<p><a href="Addnew.asp">Addnew</a></p>