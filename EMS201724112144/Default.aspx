<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EMS201724112144.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录界面</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no"/>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link href="iconfont/style.css" type="text/css" rel="stylesheet"/>
<style>
	body{color:#fff; font-family:"微软雅黑"; font-size:14px;}
	.wrap1{position:absolute; top:0; right:0; bottom:0; left:0; margin:auto }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(img/background/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	.form-group{position:relative;}
	.login_btn{display:block; background:#3872f6; color:#fff; font-size:15px; width:100%; line-height:50px; border-radius:3px; border:none; }
	.login_input{width:100%; border:1px solid #3872f6; border-radius:3px; line-height:40px; padding:2px 5px 2px 30px; background:none;}
	.icon_font{position:absolute; bottom:15px; left:10px; font-size:18px; color:#3872f6;}
	.font16{font-size:16px;}
	.mg-t20{margin-top:20px;}
	@media (min-width:200px){.pd-xs-20{padding:20px;}}
	@media (min-width:768px){.pd-sm-50{padding:50px;}}
	#grad {
	  background: -webkit-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Safari 5.1 - 6.0 */
	  background: -o-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Opera 11.1 - 12.0 */
	  background: -moz-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Firefox 3.6 - 15 */
	  background: linear-gradient(#4990c1, #52a3d2, #6186a3); /* 标准的语法 */
	}
    .auto-style1 {
        position: relative;
        text-align: center;
        margin-bottom: 1rem;
    }

</style>

</head>

<body style="background:url(img/background/bg.jpg)">
    <form id="form1" runat="server">
    <div class="container wrap1" style="height:450px;">
            <h2 class="mg-b20 text-center">设备保管及查询系统登录页面</h2>
            <div class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
                <p class="text-center font16">用户登录</p>
                
                      <div class="auto-style1">
                                <label for ="Txtid">账号：</label>
                                <asp:TextBox ID="Txtid" runat="server"></asp:TextBox><br />
                                
                            </div>
                    <div class="form-group mg-t20" style="text-align: center">
                        
                                <label for ="TxtPsd">密码：</label>
                                <asp:TextBox ID="TxtPsd" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                                <!--<label for="RadioButtonList">角色：</label>-->
                                <div class="text-center">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="True">管理员</asp:ListItem>
                                    <asp:ListItem Value="False">一般员工</asp:ListItem>
                                </asp:RadioButtonList>
                                </div>
                            </div>
                            
                            
                                <asp:Button ID="Button1" runat="server" Text="登录" class="card bg-secondary text-white" OnClick="Button1_Click"/>
                            
                        </div>
              
        </div><!--row end-->
    <!--container end-->
     </form>
</body>
</html>

