<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>练习1</title>
</head>
<body> 
	<center>
	<form action="" method="post">
		<table width="1000px" height="100px" style="border: 1px solid #ccc;">
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">招聘对象</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="行业客户经理" name="text" size="20"/>
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">招聘人数</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="2" name="text" size="3"/>人
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">工作地点</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="上海" name="text"/>
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">工资待遇</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="面议" name="text" size="3"/>
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">发布日期</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="2005-12-18" name="text"/>
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">有效期限</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<input type="text" placeholder="20" name="text" size="3"/>天
				</td>
			</tr>
			<tr>
				<td width="100px" style="border: 1px solid #ccc;">招聘要求</td>
				<td width="400px" style="border: 1px solid #ccc;">
					<div id="editor">
						<p>岗位职责:</p>
						<p>1.负责金融、电信、军工、电力、交通、能源教育、政府、企业用户等行业(其中之一)大客户端"的销售,对客户销售指标负责; .</p>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="确定">&nbsp;
					<input type="submit" value="取消">
				</td>
			</tr>
		</table>
	</form>
	</center>
	
	<!-- z注意，只需要引进JS，无需要引用任何CSS -->
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script>
	//把window.wangEditor的值赋值给变量E
 		var E=window.wangEditor
 	//把 new E('#editor')的值赋给变量editor
 		var editor=new E('#editor')
		//或者如下
//		var editor = new E( document.getElementById('editor') )
	//此处使用create创建富文本框
        editor.create()
	</script>
</body>
</html>