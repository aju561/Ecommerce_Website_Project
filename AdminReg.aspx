<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="Project_1.AdminReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
    .auto-style2 {
        width: 61px;
    }
    .auto-style3 {
        height: 32px;
        width: 61px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table class="w-100">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="\(?\d{3}\)?-? *\d{3}-? *-?\d{4}" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Mismatch"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Register" />
        </td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>



