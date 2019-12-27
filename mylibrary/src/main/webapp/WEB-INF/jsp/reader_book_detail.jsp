<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ${detail.name}课</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
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
<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 3%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"> ${detail.name}课</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tr>
                    <th width="15%">课程名称</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>老师</th>
                    <td>${detail.author}</td>
                </tr>
                <tr>
                    <th>教室</th>
                    <td>${detail.publish}</td>
                </tr>
                <tr>
                    <th>课程代码</th>
                    <td>${detail.isbn}</td>
                </tr>
                <tr>
                    <th>简介</th>
                    <td>${detail.introduction}</td>
                </tr>
                <tr>
                    <th>课程性质</th>
                    <td>${detail.language}</td>
                </tr>
                <tr>
                    <th>学分</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>上课日期</th>
                    <td><fmt:formatDate value="${detail.pubdate}" 
								pattern="yyyy/MM/dd HH:mm:ss"/></td>
                </tr>
                <tr>
                    <th>分类号</th>
                    <td>${detail.classId}</td>
                </tr>
                <tr>
                    <th>状态</th>
                    <c:if test="${detail.number>1}">
                        <td>有座</td>
                    </c:if>
                    <c:if test="${detail.number==0}">
                        <td>无座</td>
                    </c:if>

                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
