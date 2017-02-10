<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="TECart.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style4 {
            width: 36%;
        }
        .auto-style5 {
            width: 107px;
        }
        .auto-style6 {
            width: 188px;
        }
        .auto-style7 {
            width: 98px;
        }
        .auto-style8 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Checkout page</h2>
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCustomerId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblBusPhone" runat="server" Text="Business Phone:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtBusPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblNameCredit" runat="server" Text="Name on Credit Card:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtNameCredit" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPaymentType" runat="server" Text="Payment Type: "></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>AMEX</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblCardNumber" runat="server" Text="Card #:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCreditNumber" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblExpiry" runat="server" Text="Expiry Date:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddlMonth" runat="server">
                        <asp:ListItem Value="01">January</asp:ListItem>
                        <asp:ListItem Value="02">February</asp:ListItem>
                        <asp:ListItem Value="03">March</asp:ListItem>
                        <asp:ListItem Value="04">April</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">June</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">August</asp:ListItem>
                        <asp:ListItem Value="09">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="btnTest" runat="server" CausesValidation="False" Height="26px" OnClick="btnTest_Click" Text="Test" />
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
