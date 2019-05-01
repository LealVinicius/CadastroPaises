<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ page import="model.Pais" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Cadastro de países </title>
</head>
<body>
	<%Pais p = (Pais)request.getAttribute("pais"); %>
	<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">País cadastrado!</h4>
  <hr>
  <p class="mb-0"></p>
</div>
	Id: <%=p.getId() %> <br/>
	Nome: <%=p.getNome() %> <br/>
	População: <%=p.getPopulacao() %> <br/>
	Área: <%=p.getArea() %> <br/><br/>

</body>
</html>