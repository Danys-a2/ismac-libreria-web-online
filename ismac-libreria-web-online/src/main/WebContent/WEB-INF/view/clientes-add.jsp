<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Libreria</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/estilos.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav></nav>
<section class="px-5 py-5">
 <div class="container">
   <h1> Clientes </h1>

    <form action="add" method="post" class="needs-validation" novalidate>

    <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}"/>
    <div class="form-group">
    <label for="Cedula" class="form-label">Cedula</label>
    <input type="number" id="cedula" name="cedula" value="${cliente.cedula}" required />
    </div>
    <div class="form-group">
    <label for="Nombre" class="form-label">Nombre</label>
    <input type="text" id="nombre" name="nombre" value="${cliente.nombre}" required />
    </div>
    <div class="form-group">
    <label for="Apellido" class="form-label">Apellido</label>
    <input type="text" id="apellido" name="apellido" value="${cliente.apellido}" required />
    </div>
    <div class="form-group">
    <label for="Direccion" class="form-label">Dirección</label>
    <input type="text" id="direccion" name="direccion" value="${cliente.direccion}" required />
    </div>
    <div class="form-group">
    <label for="Telefono" class="form-label">Teléfono</label>
    <input type="number" id="telefono" name="telefono" value="${cliente.telefono}" required />
    </div>
    <div class="form-group">
    <label for="Correo" class="form-label">Correo</label>
    <input type="text" id="correo" name="correo" value="${cliente.correo}" required />
    </div>
      <div class="form-group px-3 py-3" style="text-align: right;">
        <button class="btn btn-secondary" type="submit">
        <i class='fa fa-plus-circle' style='color: blue'></i>GUARDAR</button>
        <button class="btn btn-danger" type="button" onclick="window.location.href='/ismac-libreria-web-online/clientes/findAll';return false;">
        <i class='fa fa-times-circle' style='color: red'></i>CANCELAR 
       </button>
      </div>
 
    </form>
 </div>
</section>
<footer></footer>
   
     <script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

	<script type="text/javascript">
         
    (()=>{
    	'use strict'
    	
    	const forms = document.querySelectorAll('.needs-validation')
    	
    	Array.from(forms).forEach(form =>{
    		form.addEventListener('submit', event =>{
    			if(!form.checkValidity()){
    				event.preventDefault()
    				event.stopPropagation()
    			}
    			
    			form.classList.add('was-validated')
    		}, false)
    	})
    	
    })()
    
    </script>

</body>
</html>