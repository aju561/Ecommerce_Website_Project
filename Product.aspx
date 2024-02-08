<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project_1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 386px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            width: 386px;
            height: 36px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 36px;
            width: 61px;
        }
        .auto-style6 {
            width: 61px;
        }
        .auto-style7 {
            width: 16px;
        }
        .auto-style8 {
            width: 198px;
        }
        .auto-style9 {
            width: 139px;
        }
        .auto-style10 {
            margin-left: 37px;
        }
        .auto-style11 {
            width: 61px;
            height: 37px;
        }
        .auto-style12 {
            width: 386px;
            height: 37px;
        }
        .auto-style13 {
            height: 37px;
        }
        .auto-style14 {
            width: 16px;
            height: 32px;
        }
        .auto-style15 {
            width: 139px;
            height: 32px;
        }
        .auto-style16 {
            width: 198px;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="428px" Width="375px" />
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15"></td>
                            <td class="auto-style16"></td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15"></td>
                            <td class="auto-style16"></td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15"></td>
                            <td class="auto-style16"></td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="offset-sm-0"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add To Cart" />
                                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" OnClick="Button2_Click" Text="Continue" Width="164px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Cart" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
