<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>全部课程信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="img/lizhi.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>

<div style="padding: 20px 550px 10px">
    <form method="post" action="reader_querybook_do.html" class="form-inline" id="searchform">
        <div class="input-group">
            <input type="text" placeholder="输入课程名" class="form-control" id="search" name="searchWord"
                   class="form-control">
            <span class="input-group-btn">
                <input type="submit" value="搜索" class="btn btn-default">
            </span>
        </div>
    </form>
    <script>
        $("#searchform").submit(function () {
            var val = $("#search").val();
            if (val == '') {
                alert("请输入关键字");
                return false;
            }
        })
    </script>
</div>
<div style="position: relative;top: 10%">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部课程
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>课程名称</th>
                <th>老师</th>
                <th>教室</th>
                <th>课程代码</th>
                <th>学分</th>
                <th>剩余座位</th>
                <th>选退</th>
                <th>详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td><c:out value="${book.name}"></c:out></td>
                    <td><c:out value="${book.author}"></c:out></td>
                    <td><c:out value="${book.publish}"></c:out></td>
                    <td><c:out value="${book.isbn}"></c:out></td>
                    <td><c:out value="${book.price}"></c:out></td>
                    <td><c:out value="${book.number}"></c:out></td>

                    <c:set var="flag" value="false"/>
                    <c:forEach var="lend" items="${myLendList}">
                        <c:if test="${lend eq book.bookId}">
                            <c:set var="flag" value="true"/>
                        </c:if>
                    </c:forEach>
                    <c:if test="${flag}">
                        <td><a href="returnbook.html?bookId=<c:out value="${book.bookId}"></c:out>">
                            <button type="button" class="btn btn-danger btn-xs">退课</button>
                        </a></td>
                    </c:if>
                    <c:if test="${not flag}">
                        <c:if test="${book.number>0}">
                            <td><a href="lendbook.html?bookId=<c:out value="${book.bookId}"></c:out>">
                                <button type="button" class="btn btn-primary btn-xs">选课</button>
                            </a></td>
                        </c:if>
                        <c:if test="${book.number==0}">
                            <td>
                                <button type="button" class="btn btn-defalut btn-xs" disabled="disabled">已空</button>
                            </td>
                        </c:if>
                    </c:if>
                    <td><a href="reader_book_detail.html?bookId=<c:out value="${book.bookId}"></c:out>">
                        <button type="button" class="btn btn-success btn-xs">详情</button>
                    </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
