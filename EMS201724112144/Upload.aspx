<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="EMS201724112144.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <style>
    body{
            background:url("img/background/bg1.jpg") no-repeat center center fixed;
            background-size:cover;
            z-index:1;
            overflow:hidden;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Welcome-admin.aspx">首页 </a>&nbsp;&nbsp;&nbsp; <a href="Equipment-admin.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="Department-admin.aspx">部门管理&nbsp;</a>&nbsp; <a href="Employee-admin.aspx">员工管理</a>&nbsp; <a href="Default.aspx">退出</a><br />
            <h3>请输入该设备编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></h3>
           

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click"  /><br />
            <img id="img" runat="server" src="" style="width:400px;height:400px"/><br />
            
             <asp:Label ID="LabMsg" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        </div>
    </form>
</body>
</html>
