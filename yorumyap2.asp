<!DOCTYPE html>
<html>



<head runat="server">
    <title>Comment</title>
    <meta http-equiv="Refresh" content="1;url=person2.asp?username=<%=request("username")%>" />
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
Tablom.Open "PeopleComment", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
Tablom("owner_id") = request("d")
Tablom("user_id") =  Session("id")
Tablom("username")=  Session("username")
Tablom("name")=  Session("name")
Tablom("lastname")=  Session("lastname")
Tablom("comment") =  request("comment")
Tablom("comment_date") =  request("date")


'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

response.write "Yorumunuz Eklenmistir"
%>

</body>
</html>