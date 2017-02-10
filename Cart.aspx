<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="TECart.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            width: 30%;
        }
        .auto-style5 {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <span class="auto-style1">Your Shopping Cart</span><br />
        <asp:ListBox ID="ListBox2" runat="server" CssClass="auto-style2" Height="143px" Width="215px"></asp:ListBox>
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblCost" runat="server" CssClass="auto-style3" Text="Total Cost:"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="lblTotalCost" runat="server"></asp:Label>
                    </strong></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnToCheckout" runat="server" Text="Continue to Checkout" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
