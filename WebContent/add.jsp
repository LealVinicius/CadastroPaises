<!DOCTYPE html>
<html lang="pt-br">
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>CRUD com Bootstrap 3</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/style.css" rel="stylesheet">
</head>
<body> 
   <!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp"/>

 <div id="main" class="container-fluid">
 <h3 class="page-header">Adicionar Pa�s</h3>
 <form action="index.html">
  <!-- area de campos do form -->
  <div class="row">
 <div class="form-group col-md-4">
   <label for="campo1">Nome</label>
   <input type="text" class="form-control" id="campo1">
 </div>
 
 <div class="form-group col-md-4">
   <label for="campo2">Popula��o</label>
   <input type="text" class="form-control" id="campo3">
 </div>
 
 <div class="form-group col-md-4">
   <label for="campo3">�rea</label>
   <input type="text" class="form-control" id="campo3">
 </div>
</div>
  <hr />
  <div id="actions" class="row">
    <div class="col-md-12">
      <button type="submit" class="btn btn-primary">Salvar</button>
      <a href="index.jsp" class="btn btn-default">Cancelar</a>
    </div>
  </div>
</form>
</div>

 <script src="js/jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
</body>
</html>