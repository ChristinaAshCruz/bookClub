<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>New Book</title>
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
      <h1>Add a Book to Your Shelf!</h1>
      <span><a href="/" class="btn btn-primary">Logout</a></span>
    </div>
    <hr />
    <div class="mt-4">
      <form
        action="/book/new"
        method="POST"
        modelAttribute="newBook"
        class="mt-3"
      >
        <div class="card p-3 mb-3" id="form-card">
          <div class="mb-3">
            <label path="title" class="form-label">Title:</label>
            <input path="title" class="form-control" />
          </div>
          <div class="mb-3">
            <label path="author" class="form-label">Author:</label>
            <input path="author" class="form-control" />
          </div>
          <div class="mb-3">
            <label path="numOfPages" class="form-label">Number of Pages:</label>
            <input path="numOfPages" type="number" class="form-control" />
          </div>
          <div class="mb-3">
            <label path="language" class="form-label">Language:</label>
            <input path="language" class="form-control" />
          </div>
          <div class="mb-3">
            <label path="description" class="form-label">Description:</label>
            <input path="description" class="form-control" />
          </div>
          <button class="btn btn-primary col-2">Submit</button>
        </div>
      </form>
    </div>
  </body>
</html>
