<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome-admin.aspx.cs" Inherits="EMS201724112144.Welcome_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
    <style type="text/css">
       body{
            background:url("img/background/bg1.jpg") no-repeat center center fixed;
            background-size:cover;
            z-index:1;
            overflow:hidden;
        }

    </style>
</head>
<body >
     <form id="form1" runat="server">
        <div class="container">
            <div class="card">

                <div class="card bg-secondary text-white">
                   <h2 class="text-center"> 设备管理及查询系统</h2><br />
                    <br />
                </div>

                <div>
                    <a href="Welcome-admin.aspx">首页 </a>&nbsp;&nbsp;&nbsp; <a href="Equipment-admin.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="Department-admin.aspx">部门管理&nbsp;</a>&nbsp; <a href="Employee-admin.aspx">员工管理</a>&nbsp; <a href="Default.aspx">退出</a><br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                </div>

                <div class="card bg-secondary text-white">
                    <h2 class="text-center">网络应用开发实训</h2>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
