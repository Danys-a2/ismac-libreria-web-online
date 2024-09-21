<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>Sistema Libreria</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav></nav>

<section class="px-5 py-5">
<h1> clientes </h1>
<div class="container" style="text-align: center">
  <button class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?opcion=1';return false;">
       <i class="fa-solid fa-address-book" style='font-size:36px;color:red'></i> 
       <!--<i class='fa fa-book' style='font-size:36px;color:red'></i> --> 
       Agregar
  </button>
</div class="table-responsive"> 
     <table id="tabla1"
            name="tabla1" 
            data-height="600" 
            data-search="true" 
            data-pagination="true" 
            data-toogle="tabla1" 
            data-tollbar=".toolbar" 
            class="table table-striped table-sm">
         <thead>
           <tr>
              <th data-field="Id" data-sortable="true">idCliente</th>
              <th data-field="Cédula" data-sortable="true">Cedula</th>
              <th data-field="Nombre" data-sortable="true">Nombre</th>
              <th data-field="Apellido" data-sortable="true">Apellido</th>
              <th data-field="Dirección" data-sortable="true">Direccion</th>
              <th data-field="Telefono" data-sortable="true">Telefono</th>
              <th data-field="Correo" data-sortable="true">Correo</th>
              <th data-field="Acciones" data-sortable="true">Acciones</th>
            </tr>
          </thead>
        <tbody>
            <c:forEach var="item" items="${clientes}">
             <tr>
                <td>${item.idCliente}</td>
                <td>${item.cedula}</td>
                <td>${item.nombre}</td>
                <td>${item.apellido}</td>
                <td>${item.direccion}</td>
                <td>${item.telefono}</td>
                <td>${item.correo}</td>
                <td>
                    <button class="btn btn-success"  onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=1';return false;">
                    <i class='fas fa-user-edit'style='font-size:16px;color:red'></i>
                    Actualizar
                    </button>
                    <button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${item.idCliente}&opcion=2';return false;">
                    <i class='fa-solid fa-trash-can' style='font-size:25px;color:#fcfcfc'></i>
                    Eliminar
                </button>
                </td>
              </tr> 
            </c:forEach>
         </tbody>   
     </table>

</body>
</html>