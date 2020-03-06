<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>练习2</title>
</head>
<body> 
	<center>
	<form action="" method="post">
		<table width="70%"  style="border: 1px solid #ccc;">
			<tr>
				<td colspan="4" style="text-align: center;background-color:#ccc; border: 1px solid #ccc;">产品管理</td> 
			</tr>
			<tr>
				<td colspan="4" style="border: 1px solid #ccc;" >
				管理导航:&nbsp;&nbsp;&nbsp;&nbsp;产品类别添加 &nbsp; &nbsp;&nbsp;产品信息管理
				</td> 
			</tr>
			<tr>
				<td style="border: 1px solid #ccc; text-align: center;background-color:#ccc;" >
					添加产品内容
				</td> 
				<td style=" text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				产品类别:
				 	<select>
						<option value="0">请选择产品类别--1 </option>
						<option value="1">类别2</option>
						<option value="2">类别3</option>
					</select>
				</td>
				<td style="text-align: right;">关键字搜索</td>
				<td style="border: 1px solid #ccc;">
					<input type="text" />&nbsp;&nbsp;
					<input type="submit" value="搜索">
				</td>
			</tr>
			<tr>
				<td style="background-color: #ccc;text-align: center;" colspan="1">中文产品列表</td> 
			</tr>
			<tr>
				<td style=" text-align: right;background-color: #ccc;">选择语言:</td>
				<td colspan="3">中文</td> 
			</tr>
			<tr>
				<td style="background-color: #ccc; text-align: right;">产品分类:</td>
				<td> YSI水质分析仪 ( wQs )
					<select>
						<option value="0">YSI水质分析仪 ( wQs ) </option>
						<option value="1">YSI水质分析仪 ( wQs )</option>
						<option value="2">YSI水质分析仪 ( wQs )</option>
					</select>
				</td>
				<td style="background-color: #ccc; text-align: right;">发布日期: </td>
				<td style="border: 1px solid #ccc;">2006-12-6</td>
			</tr>
			<tr>
				<td style="background-color: #ccc; text-align: right;">产品名称: </td>
				<td> 
					<input type="text" value=" YSI Level Scout水位跟踪者">
				</td>
				<td style="background-color: #ccc; text-align: right;">附件名称:</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td style="background-color: #ccc; text-align: right;">添加附件: </td>
				<td>
					<input type="text" value="">
				</td>
				<td style="background-color: #ccc;"></td>
				<td>
					<input type="submit" value="删除">&nbsp;
					<input type="submit" value="复原">&nbsp;
					<input type="submit" value="查看"> 
				</td>
			</tr>
			<tr>
				<td style=" text-align: right;background-color: #ccc;">简要介绍:<br>
				<br> (少于800个字)</td>
				<td>
					发布日期: 2006年12月6日 <br>
					当前状态:热销产品<br>
					技术支持 :完全支持
				</td>
				<td style="background-color: #ccc;text-align: right;">添加产品介绍图片</td>
				<td>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;background-color: #ccc;">产品内容</td>
			</tr>
			<tr>
				<td colspan="4">
					<div id="editor">
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center;">
					<input type="submit" value="修改产品内容">
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
	
 		//1、显示菜单：字体fontName，字号fontSize，斜体italic，下划线underline，
		 //删除线strikeThrough，文字颜色foreColor，背景颜色backColor，插入图片image
 		 // 自定义菜单配置 
 	    editor.customConfig.menus = [  
 	        'fontName',//字体
 	        'fontSize',
 	        'underline',
 	        'italic',//倾斜
 	        'strikeThrough',
 	        'backColor',
 	        'image',
 	        'foreColor',//文字颜色 
 	    ];
	
 		//2、颜色建议自己设定8个颜色
 		 //  自定义配置颜色(字体颜色、背景色) 
 	    editor.customConfig.colors=[
 	    	'rgba(0,0,0,0.4)',
 	    	'blue',
 	    	'red',
 	    	'yellow',
 	    	'#ccc',
 	    	'pink',
 	    	'orange',
 	    	'skyblue'
 	    ];
 		 //复制过滤掉样式和图片
 		 // 关闭掉粘贴样式(true是过滤样式，false是原来样式) 
    	editor.customConfig.pasteFilterStyle = true;
    	//忽略粘贴内容中的图片(true只粘贴文字不粘贴图片)
        editor.customConfig.pasteIgnoreImg = true;
    	
        //3、把文件上传的后台代码放入，和前端关联起来
     // 上传图片到服务器(处理上传的后台代码)
        editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload';
     	// 隐藏“网络图片”菜单(true是显示--默认，false隐藏)
        editor.customConfig.showLinkImg = false;
     	// 将每张图片大小限制为 3M(单位为字节)
        editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
     	// 限制一次最多能传几张图片，默认为 10000 张（即不限制），需要限制可自己配置
    	// 限制一次最多上传 5 张图片
    	editor.customConfig.uploadImgMaxLength = 5;
     	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
     	editor.customConfig.uploadImgHooks = {
    		// 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
        	// （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
        	// 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
        	customInsert: function (insertImg, result, editor) {
            	// insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
            	// 举例：假如上传图片成功后，服务器端返回的是 [url,url,...] 这种格式，即可这样插入图片：
            	for(var i in result){// result 必须是一个 JSON 格式字符串！！！否则报错
            		insertImg('${pageContext.request.contextPath}/static/file/'+result[i]);
            	}
        	}
        }
	//此处使用create创建富文本框
        editor.create()
	</script>
</body>
</html>