<!DOCTYPE html>
<html>



<head runat="server">
    <title>LOG OUT</title>
    <meta http-equiv="Refresh" content="1;url=index.asp" />
</head>
<body>
<%
Session.Abandon
response.write("Cikis yapiliyor.")
%>
</body>
</html>