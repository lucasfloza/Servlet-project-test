<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>





<!doctype html>
<html lang="pt-br">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Java Standard TagLib</title>
  </head>
<body>


<!-- Manipulando o java no html com a biblioteca JSTL -->

<div class="container">
	<div class="row justify-content-center align-items-center vh-100">
		<div class="col-auto">
			<div class="card text-center border-0">
		  		<div class="card-body">
		    		<h5 class="card-title mb-4">List of Companies:</h5>
		 			
		    		<ol class="list-group list-group-numbered border-0">
						<c:forEach items="${empresas}" var="empresa" >
		  					<li class="list-group-item d-flex border-0 justify-content-between align-items-start">
		    					<div class="ms-2 me-auto">
		      						<div class="fw-bold">
		      						${empresa.nome} (<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>)
		      										
		      						<a href="mostrarEmpresa?id=${empresa.id}" class="text-normal fw-normal">Edit</a>
		      						<a href="removeEmpresa?id=${empresa.id}" class="text-danger fw-normal">Remove</a>
		    						</div>
		    					</div>
		    				</li>
						</c:forEach>        
					</ol>
		   		</div>
					
		  	</div>
		  	<div class="text-center mb-5"> 
		  		<button style="width:100px;" class="btn btn-outline-primary mt-3" onclick="window.location.href = 'http://localhost:8080/gerenciador/index.html'">Back</button>
		  	</div>
		</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>