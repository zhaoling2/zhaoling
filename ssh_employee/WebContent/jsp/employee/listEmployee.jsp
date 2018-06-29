<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>
</head>
<body>
	<table border="0" width="900px">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">员工管理</td>
		</tr>
		<tr>
			<td align="right">
			      <a href="employee_saveUI.action">添加</a>
			</td>
		</tr>
	</table>
	<br />
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<th width="300">员工编号</th>
				<th width="300">员工姓名</th>
				<th width="100">性别</th>
				<th width="500">出生日期</th>
				<th width="500">入职时间</th>
				<th width="300">所在部门</th>
				<th width="300">编辑</th>
				<th width="300">删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="e">
				<tr>
					<td align="center"><s:property value="#e.eno" /></td>
					<td align="center"><s:property value="#e.ename" /></td>
					<td align="center"><s:property value="#e.sex" /></td>
					<td align="center"><s:date format="yyyy-MM-dd" name="#e.birthday" /></td>
					<td align="center"><s:date name="#e.joinDay" format="yyyy-MM-dd" /></td>
					<td align="center"><s:property value="#e.department.dname" /></td>
					<td align="center">
					    <a href="employee_edit.action?eid=<s:property value="#e.eid"/>">
					       <img src="<%=basePath %>images/edit.png" />
					    </a>
					</td>
					<td align="center">
					    <a href="employee_delete.action?eid=<s:property value="#e.eid"/>">
					       <img src="<%=basePath %>images/trash.gif" />
					    </a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br/>
	<table border="0" cellspacing="0" cellpadding="0" width="900px">
		<tr>
			<td align="right">
			<span>
			     第<s:property value="currentPage" />/<s:property value="pageSize" />页
			</span>
			&nbsp;&nbsp; 
			<span>
			    总记录数：<s:property value="totalSize" />&nbsp;&nbsp;
			    每页显示:<s:property value="pageCount" /></span>&nbsp;&nbsp; 
			<span>
			   <s:if test="currentPage != 1">
					<a href="employee_findAll.action?currentPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="employee_findAll.action?currentPage=<s:property value="currentPage-1"/>">[上一页]</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currentPage != pageSize">
					<a href="employee_findAll.action?currentPage=<s:property value="currentPage+1"/>">[下一页]</a>&nbsp;&nbsp;
                    <a href="employee_findAll.action?currentPage=<s:property value="pageSize"/>">[尾页]</a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
</body>
</html>