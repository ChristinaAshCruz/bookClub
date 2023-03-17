<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>View Book</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div
      class="d-flex justify-content-between align-items-baseline mb-3"
      id="header"
    >
      <h1>View {Book Title here...}</h1>
      <span><a href="/book" class="btn btn-primary">Back to Dashboard</a></span>
    </div>
    <em> </em>
    <div class="card mb-3 p-3" id="info-row">
      <h4>
        <span class="text-danger"> Jane </span>
        read
        <span class="text-success">book title</span>
        by
        <span class="text-warning"> author name </span>
      </h4>
    </div>
    <div class="card p-3 mb-3">
      <h4>Here are Jane's thoughts:</h4>
      <hr />
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam aliquam
        quod esse, dolores repellendus minima deleniti earum modi illo quos
        quidem veniam tenetur atque nobis iure pariatur voluptas dicta
        delectus?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum
        unde voluptas qui quas corrupti aliquid architecto voluptates aspernatur
        quis placeat possimus dignissimos vero quae laudantium veniam labore,
        quam ipsum nulla. Lorem ipsum dolor sit amet consectetur adipisicing
        elit. Molestias ut distinctio impedit inventore necessitatibus, qui
        cupiditate aperiam deleniti doloremque fugit quasi dignissimos incidunt
        recusandae nobis reprehenderit eveniet, nisi aut sapiente. Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Animi temporibus reiciendis
        consectetur aspernatur nemo, sapiente quibusdam possimus. Similique
        quisquam in, cum dicta exercitationem eum, dolorum nemo asperiores id a
        labore?
      </p>
      <hr />
    </div>
    <div class="d-flex justify-content-end">
      <button class="btn btn-primary me-2">edit</button>
      <button class="btn btn-primary">delete</button>
    </div>
  </body>
</html>
