<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
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