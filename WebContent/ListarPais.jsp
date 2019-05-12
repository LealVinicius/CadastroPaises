<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastro de países</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

<!-- Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
            </div>
            <div class="modal-body">Deseja realmente excluir este item? </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Sim</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
            </div>
        </div>
    </div>
</div>

    <!-- Barra superior com os menus de navegaÃ§Ã£o -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Gerenciador de países</h3>

	<div id="main" class="container-fluid">
     <div id="top" class="row">
 			<div id="top" class="row">
    <div class="col-md-3">
        <h2>Itens</h2>
    </div>
 
    <div class="col-md-6">
        <div class="input-group h2">
            <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Itens">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit">
                    <span class="glyphicon glyphicon-search"></span>
                </button>
            </span>
        </div>
    </div>
 
    <div class="col-md-3">
        <a href="add.jsp" class="btn btn-primary pull-right h2">Novo Pais</a>
    </div>
</div> <!-- /#top -->
     <hr />
	     <div id="list" class="row">
 
    <div class="table-responsive col-md-12">
        <table class="table table-striped" cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Área</th>
                    <th>Popuação</th>
                    <th class="actions">Ações</th>
                 </tr>
            </thead>
            <tbody>
 
                <tr>
                    <td>1001</td>
                    <td>Exemplo de País</td>
                    <td>0000</td>
                    <td>000000</td>
                    <td class="actions">
                        <a class="btn btn-success btn-xs" href="read.jsp">Visualizar</a>
                        <a class="btn btn-warning btn-xs" href="edit.jsp">Editar</a>
                        <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                    </td>
                </tr>
 
 				<c:forEach var="cliente" items="${lista }">
					<tr>
						<td>${cliente.id }</td>
						<td>${cliente.nome }</td>
						<td>${cliente.fone }</td>
						<td>${cliente.email }</td>
						<td class="actions"><a class="btn btn-success btn-xs"
							href="ManterPaisController.do?acao=Visualizar&id=${pais.id }">Visualizar</a>								<a class="btn btn-warning btn-xs"
								href="ManterCliente.do?acao=Editar&id=${pais.id }">Editar</a>
								<button id="btn${pais.id }%>" type="button"
								class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#delete-modal" data-cliente="${pais.id }">Excluir</button>
						</td>
					</tr>
				</c:forEach>
 
 
            </tbody>
         </table>
     </div>

				


					<div id="bottom" class="row">
    <div class="col-md-12">
         
        <ul class="pagination">
            <li class="disabled"><a>&lt; Anterior</a></li>
            <li class="disabled"><a>1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
        </ul><!-- /.pagination -->
 
    </div>
</div> <!-- /#bottom -->
 </div>  <!-- /#main -->


    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('p');
                    $("#id_excluir").val(recipient);
                });
            </script>
</body>

</html>