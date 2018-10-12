<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign in</title>


  <link rel="stylesheet" href="css/reset.css">


  <style>
    /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
    body {
      background: #2f313d;
      color: #46485c;
      font-family: sans-serif;
    }

    h2 {
      color: #46485c;
      font-size: 15px;
      font-weight: 600;
      text-align: center;
      margin-bottom: 10px;
    }

    a {
      color: #46485c;
      text-decoration: none;
    }

    .login {
      width: 250px;
      position: absolute;
      top: 50%;
      left: 50%;
      margin: -184px 0px 0px -155px;
      background: rgba(0,0,0,0.2);
      padding: 20px 30px;
      border-radius: 5px;
      box-shadow: 0px 1px 0px rgba(0,0,0,0.3),inset 0px 1px 0px rgba(255,255,255,0.07)
    }

    input[type="text"], input[type="password"] {
      width: 250px;
      padding: 25px 0px;
      background: transparent;
      border: 0;
      border-bottom: 1px solid rgba(255,255,255,0.04);
      outline: none;
      color: #46485c;
    }
    input[type=checkbox] {
      display: none;
    }

    label {
      display: block;
      position: absolute;
      margin-top: 2px;
      width: 4px;
      height: 4px;
      border-radius: 50%;
      background: #46485c;
      content: "";
      transition: all 0.3s ease-in-out;
      cursor: pointer;
      border: 3px solid #252730;
      box-shadow: 0px 0px 0px 2px #46485c;
    }

    #remember:checked ~ label[for=remember] {
      background: #b5cd60;
      border: 3px solid #252730;
      box-shadow: 0px 0px 0px 2px #b5cd60;
    }


    input[type="submit"] {
      background: #b5cd60;
      border: 0;
      width: 250px;
      height: 40px;
      border-radius: 3px;
      color: white;
      cursor: pointer;
      transition: background 0.3s ease-in-out;
    }
    input[type="submit"]:hover {
      background: #16aa56;
    }

    .forgot {
      margin-top: 30px;
      display: block;
      font-size: 11px;
      text-align: center;
      font-weight: bold;
    }
    .forgot:hover {
      margin-top: 30px;
      display: block;
      font-size: 11px;
      text-align: center;
      font-weight: bold;
      color: #6d7781;
    }

    .remember {
      padding: 30px 0px;
      font-size: 12px;
      text-indent: 25px;
      line-height: 15px;
    }

    ::-webkit-input-placeholder {
      color: #46485c;
    }

    [placeholder]:focus::-webkit-input-placeholder {
      transition: all 0.2s linear;
      transform: translate(10px, 0);
      opacity: 0;
    }

  </style>
</head>

<body>
  <form action="/login" method="post">
    <div class="login">
      <h2>Sign in</h2>
      <input id="username" name="username" placeholder="Username" value="admin" type="text"/>
      <input id="password" name="password" placeholder="Password" value="admin" type="password"/>
      <div class="remember">
        <%--${pageContext.request.userPrincipal}--%>
        <sec:authentication var="user" property="principal" />
        <input id="remember" name="remember-me" <sec:authorize access="isRememberMe()">checked</sec:authorize> type="checkbox"/>
        <label for="remember"></label>Remember me
      </div>
      <input type="submit" value="Sign in"/>
      <a class="forgot" href="#">Forgot your password?</a>
    </div>
  </form>
</body>
</html>