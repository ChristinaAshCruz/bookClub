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
    <title>Dashboard</title>
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
      <h1>Welcome, User!</h1>
      <span><a href="/" class="btn btn-primary">Logout</a></span>
    </div>
    <hr />
    <div
      class="d-flex justify-content-between align-items-baseline mb-3"
      id="header"
    >
      <h4>Books from everyone's shelves</h4>
      <span
        ><a href="/book/new" class="btn btn-primary"
          >+ Add a book to my shelf!</a
        ></span
      >
    </div>
    <div class="card p-3">
      <table class="table" id="directory">
        <thead>
          <tr id="header-row">
            <th scope="col">Title</th>
            <th scope="col">Author</th>
            <th scope="col"># of Pages</th>
            <th scope="col">Language</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tr>
          <td>
            <a href="#">Title</a>
          </td>
          <td>Test</td>
          <td>Test</td>
          <td>Test</td>
          <td>
            <a href="/edit" class="btn btn-primary col-3">Edit</a>
            <a href="/delete" class="btn btn-primary col-3">Delete</a>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
