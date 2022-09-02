<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>
<!-- Desvinculando o nome estatico do projeto com JSTL/CORE-->




<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Company Form</title>
  </head>
 <body>
    <div class="container mt-5" style="max-width:450px;">
		<form action="${linkServletNovaEmpresa}" method="post">
		
			<h5 class="fw-bold fs-3 text-center">Form</h5>
	  		<div class="mb-3">
	    		<label for="nameCompany" class="form-label">Name Company</label>
	    		<input type="text" name="nome" class="form-control" id="nameCompany" value="${empresa.nome }">
	  		</div>
	  		<div class="mb-3">
	    		<label for="exampleInputEmail1" class="form-label">Email address</label>
	    		<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${empresa.email}" >
	    		<div id="emailHelp" class="form-text">teste@teste.com</div>
	  		</div>
	  		<div class="mb-3">
	    		<label for="exampleInputPassword1" class="form-label">Password</label>
	    		<input type="password" name="senha" class="form-control" id="exampleInputPassword1" value="${empresa.senha}">
	  		</div>
	  		<div class="mb-3">
	    		<label for="exampleDataAbertura" class="form-label">Opening Date</label>
	    		<input type="date" name="data" class="form-control" id="exampleDataAbertura" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="yyyy-MM-dd"/>">
	    		<div id="emailHelp" class="form-text"></div>
	  		</div>
	  		<div class="mb-3" style="display:none;">
	    		<label for="idParamEx" class="form-label">ID da Empresa</label>
	    		<input type="hidden" name="id" class="form-control" id="idParamEx" value="${empresa.id}" >
	  		</div>	  		  		
			<div class="d-flex justify-content-center">
				<button type="submit" style="width:100px;" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div> 
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
 </body>
</html>