<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EMS201724112144.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid ;
        }
        .auto-style2 {
            text-align: center;
        }
         body{
            background:url("img/background/bg1.jpg")
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div style="text-align: center">
            <a href="Welcome.aspx">首页 </a>&nbsp;&nbsp;&nbsp; <a href="Equipment.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="Department.aspx">部门管理</a>&nbsp;&nbsp; <a href="Employee.aspx">员工管理</a>&nbsp; <a href="Default.aspx">退出</a><br />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [Password], [EmpName], [EmpPhone], [IsAdmin], [DptId]) VALUES (@EmpId, @Password, @EmpName, @EmpPhone, @IsAdmin, @DptId)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Password] = @Password, [EmpName] = @EmpName, [EmpPhone] = @EmpPhone, [IsAdmin] = @IsAdmin, [DptId] = @DptId WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpPhone" Type="String" />
                    <asp:Parameter Name="IsAdmin" Type="Boolean" />
                    <asp:Parameter Name="DptId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpPhone" Type="String" />
                    <asp:Parameter Name="IsAdmin" Type="Boolean" />
                    <asp:Parameter Name="DptId" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFFFFF; color: #284775;">
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpPhoneLabel" runat="server" Text='<%# Eval("EmpPhone") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Eval("IsAdmin") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmpPhoneTextBox" runat="server" Text='<%# Bind("EmpPhone") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptIdTextBox" runat="server" Text='<%# Bind("DptId") %>' />
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
                            <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmpPhoneTextBox" runat="server" Text='<%# Bind("EmpPhone") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DptIdTextBox" runat="server" Text='<%# Bind("DptId") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#E0FFFF; color: #333333;">
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpPhoneLabel" runat="server" Text='<%# Eval("EmpPhone") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Eval("IsAdmin") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                        <th runat="server">EmpId</th>
                                        <th runat="server">Password</th>
                                        <th runat="server">EmpName</th>
                                        <th runat="server">EmpPhone</th>
                                        <th runat="server">IsAdmin</th>
                                        <th runat="server">DptId</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
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
                    <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmpPhoneLabel" runat="server" Text='<%# Eval("EmpPhone") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Eval("IsAdmin") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="DptIdLabel" runat="server" Text='<%# Eval("DptId") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">员工查询</td>
                </tr>
                <tr>
                    <td class="auto-style2">查询条件：<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Width="1507px">
                        <asp:ListItem>员工编号</asp:ListItem>
                        <asp:ListItem>员工姓名</asp:ListItem>
                        <asp:ListItem>是否为管理员(True/False)</asp:ListItem>
                        <asp:ListItem>员工所属部门编号</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">查询信息：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="  查询  " />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="  清空  " />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">查询结果：<asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
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
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>