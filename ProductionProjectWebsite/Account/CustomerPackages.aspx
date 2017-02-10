<%@ Page Title="View Your Purchase History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerPackages.aspx.cs" Inherits="ProductionProjectWebsite.Account.CustomerPackages" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
        background-attachment:fixed;
        }
        .package-data {
            padding: 15px;
            border-left: 1px solid white;
            border-right: 1px solid white;
        }
        .package-data:nth-child(odd) {
            background-color:#3333ff;
        }
.package-price {
    text-align:right;
}
        .style-totalcharges {
            clear: both;
            border:1px solid #55ff55;
            padding:5px;
        }
</style>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/palette.css" rel="stylesheet" /> 
    <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Welcome to Travel Experts</h1>
    </div>
    Purchase history:<br />
    <br />
    <div>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="package-data">
                <hr />
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
                <div>
                    <div class="package-price">
                        <%# ConvertPrice((decimal)Eval("PkgBasePrice")) %>
                    </div>
                    </div>
                </div>
        </ItemTemplate>
    </asp:Repeater>
        <br />
        <br />
    </div>
    <div style="clear:both;">
        <br />
    </div>
    <div style="clear:both;text-align:right;">
        <span class="style-totalcharges">
            <asp:Label ID="Label1" runat="server" Text="Accumlated Charges: "></asp:Label>
            <asp:Label ID="TotalCharges" runat="server"></asp:Label>
        </span>
        </div>
</asp:Content>