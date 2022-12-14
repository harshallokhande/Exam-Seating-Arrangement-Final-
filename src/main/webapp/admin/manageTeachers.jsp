<%@page import="dao.TeacherDao"%>
<%@page import="model.Teacher"%>
<%@page import="dao.StudentDao"%>
<%@page import="model.Student"%>
<%@page import="dao.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<%
String msg=request.getParameter("msg");
if("add".equals(msg))
{
%>
<h3 class="alert">Teacher Successfully Added!</h3>
<%} %>
<%
if("update".equals(msg))
{
%>
<h3 class="alert">Teacher Successfully Updated!</h3>
<%} %>
<%
if("delete".equals(msg))
{
%>
<h3 class="alert">Teacher Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<div class="flex-container">
  <div class="flex-item-left">Manage Teachers <i class='fas fa-chalkboard-teacher'></i></div>
  <div class="flex-item-right"><span style="float: right !important"><a class="button-new" href="addNewTeachers.jsp">Add New Teacher <i class='fas fa-plus-square'></i></a></span></div>
</div>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teachers</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<table>
        <thead>
          <tr>
          <th>ID</th>
            <th scope="col">Name</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Address</th>
            <th>Contact</th>
            <th scope="col">Action</th>
       
          </tr>
        </thead>
        <tbody>
       <%
       ArrayList<Teacher> list = TeacherDao.getAllTeacher();
       Iterator<Teacher> itr = list.iterator();
       while (itr.hasNext()) {
    	   Teacher teacher = itr.next();
       %>
          <tr>
          <td><%= teacher.getTeacherid() %></td>
            <td><%= teacher.getTname() %></td>
            <td><%= teacher.getTdob() %></td>
            <td><%= teacher.getTgender() %></td>
            <td><%= teacher.getTemail() %></td>
            <td><%= teacher.getTaddress() %></td>
            <td><%= teacher.getTcontact() %></td>
           <td><span class="tooltip"><a href="editTeachers.jsp?id=<%=teacher.getTeacher_pk() %>"><i class='fas fa-pen-fancy'></i></a><span class="tooltiptext">Edit<br>Department</span></span></td>
          </tr>
          <%} %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>