<%@page import="connection.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file ="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        <tbody>
<%
	int z=0;
try{
	String search=request.getParameter("search");

	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where name like'%"+search+"%' or category like'%"+search+"%' and active='Yes'");
	while(rs.next())
	{
		
	z=1;

%>        
        
        
        
<tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i></td><%=rs.getString(4) %>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
 <%
	}
}catch(Exception e){
	System.out.println(e);
}
%>
         
        </tbody>
      </table>
      <%
      if(z==0){
      %>
      	
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
	
      <br>
      <br>
      <br>
      <div class="footer">
          <p>GADGETBADGET</p>
      </div>

</body>
</html>