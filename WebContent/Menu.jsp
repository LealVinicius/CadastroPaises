<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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
						ID do País: ${pais.id}<br/>
						Nome do país: ${pais.nome} <br/>
						População: 	  ${pais.populacao} <br/>
						Área:		  ${pais.area} <br/>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"> data-mismiss="modal"</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">País cadastrado!</h4>
  <hr>
  <p class="mb-0"></p>
</div>

</head>
<body>

</body>
</html>
 
