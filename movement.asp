<!DOCTYPE html>
<html>



<head runat="server">
    <title>Comment</title>

    <%
    	secim=request("secim")
    	select case ("secim")
    		case "1"%>
    <meta http-equiv="Refresh" content="0;url=map.asp?x=<%=request("x")%>y=<%=request("y")%> 
    		<%case "2"%>
    <meta http-equiv="Refresh" content="0;url=map.asp?x=<%=request("x")%>&y=<%=request("y")%> 
    		<%case "3"%>
    <meta http-equiv="Refresh" content="0;url=map.asp?x=<%=request("x")%>&y=<%=request("y")%> 
    		<%case "4"%>
    <meta http-equiv="Refresh" content="0;url=map.asp?x=<%=request("x")%>&y=<%=request("y")%> 
    		<%end select%>
    		/>
<d/head>

<body>




</body>
</html>