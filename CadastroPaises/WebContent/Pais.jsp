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
 <!-- Barra superior com os menus de navegação -->
		<c:import url="Menu.jsp"/>
	<!--  Modal -->
	<!--  Ainda não quis saber de funcionar. -->
	<div class="modal" id="sitemodal" tabindex="01" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title"> País Cadastrado com sucesso!</h4>
					<button type="button" class="close" data-mismiss="modal">
						<span>OK</span>
					</button>
				</div>
				<div class="modal-body">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"> data-mismiss="modal"</button>
				</div>
			</div>
		</div>
	</div>
	<!--  Fazendo o carregar das informações com o país via JSTL -->	
						ID do País: ${pais.id}<br/>
						Nome do país: ${pais.nome} <br/>
						População: 	  ${pais.populacao} <br/>
						Área:		  ${pais.area} <br/>

</body>
</html>