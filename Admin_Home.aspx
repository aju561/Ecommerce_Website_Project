<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="Project_1.Admin_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            width: 62px;
        }
        .auto-style3 {
            width: 62px;
        }
        .auto-style4 {
            height: 32px;
            width: 638px;
        }
        .auto-style5 {
            width: 638px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="MANAGE REGISTERED USERS"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Large" ForeColor="Gray" NavigateUrl="~/View_User_Details.aspx">View User Details</asp:HyperLink>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="CATEGORY HANDLING"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="Gray" NavigateUrl="~/Add_Category.aspx">Add Category</asp:HyperLink>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="Gray">Edit Category</asp:HyperLink>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="PRODUCT HANDLING"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large" ForeColor="Gray" NavigateUrl="~/Add Product Details.aspx">Add Product</asp:HyperLink>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Large" ForeColor="Gray">Edit Product</asp:HyperLink>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

