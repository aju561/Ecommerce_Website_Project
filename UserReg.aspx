<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="Project_1.UserReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
    .auto-style2 {
        margin-bottom: 31;
    }
    .auto-style3 {
        width: 61px;
    }
    .auto-style4 {
        height: 32px;
        width: 61px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Between 18 And 50" MaximumValue="85" MinimumValue="18" ControlToValidate="TextBox2" Type="Integer"></asp:RangeValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="\(?\d{3}\)?-? *\d{3}-? *-?\d{4}" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select One Option" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Pincode"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Pincode" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Telegana</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Choose State" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label9" runat="server" Text="District"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="District Required" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label13" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="Password Mismatch"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Register" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label12" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

