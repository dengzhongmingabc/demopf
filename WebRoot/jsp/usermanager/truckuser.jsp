<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="../../extjs/resources/css/ext-all.css" />	
	<script type="text/javascript" src="../../extjs/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="../../extjs/ext-all.js"></script>
	<link rel="stylesheet" type="text/css" href="../../css/icons.css"/>
	<script type="text/javascript" src="../../kindeditor/kindeditor.js"></script> 
	<script type="text/javascript" src="truckuser.js"></script>	
	<script type="text/javascript">
		function test(url){
			Ext.Ajax.request({url:'../../sys/user/existsInUserPermissions.action', sync:true, params : {requestpath:url},method:'post',type:'json',  success:function(result, request){
				var responseObj =  Ext.decode(result.responseText);
				if(responseObj.forbidden!=null&&responseObj.forbidden){
					alert(1);
					return false;
				}else{
					alert(2);
					return true;
				}
			}});
		}
	</script>
	<style>
        .x-grid-cell-topic b {
            display: block;
        }
        .x-grid-cell-topic .x-grid-cell-inner {
            white-space: normal;
        }
        .x-grid-cell-topic a {
            color: #385F95;
            text-decoration: none;
        }
        .x-grid-cell-topic a:hover {
            text-decoration:underline;
        }
		.x-grid-cell-topic .x-grid-cell-innerf {
			padding: 5px;
		}
		.x-grid-rowbody {
	        padding: 0 5px 5px 5px;
		}
    	.down{
       	background:url(../../img/down.gif) right  no-repeat;
        }
        .up{
       	background:url(../../img/down1.gif) right  no-repeat;
        		}
		.search{
       	background:url(../../img/search.jpg) right  no-repeat;
        		}
    	.add{
       	background:url(../../img/add.png) right  no-repeat;
        }
        .edit{
       	background:url(../../img/edit.png) right  no-repeat;
        		}
        .del {
        	background-image: url(../../img/del2.png) !important;
		}
		.flush {
        	background-image: url(../../img/icon/516080.png) !important;
		}
		.dtl {
        	background-image: url(../../img/icon/1711_1.png) !important;
		}
		.lock {
        	background-image: url(../../exticons/lock/lock.png) !important;
		}
		.unlock {
        	background-image: url(../../exticons/lock/lock_open.png) !important;
		}
		
		.check {
        	background-image: url(../../exticons/brick_go.png) !important;
		}
		.x-action-col-cell img.icon-lock {
			background-image: url("../../exticons/lock/lock.png");
			}
			.x-action-col-cell img.icon-lock_open {
			    background-image: url("../../exticons/lock/lock_open.png");
			}
			
			.x-btn-text{
 font-size:15px;    
}  
    </style>

<body>
 <div id="btsAlarm-grid"></div>

</body>
</html>