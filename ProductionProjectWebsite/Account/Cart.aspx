<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ProductionProjectWebsite.Account.Cart" %>
<asp:content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron" style="margin-left: 0px">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Lets Travel!</h1>
      
    </div>


        <span class="auto-style1">Your Shopping Cart</span><br />
        <asp:ListBox ID="ListBox2" runat="server" style="color: Black" CssClass="auto-style2" Height="143px" Width="300px"></asp:ListBox>
        <br />
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCost" runat="server" CssClass="auto-style3" Text="Total Cost:"></asp:Label>
                    </strong></td>
                <td><strong>
                    <asp:Label ID="lblTotalCost" runat="server"></asp:Label>
                    </strong></td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnToCheckout" runat="server" Text="Continue to Checkout" BackColor="#00CC99" BorderColor="Blue" BorderStyle="Inset" CausesValidation="False" ForeColor="White" OnClick="btnToCheckout_Click" BorderWidth="8px" style="padding:5px;" Font-Size="Large" />
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Transaction" BackColor="#00CC99" BorderColor="Blue" BorderStyle="Inset" CausesValidation="False" ForeColor="White" OnClick="btnCancel_Click" BorderWidth="8px" style="padding:5px;" Font-Size="Large" />
</asp:content>
