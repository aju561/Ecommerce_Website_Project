<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View_Bill.aspx.cs" Inherits="Project_1.View_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 96%;
            height: 125px;
        }
        .auto-style7 {
            width: 261px;
            height: 47px;
        }
        .auto-style8 {
            height: 47px;
        }
        .auto-style13 {
            width: 261px;
        }
        .auto-style14 {
            width: 53%;
        }
        .auto-style15 {
            margin-right: 156px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            height: 32px;
            width: 373px;
        }
        .auto-style19 {
            height: 32px;
            width: 252px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="379px" ImageUrl='<%# Eval("Product_Image") %>' Width="361px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style2">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="Product Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="Product Price :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="No Of Quantity :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Total Price : "></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style15" Width="755px">
                        <table class="auto-style14">
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="Label13" runat="server" Font-Size="X-Large" ForeColor="#333333" Text="User Name     :       "></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label14" runat="server" Font-Size="X-Large" ForeColor="#333333"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label15" runat="server" Font-Size="X-Large" ForeColor="#333333" Text="Shipping Address : "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Font-Size="X-Large" ForeColor="#333333"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label11" runat="server" Font-Size="X-Large" ForeColor="#333333" Text="Grand Total : "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Font-Size="X-Large" ForeColor="#333333"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label17" runat="server" Font-Size="X-Large" ForeColor="#333333" Text="Payment : "></asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="#0066FF" OnClick="LinkButton1_Click">Enter Bank Details</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label18" runat="server" Text="Bank Account Number" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label19" runat="server" Text="Balance Amount" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label20" runat="server" Text="Account Type" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style17">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style17">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add A/C And Proceed To Pay" Visible="False" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
