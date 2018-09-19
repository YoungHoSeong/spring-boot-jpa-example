<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-07-21
  Time: 오전 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Oswald:400,300);
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);
        body
        {
            font-family: 'Open Sans', sans-serif;
        }
        .popup-box {
            background-color: #ffffff;
            border: 1px solid #b0b0b0;
            bottom: 0;
            display: none;
            height: 415px;
            position: fixed;
            right: 70px;
            width: 300px;
            font-family: 'Open Sans', sans-serif;
        }
        .round.hollow {
            margin: 40px 0 0;
        }
        .round.hollow a {
            border: 2px solid #ff6701;
            border-radius: 35px;
            color: red;
            color: #ff6701;
            font-size: 23px;
            padding: 10px 21px;
            text-decoration: none;
            font-family: 'Open Sans', sans-serif;
        }
        .round.hollow a:hover {
            border: 2px solid #000;
            border-radius: 35px;
            color: red;
            color: #000;
            font-size: 23px;
            padding: 10px 21px;
            text-decoration: none;
        }
        .popup-box-on {
            display: block !important;
        }
        .popup-box .popup-head {
            background-color: #fff;
            clear: both;
            color: #7b7b7b;
            display: inline-table;
            font-size: 21px;
            padding: 7px 10px;
            width: 100%;
            font-family: Oswald;
        }
        .bg_none i {
            border: 1px solid #ff6701;
            border-radius: 25px;
            color: #ff6701;
            font-size: 17px;
            height: 33px;
            line-height: 30px;
            width: 33px;
        }
        .bg_none:hover i {
            border: 1px solid #000;
            border-radius: 25px;
            color: #000;
            font-size: 17px;
            height: 33px;
            line-height: 30px;
            width: 33px;
        }
        .bg_none {
            background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
            border: medium none;
        }
        .popup-box .popup-head .popup-head-right {
            margin: 11px 7px 0;
        }
        .popup-box .popup-messages {
        }
        .popup-head-left img {
            border: 1px solid #7b7b7b;
            border-radius: 50%;
            width: 44px;
        }
        .popup-messages-footer > textarea {
            border-bottom: 1px solid #b2b2b2 !important;
            height: 34px !important;
            margin: 7px;
            padding: 5px !important;
            border: medium none;
            width: 95% !important;
        }
        .popup-messages-footer {
            background: #fff none repeat scroll 0 0;
            bottom: 0;
            position: absolute;
            width: 100%;
        }
        .popup-messages-footer .btn-footer {
            overflow: hidden;
            padding: 2px 5px 10px 6px;
            width: 100%;
        }
        .simple_round {
            background: #d1d1d1 none repeat scroll 0 0;
            border-radius: 50%;
            color: #4b4b4b !important;
            height: 21px;
            padding: 0 0 0 1px;
            width: 21px;
        }





        .popup-box .popup-messages {
            background: #3f9684 none repeat scroll 0 0;
            height: 275px;
            overflow: auto;
        }
        .direct-chat-messages {
            overflow: auto;
            padding: 10px;
            transform: translate(0px, 0px);

        }
        .popup-messages .chat-box-single-line {
            border-bottom: 1px solid #a4c6b5;
            height: 12px;
            margin: 7px 0 20px;
            position: relative;
            text-align: center;
        }
        .popup-messages abbr.timestamp {
            background: #3f9684 none repeat scroll 0 0;
            color: #fff;
            padding: 0 11px;
        }

        .popup-head-right .btn-group {
            display: inline-flex;
            margin: 0 8px 0 0;
            vertical-align: top !important;
        }
        .chat-header-button {
            background: transparent none repeat scroll 0 0;
            border: 1px solid #636364;
            border-radius: 50%;
            font-size: 14px;
            height: 30px;
            width: 30px;
        }
        .popup-head-right .btn-group .dropdown-menu {
            border: medium none;
            min-width: 122px;
            padding: 0;
        }
        .popup-head-right .btn-group .dropdown-menu li a {
            font-size: 12px;
            padding: 3px 10px;
            color: #303030;
        }

        .popup-messages abbr.timestamp {
            background: #3f9684  none repeat scroll 0 0;
            color: #fff;
            padding: 0 11px;
        }
        .popup-messages .chat-box-single-line {
            border-bottom: 1px solid #a4c6b5;
            height: 12px;
            margin: 7px 0 20px;
            position: relative;
            text-align: center;
        }
        .popup-messages .direct-chat-messages {
            height: auto;
        }
        .popup-messages .direct-chat-text {
            background: #dfece7 none repeat scroll 0 0;
            border: 1px solid #dfece7;
            border-radius: 2px;
            color: #1f2121;
        }

        .popup-messages .direct-chat-timestamp {
            color: #fff;
            opacity: 0.6;
        }

        .popup-messages .direct-chat-name {
            font-size: 15px;
            font-weight: 600;
            margin: 0 0 0 49px !important;
            color: #fff;
            opacity: 0.9;
        }
        .popup-messages .direct-chat-info {
            display: block;
            font-size: 12px;
            margin-bottom: 0;
        }
        .popup-messages  .big-round {
            margin: -9px 0 0 !important;
        }
        .popup-messages  .direct-chat-img {
            border: 1px solid #fff;
            background: #3f9684  none repeat scroll 0 0;
            border-radius: 50%;
            float: left;
            height: 40px;
            margin: -21px 0 0;
            width: 40px;
        }
        .direct-chat-reply-name {
            color: #fff;
            font-size: 15px;
            margin: 0 0 0 10px;
            opacity: 0.9;
        }

        .direct-chat-img-reply-small
        {
            border: 1px solid #fff;
            border-radius: 50%;
            float: left;
            height: 20px;
            margin: 0 8px;
            width: 20px;
            background:#3f9684;
        }

        .popup-messages .direct-chat-msg {
            margin-bottom: 10px;
            position: relative;
        }

        .popup-messages .doted-border::after {
            background: transparent none repeat scroll 0 0 !important;
            border-right: 2px dotted #fff !important;
            bottom: 0;
            content: "";
            left: 17px;
            margin: 0;
            position: absolute;
            top: 0;
            width: 2px;
            display: inline;
            z-index: -2;
        }

        .popup-messages .direct-chat-msg::after {
            background: #fff none repeat scroll 0 0;
            border-right: medium none;
            bottom: 0;
            content: "";
            left: 17px;
            margin: 0;
            position: absolute;
            top: 0;
            width: 2px;
            display: inline;
            z-index: -2;
        }
        .direct-chat-text::after, .direct-chat-text::before {

            border-color: transparent #dfece7 transparent transparent;

        }
        .direct-chat-text::after, .direct-chat-text::before {
            -moz-border-bottom-colors: none;
            -moz-border-left-colors: none;
            -moz-border-right-colors: none;
            -moz-border-top-colors: none;
            border-color: transparent #d2d6de transparent transparent;
            border-image: none;
            border-style: solid;
            border-width: medium;
            content: " ";
            height: 0;
            pointer-events: none;
            position: absolute;
            right: 100%;
            top: 15px;
            width: 0;
        }
        .direct-chat-text::after {
            border-width: 5px;
            margin-top: -5px;
        }
        .popup-messages .direct-chat-text {
            background: #dfece7 none repeat scroll 0 0;
            border: 1px solid #dfece7;
            border-radius: 2px;
            color: #1f2121;
        }
        .direct-chat-text {
            background: #d2d6de none repeat scroll 0 0;
            border: 1px solid #d2d6de;
            border-radius: 5px;
            color: #444;
            margin: 5px 0 0 50px;
            padding: 5px 10px;
            position: relative;
        }

        #status_message {
            width: 100%;
        }
    </style>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <script type="text/javascript" >
        $(function() {
            var viewMessage = $('#qnimate');

            var webSocket = new WebSocket("ws://localhost:8080/websocket");

            webSocket.onmessage = function(message) {
                $(viewMessage).append('<p>'+message.data+'</p>');
            };

            webSocket.onopen = function() {
                console.log("connection opened");
            };

            webSocket.onclose = function() {
                $(viewMessage).append('<p>상대방이 대화방을 나가셨습니다.</p>');
                console.log("connection closed");
            };

            webSocket.onerror = function wserror(message) {
                console.log("error: " + message);
            };

           $('#status_message').on('keypress', function(event){
               var code = event.keyCode || event.which;
               if(code == 13){
                   webSocket.send($(this).val());
                   $(viewMessage).append('<p> 나 : '+ $(this).val()+'</p>');
                   $(this).val('');
               }
           }) ;
        });
    </script>
</head>
<body>
    <h1>Hello</h1>

    <table>
        <c:forEach var="customer" items="${customerList.content }" varStatus="status">
            <tr>
                <td>${customer.userId }</td>
            </tr>
        </c:forEach>
    </table>

    <div class="popup-box chat-popup popup-box-on" id="qnimate">
          <div class="popup-messages-footer">
            <input type="text" id="status_message" placeholder="Type a message..." name="message"></input>
            <div class="btn-footer">
                <button class="bg_none"><i class="glyphicon glyphicon-film"></i></button>
                <button class="bg_none"><i class="glyphicon glyphicon-camera"></i></button>
                <button class="bg_none"><i class="glyphicon glyphicon-paperclip"></i></button>
                <button class="bg_none pull-right"><i class="glyphicon glyphicon-thumbs-up"></i></button>
            </div>
        </div>
    </div>


</body>
</html>
