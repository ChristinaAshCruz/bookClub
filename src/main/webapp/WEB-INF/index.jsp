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
    <title>Book Club</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <h1>Book Club</h1>
    <hr />
    <div class="row gx-4" id="main-body">
      <div class="col">
        <div class="card p-3">
          <h1 class="mb-0">Register</h1>
          <hr />
          <form
            action="/user/new"
            class="mt-2"
            method="POST"
            modelAttribute="user"
          >
            <div class="d-flex mb-3 align-items-center">
              <label for="userName" path="userName" class="form-label col-2"
                >Username:</label
              >
              <input
                type="text"
                class="form-control"
                path="userName"
                name="userName"
              />
            </div>
            <div class="mb-3"></div>
            <div class="d-flex mb-3 align-items-center">
              <label for="email" path="email" class="form-label col-2"
                >Email:</label
              >
              <input
                type="text"
                class="form-control"
                path="email"
                name="email"
              />
            </div>
            <div class="mb-3"></div>
            <div class="d-flex mb-3 align-items-center">
              <label for="password" path="password" class="form-label col-2"
                >Password:</label
              >
              <input
                type="password"
                class="form-control"
                path="password"
                name="password"
              />
            </div>
            <div class="mb-3"></div>
            <div class="d-flex mb-3 align-items-center">
              <label for="confirm" path="confirm" class="form-label col-2"
                >Confirm Password:</label
              >
              <input
                type="password"
                class="form-control"
                path="confirm"
                name="confirm"
              />
            </div>
            <div class="mb-3"></div>
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary px-4">Register</button>
            </div>
          </form>
        </div>
      </div>
      <div class="col">
        <div class="card p-3">
          <h1 class="mb-0">Login</h1>
          <hr />
          <form
            action="/login/new"
            method="POST"
            modelAttribute="loginUser"
            class="mt-2"
          >
            <div class="d-flex mb-3 align-items-center">
              <label for="email" path="email" class="form-label col-2"
                >Email:</label
              >
              <input
                type="text"
                class="form-control"
                path="email"
                name="email"
              />
            </div>
            <div class="d-flex mb-3 align-items-center">
              <label for="password" path="password" class="form-label col-2"
                >Password:</label
              >
              <input
                type="password"
                class="form-control"
                path="password"
                name="password"
              />
            </div>
            <div class="mb-3"></div>
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary px-4">Login</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
