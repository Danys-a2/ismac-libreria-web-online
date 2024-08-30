<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Libros</h1> 
<form action="add" method="post">
    <!--idLibro-->
    <input type="hidden" id="idLibro" name="idLibro"  value="${libro.idLibro}" />
    <br/>
    titulo
    <input type="texto" id="titulo" name="titulo"  value="${libro.titulo}" />
    <br/>
    editorial
    <input type="texto" id="editorial" name="editorial"  value="${libro.editorial}" />
    <br/>
    numPaginas
    <input type="number" id="numPaginas" name="numPaginas"  value="${libro.numPaginas}" />
    <br/>
    edicion
    <input type="texto" id="edicion" name="edicion"  value="${libro.edicion}" />
    <br/>
    idioma
    <input type="texto" id="idioma" name="idioma"  value="${libro.idioma}" />
    <br/>
    fechaPublicacion
    <input type="date" id="fechaPublicacion" name="fechaPublicacion"  value="${fn:substring(libro.fechaPublicacion,0,10)}" />
    <br/>
    descripcion
    <input type="texto" id="descripcion" name="descripcion"  value="${libro.descripcion}" />
    <br/>
    tipoPasta
    <input type="texto" id="tipoPasta" name="tipoPasta"  value="${libro.tipoPasta}" />
    <br/>
    ISBN
    <input type="texto" id="ISBN" name="ISBN"  value="${libro.ISBN}" />
    <br/>
    numEjemplares
    <input type="number" id="numEjemplares" name="numEjemplares"  value="${libro.numEjemplares}" />
    <br/>
    portada
    <input type="texto" id="portada" name="portada"  value="${libro.portada}" />
    <br/>
    presentacion
    <input type="texto" id="presentacion" name="presentacion"  value="${libro.presentacion}" />
    <br/>
    precio
    <input type="number" id="precio" name="precio"  value="${libro.precio}" />
    <br/>
    Categoria
    <select id="idCategoria" name="idCategoria">
       <c:forEach var="item" items="${categorias}"> 
          <option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria? 'selected' : ''}>${item.categoria}</option>
       </c:forEach>  
    </select>
    <br/>
    
    Autor
    <select id="idAutor" name="idAutor">
       <c:forEach var="item" items="${autores}">
          <option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
       </c:forEach> 
    </select>
    <br/>
    <button type="submit">GUARDAR</button>
    <button type="button" onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;">CANCELAR</button>
</form>


</body>
</html>