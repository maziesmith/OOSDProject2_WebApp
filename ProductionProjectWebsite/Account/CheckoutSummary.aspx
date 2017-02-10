<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CheckoutSummary.aspx.cs" Inherits="ProductionProjectWebsite.Account.CheckoutSummary" %> <%--/* Steve */--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Checkout</h1>
      
    </div>
<style>
body{
    background-attachment:fixed;
}
.rptr-package {
    border: 2px solid black;
    float: left;
    width: 50%;
    padding: 10px;
    margin: 10px;
}
.package-date {
    width:60%;
    float:left;
}
.package-price {
    width:40%;
    float:left;
    text-align:right;
}
.customer-data {
    clear:both;
    width:50%;
    padding:10px;
    margin:10px;
    border:2px solid black;
}
</style>
    
<br /><br />
        <br />
        <br />
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <div class="rptr-package">
                    <%# Eval("PkgName") %>
                    <br />
                    <hr />
                    <%# Eval("PkgDesc") %>
                    <br />
                    <hr />
                    <%#  ShowProducts((int)Eval("PackageId")) %>
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
            <br />
            <asp:Label ID="CustAddress" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustCity" runat="server"></asp:Label>
            ,
            <asp:Label ID="CustProv" runat="server"></asp:Label>
            <br />
            <asp:Label ID="CustPostal" runat="server"></asp:Label>
            &nbsp;<asp:Label ID="CustCountry" runat="server"></asp:Label>
            <br />
            <br />
            Home:
            <asp:Label ID="CustHomePhone" runat="server"></asp:Label>
            <br />
            Business: <asp:Label ID="CustBusPhone" runat="server"></asp:Label>
            <br />
            Email:
            <asp:Label ID="CustEmail" runat="server"></asp:Label>

        </div> 
        <br />
    <div style="text-align:center;">
        Payment information:
        <hr />

        <asp:Label ID="CCName" runat="server"></asp:Label>
        :
        <asp:Label ID="CCNumber" runat="server"></asp:Label>
&nbsp;- exp.
        <asp:Label ID="CCExpiry" runat="server"></asp:Label>
        <hr />
    </div>
        <br />
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CausesValidation="False" OnClick="btnConfirm_Click" BackColor="#00CC99" BorderColor="#0033CC" BorderStyle="Inset" BorderWidth="8px" Height="43px" Width="123px" Font-Size="Large" ForeColor="White" EnableViewState="False" />
        <asp:Button ID="btnConfirmBack" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnConfirmBack_Click" BackColor="#00CC99" BorderColor="#0033CC" BorderStyle="Inset" BorderWidth="8px" Height="43px" Width="123px" Font-Size="Large" ForeColor="White" EnableViewState="False" />
        <br />
    
</asp:Content>
