<!DOCTYPE html>
<html>



<head runat="server">
    <title>Comment</title>
    <meta http-equiv="Refresh" content="1;url=forum.asp" />
</head>
<body>


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
Tablom.Open "Form", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("Topic") = request("Topic")
Tablom("Content") =  request("content")
Tablom("username")=  Session("username")
Tablom("name") =  Session("name")
Tablom("lastname")=Session("lastname")
Tablom("date") =  request("date")



'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

response.write "Topic was opened"
%>

</body>
</html>