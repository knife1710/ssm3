<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../js/jquery11.js"></script>

<script type="text/javascript">
	$(function(){
		
		$("#classtypeid").load("../getState/5/202");
		$("#teacherid").load("../getTeachers/0");
		$("#classGuideid").load("../getGuides/1/0");
		$("#jobGuideid").load("../getGuides/2/0");
		
		$("#btn_submit").click(function(){
			//
			var flag=confirm("你真的要提交吗？");
			if(flag){
				$("form").submit();
			}
		});
	});

</script>

<link href="../css/table.css" rel="stylesheet" type="text/css">

</head>
<body>
	<form action="save" method="post">
		<table border="1" align="center">
			<caption>班级信息管理</caption>
			<tr>
				<td>班号</td>
				<td><input type="text" name="classname" id="classname"><span id="span_className"></span></td>
				
			<tr>
			<tr>
				<td>班级类型</td>
				<td><select name="classtypeid" id="classtypeid" style="width: 100px">
				</select></td>
			<tr>
			<tr>
				<td>讲师</td>
				<td><select name="teacherid" id="teacherid"
					style="width: 100px"></select></td>
			<tr>
			<tr>
				<td>教务班主任</td>
				<td><select name="classGuideid" id="classGuideid"
					style="width: 100px"></select></td>
			<tr>
			<tr>
				<td>就业班主任</td>
				<td><select name="jobGuideid" id="jobGuideid"
					style="width: 100px"></select></td>
			<tr>
			
			<tr>
				<td>开班时间</td>
				<td><input type="text" name="createddate" id="createddate"><span id="span_createdDate"></span></td>
			<tr>
			
			<tr>
				<td>备注</td>
				<td><textarea name="comment" rows="4" cols="20"></textarea></td>
			<tr>
			
			<tr align="right">
				<td colspan="2"><input type="button" value="创建" id="btn_submit"></td>
			<tr>
		</table>

	</form>
</html>