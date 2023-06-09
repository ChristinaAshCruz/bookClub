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
    <title>Edit Entry</title>
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
      <h1>
        Edit <em> <c:out value="${thisBook.title}"></c:out></em> Entry
      </h1>
      <span><a href="/book" class="btn btn-primary">Back to Dashboard</a></span>
    </div>
    <hr />
    <div class="mt-4">
      <form:form
        action="/book/${thisBook.id}/edit"
        method="POST"
        modelAttribute="thisBook"
        class="mt-3"
      >
        <input type="hidden" name="_method" value="PUT" />
        <div class="card p-3 mb-3" id="form-card">
          <div class="mb-3">
            <form:label path="title" class="form-label">Title:</form:label>
            <form:input path="title" class="form-control" />
          </div>
          <div class="mb-3">
            <form:errors path="title" class="text-danger mb-3"></form:errors>
          </div>
          <div class="mb-3">
            <form:label path="author" class="form-label">Author:</form:label>
            <form:input path="author" class="form-control" />
          </div>
          <div class="mb-3">
            <form:errors path="author" class="text-danger mb-3"></form:errors>
          </div>
          <div class="mb-3">
            <form:label for="thoughts" class="mb-2 form-label" path="thoughts"
              >My Thoughts:</form:label
            >
            <form:textarea
              class="form-control"
              name="thoughts"
              path="thoughts"
            ></form:textarea>
          </div>
          <div class="mb-3">
            <form:errors path="thoughts" class="text-danger mb-3"></form:errors>
          </div>
          <button class="btn btn-primary col-2">Submit</button>
        </div>
      </form:form>
    </div>
  </body>
</html>
