<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderingProduct.aspx.cs" Inherits="Prog2.OrderingProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Externals2.css">
    <title> CS3870 - Fall 2019 - Program2</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <p><a href ="OrderingProduct.aspx"> Order Form </a></p>
    <p><a href ="Default.aspx"> Start Page </a></p>
</head>
<body>
    <h1><u> Web Protocolas, Technologis and Applications </u></h1>
    <h2><i> Nikolai Guenther </i></h2>
    <form id="form1" runat="server">
       
       
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Order ID:"></asp:Label>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="ID cannot be empty!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Price:"></asp:Label>
                        <asp:TextBox ID="txtPrice" runat="server" EnableTheming="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price cannot be empty!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Unit Price must be a positive number!" Font-Size="Small" ForeColor="Red" MinimumValue="0" MaximumValue="10000000" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity cannot be empty!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity must be a non-negative integer!" Font-Italic="False" Font-Size="Small" ForeColor="Red" MinimumValue="0" MaximumValue="1000000000" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="SubTotal:"></asp:Label>
                        <asp:TextBox ID="txtSubTotal" runat="server" ReadOnly="True" style="text-align:right"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Tax:"></asp:Label>
                        <asp:TextBox ID="txtTax" runat="server" ReadOnly="True" style="text-align:right"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="GrandTotal:"></asp:Label>
                        <asp:TextBox ID="txtGrandTotal" runat="server" ReadOnly="True" style="text-align:right"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCompute" runat="server" OnClick="btnCompute_Click" Text="Compute" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
