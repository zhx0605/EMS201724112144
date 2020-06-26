<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Equipment.aspx.cs" Inherits="EMS201724112144.Equipment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <style type="text/css">
        .imgwh{ width:180px; height:100px;}
                
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
        
                
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div style="text-align: center"><a href="Welcome.aspx">首页 </a>&nbsp;&nbsp;&nbsp; <a href="Equipment.aspx">设备管理</a>&nbsp;&nbsp;&nbsp;<a href="Department.aspx">部门管理</a>&nbsp;&nbsp; <a href="Employee.aspx">员工管理</a>&nbsp; <a href="Default.aspx">退出</a><br /></div>
            <div class="auto-style2">
            设备查询<colspan="2" style="text-align: left">
            <br />
            查询条件：</div>
          <div>  <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>设备编号</asp:ListItem>
                        <asp:ListItem>设备名称</asp:ListItem>
                        <asp:ListItem>购入日期(年)</asp:ListItem>
                        <asp:ListItem>存放位置</asp:ListItem>
                        <asp:ListItem>设备负责人姓名</asp:ListItem>
                        <asp:ListItem>设备负责人编号</asp:ListItem>
                        </asp:RadioButtonList>
            </div>
                        
                         <colspan="2">查询信息：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        
                        
                    

                    <style="text-align: center" class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="  查询  " OnClick="Button1_Click" />
                    
                    <style="text-align: center" class="auto-style4">
                        <asp:Button ID="Button2" runat="server" Text="  清空  " OnClick="Button2_Click" />
                       </style>
                
                    <style="text-align: center" class="auto-style5">查询结果：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></style>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    
                
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Equipment] WHERE [Eqpld] = @Eqpld" InsertCommand="INSERT INTO [Equipment] ([Eqpld], [EqpName], [EqpSpecification], [EqpImg], [EqpPrice], [DateOfPurchase], [Position], [EmpId]) VALUES (@Eqpld, @EqpName, @EqpSpecification, @EqpImg, @EqpPrice, @DateOfPurchase, @Position, @EmpId)" SelectCommand="SELECT * FROM [Equipment]" UpdateCommand="UPDATE [Equipment] SET [EqpName] = @EqpName, [EqpSpecification] = @EqpSpecification, [EqpImg] = @EqpImg, [EqpPrice] = @EqpPrice, [DateOfPurchase] = @DateOfPurchase, [Position] = @Position, [EmpId] = @EmpId WHERE [Eqpld] = @Eqpld">
                <DeleteParameters>
                    <asp:Parameter Name="Eqpld" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Eqpld" Type="String" />
                    <asp:Parameter Name="EqpName" Type="String" />
                    <asp:Parameter Name="EqpSpecification" Type="String" />
                    <asp:Parameter Name="EqpImg" Type="String" />
                    <asp:Parameter Name="EqpPrice" Type="Double" />
                    <asp:Parameter Name="DateOfPurchase" Type="DateTime" />
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EqpName" Type="String" />
                    <asp:Parameter Name="EqpSpecification" Type="String" />
                    <asp:Parameter Name="EqpImg" Type="String" />
                    <asp:Parameter Name="EqpPrice" Type="Double" />
                    <asp:Parameter Name="DateOfPurchase" Type="DateTime" />
                    <asp:Parameter Name="Position" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="Eqpld" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Eqpld" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <tr style="background-color:#FFF8DC;">
                                    <td>
                                        <asp:Label ID="EqpldLabel" runat="server" Text='<%# Eval("Eqpld") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpNameLabel" runat="server" Text='<%# Eval("EqpName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpSpecificationLabel" runat="server" Text='<%# Eval("EqpSpecification") %>' />
                                    </td>
                                    <td>
                                        <asp:Image ID="EqpImage1" runat="server" CssClass="imgwh" ImageUrl='<%# Eval("EqpImg") %>'/>
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpPriceLabel" runat="server" Text='<%# Eval("EqpPrice") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="DateOfPurchaseLabel" runat="server" Text='<%# Eval("DateOfPurchase") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
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
                                        <asp:Label ID="EqpldLabel1" runat="server" Text='<%# Eval("Eqpld") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpNameTextBox" runat="server" Text='<%# Bind("EqpName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpSpecificationTextBox" runat="server" Text='<%# Bind("EqpSpecification") %>' />
                                    </td>
                                    <td>
                                        <asp:Image ID="EqpImage1" runat="server" CssClass="imgwh" ImageUrl='<%# Eval("EqpImg") %>'/>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpPriceTextBox" runat="server" Text='<%# Bind("EqpPrice") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="DateOfPurchaseTextBox" runat="server" Text='<%# Bind("DateOfPurchase") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
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
                                        <asp:TextBox ID="EqpldTextBox" runat="server" Text='<%# Bind("Eqpld") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpNameTextBox" runat="server" Text='<%# Bind("EqpName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpSpecificationTextBox" runat="server" Text='<%# Bind("EqpSpecification") %>' />
                                    </td>
                                    <td>
                                        <asp:Image ID="EqpImage1" runat="server" CssClass="imgwh" ImageUrl='<%# Eval("EqpImg") %>'/>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EqpPriceTextBox" runat="server" Text='<%# Bind("EqpPrice") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="DateOfPurchaseTextBox" runat="server" Text='<%# Bind("DateOfPurchase") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color:#DCDCDC;color: #000000;">
                                    <td>
                                        <asp:Label ID="EqpldLabel" runat="server" Text='<%# Eval("Eqpld") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpNameLabel" runat="server" Text='<%# Eval("EqpName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpSpecificationLabel" runat="server" Text='<%# Eval("EqpSpecification") %>' />
                                    </td>
                                    <td>
                                        <asp:Image ID="EqpImage1" runat="server" CssClass="imgwh" ImageUrl='<%# Eval("EqpImg") %>'/>
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpPriceLabel" runat="server" Text='<%# Eval("EqpPrice") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="DateOfPurchaseLabel" runat="server" Text='<%# Eval("DateOfPurchase") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                    <th runat="server">Eqpld</th>
                                                    <th runat="server">EqpName</th>
                                                    <th runat="server">EqpSpecification</th>
                                                    <th runat="server">EqpImg</th>
                                                    <th runat="server">EqpPrice</th>
                                                    <th runat="server">DateOfPurchase</th>
                                                    <th runat="server">Position</th>
                                                    <th runat="server">EmpId</th>
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
                                        <asp:Label ID="EqpldLabel" runat="server" Text='<%# Eval("Eqpld") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpNameLabel" runat="server" Text='<%# Eval("EqpName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpSpecificationLabel" runat="server" Text='<%# Eval("EqpSpecification") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpImgLabel" runat="server" Text='<%# Eval("EqpImg") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EqpPriceLabel" runat="server" Text='<%# Eval("EqpPrice") %>'/>
                                    </td>
                                    <td>
                                        <asp:Label ID="DateOfPurchaseLabel" runat="server" Text='<%# Eval("DateOfPurchase") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("Position") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
            </asp:ListView>
            <br />
                     
            
               
            
            <br />

        </div>
    </form>
</body>
</html>
