<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/contentstyle.css" />
<style type="text/css">
tr {
	color: #000000;
	font-size: 12px;
	background-color: #eeeeee;
	text-align: center;
}

.tr_title {
	background-color: #d3eaef;
	color: #000000;
	font-size: 12;
}

body {
	background-color: #f3f3f3;
}

table {
	border-collapse: collapse;
	border-style: solid;
}

td, table {
	border-color: #1243FF;
}
</style>

<script type="text/javascript" src="../../js/jquery11.js"></script>

<script>
	$(function() {

		$("tr:not(.tr_title)").hover(function() {
			//	alert("sss");
			$(this).css("background-color", "#dddddd");
		}, function() {
			$(this).css("background-color", "#eeeeee");
		});
	});
</script>
</head>
<body>
	<!-- 分页栏 -->
	<div align="center">总页数：${info.pages } 总记录数：${info.total }
		当前页号：${info.pageNum } 每页记录数:${info.pageSize }</div>

	<div align="center">
		<a href="${info.firstPage}">首页</a> <a href="${info.prePage}">上一页</a> <a
			href="${info.nextPage}">下一页</a> <a href="${info.lastPage}">尾页</a>
	</div>
	<table width="98%" align="center" border=1>
		<caption>班级信息</caption>
		<tr class="tr_title">
			<td>序号</td>
			<td>班级名称</td>
			<td>班级类型</td>
			<td>讲师</td>
			<td>教务班主任</td>
			<td>就业班主任</td>
			<td>开班时间</td>
			<td>结课时间</td>
			<td>状态</td>
			<td>备注</td>
			<td>操作</td>
		</tr>

		<c:forEach items="${info.list}" var="clazz" varStatus="state">
			<tr class='${clazz.stateId==102?"endClass":"having"}'>
				<td>${state.count+(info.pageNum-1)*info.pageSize}</td>
				<td>${clazz.CLASSNAME }</td>
				<td>${clazz.classtype}</td>
				<td>${clazz.teachername}</td>
				<td>${clazz.classguideName}</td>
				<td>${clazz.jobguideName }</td>
				<td>${clazz.CreatedDate }</td>
				<td>${clazz.EndDate }</td>
				<td style="color:${clazz.stateId==102?'red':'#000000'}">${clazz.state}</td>
				<td>${clazz.COMMENT}</td>
				<td><a href="getClassById?classId=${clazz.classId}">结课</a> | <a
					href="viewClassDetailsById?classId=${clazz.classId}">班级详细</a> | <a
					href="listStudentsByClassId?classId=${clazz.classId}">学生信息</a></td>
			</tr>

		</c:forEach>

		<tr>
			<td style="text-align: left" colspan="11"><input type="button"
				value="增加新班级" onclick="window.open('../classAdd','_self')"></td>
		</tr>

	</table>


</body>
</html>