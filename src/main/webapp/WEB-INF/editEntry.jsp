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
      <h1>Change your Entry</h1>
      <span><a href="/book" class="btn btn-primary">Back to Dashboard</a></span>
    </div>
    <hr />
    <div class="mt-4">
      <form:form
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
            <label for="thoughts" class="mb-2" path="thoughts"
              >My Thoughts:</label
            >
            <textarea
              class="form-control"
              placeholder="Write your thoughts here..."
              name="thoughts"
              path="thoughts"
              style="height: 100px"
            ></textarea>
          </div>
          <button class="btn btn-primary col-2">Submit</button>
        </div>
      </form:form>
    </div>
  </body>
</html>
