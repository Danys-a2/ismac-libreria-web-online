<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 <section class="px-5 py-5 bg-light">
  <div class="container">
    <h1 class="text-center mb-4">Libros</h1>
    <form action="del" method="get" class="text-center">
    
        <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" />
        <strong>¿Desea eliminar el Dato?</strong>
           <br/><br/>
        <button class="btn btn-danger" type="submit">ELIMINAR</button>
        <button class="btn btn-secondary" type="button" onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;">CANCELAR</button>
    </form>
  </div>  
 </section>
 
 <%-- <section class="px-5 py-5">
  <div class="container">
    <h1>Libros</h1>
    <form action="del" method="get">
    
        <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" />
        <strong>¿Desea eliminar el Dato?</strong>
           <br/><br/>
        <button class="btn btn-primary" type="submit">ELIMINAR</button>
        <button class="btn btn-primary" type="button" onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;">CANCELAR</button>
    </form>
  </div>  
 </section> --%>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
</body> 
</html>