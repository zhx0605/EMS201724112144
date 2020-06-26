<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="EMS201724112144.Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 550px;
            border: 2px solid;
        }
        .auto-style2 {
            height: 1px;
        }
        .auto-style3 {
            width: 228px;
        }
        .auto-style5 {
            height: 30px;
        }
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
        <div style="text-align: center">
            <a href="Welcome.aspx">首页 </a>&nbsp;&nbsp;&nbsp; <a href="Equipment.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="Department.aspx">部门管理</a>&nbsp;&nbsp; <a href="Employee.aspx">员工管理</a>&nbsp; <a href="Default.aspx">退出</a><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]" DeleteCommand="DELETE FROM [Department] WHERE [DptId] = @DptId" InsertCommand="INSERT INTO [Department] ([DptId], [DptName], [DptAdmin]) VALUES (@DptId, @DptName, @DptAdmin)" UpdateCommand="UPDATE [Department] SET [DptName] = @DptName, [DptAdmin] = @DptAdmin WHERE [DptId] = @DptId">
                <DeleteParameters>
                    <asp:Parameter Name="DptId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DptId" Type="String" />
                    <asp:Parameter Name="DptName" Type="String" />
                    <asp:Parameter Name="DptAdmin" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DptName" Type="String" />
                    <asp:Parameter Name="DptAdmin" Type="String" />
                    <asp:Parameter Name="DptId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table><td>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="DptId" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptNameLabel" runat="server" Text='<%# Eval("DptName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptAdminLabel" runat="server" Text='<%# Eval("DptAdmin") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="DptIdLabel1" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptNameTextBox" runat="server" Text='<%# Bind("DptName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptAdminTextBox" runat="server" Text='<%# Bind("DptAdmin") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未返回数据。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        </td>
                        <td>
                            <asp:TextBox ID="DptIdTextBox" runat="server" Text='<%# Bind("DptId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptNameTextBox" runat="server" Text='<%# Bind("DptName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptAdminTextBox" runat="server" Text='<%# Bind("DptAdmin") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptNameLabel" runat="server" Text='<%# Eval("DptName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptAdminLabel" runat="server" Text='<%# Eval("DptAdmin") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">DptId</th>
                                        <th runat="server">DptName</th>
                                        <th runat="server">DptAdmin</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptNameLabel" runat="server" Text='<%# Eval("DptName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DptAdminLabel" runat="server" Text='<%# Eval("DptAdmin") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            </td>
            <td>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="3">部门查询</td>
                </tr>
                <tr>
                    <td class="auto-style3">查询条件：</td>
                    <td colspan="2"><asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Height="30px">
                        <asp:ListItem>部门编号</asp:ListItem>
                        <asp:ListItem>部门名字</asp:ListItem>
                        <asp:ListItem>部门主管编号</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style5">查询信息：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="   查询   " OnClick="Button1_Click" />
                    
                        <asp:Button ID="Button2" runat="server" Text="   清空   " OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">查询结果：<asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <div class="text-left">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        </div>
                        <br />
                    </td>
                </tr>
            </table>
                </td>
            </table>
            
            
            <br />
        </div>
    </form>
</body>
</html>
