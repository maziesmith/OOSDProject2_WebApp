<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Booking.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travel Experts Booking</title>
    <link href="styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        Here are your packages:<br />
        <br />
        <br />
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <div class="rptr-package">
                    <%# Eval("PkgName") %>
                    <br />
                    <hr />
                    <br />
                    <%# Eval("PkgDesc") %>
                    <br />
                    <hr />
                    <br />
                    <%# ShowProducts((int)Eval("PackageId")) %>
                    <br />
                    <div class="package-date">
                        <%# ShortDate((DateTime)Eval("PkgStartDate")) %> - <%# ShortDate((DateTime)Eval("PkgEndDate")) %>
                    </div>
                    <div class="package-price">
                        <%# ConvertPrice((decimal)Eval("PkgBasePrice")) %>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="customer-data">

            <asp:Label ID="CustFirstName" runat="server"></asp:Label>
&nbsp;<asp:Label ID="CustLastName" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustAddress" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustCity" runat="server"></asp:Label>
            ,
            <asp:Label ID="CustProv" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustPostal" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustCountry" runat="server"></asp:Label>

        </div> 
        <br />
        <br />
        <hr />
        <asp:Button ID="btnConfirm" runat="server" PostBackUrl="~/Confirm.aspx" Text="Confirm" />
        <br />

    </form>
</body>
</html>
