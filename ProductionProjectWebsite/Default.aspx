<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProductionProjectWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/palette.css" rel="stylesheet" /> 
    <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Welcome to Travel Experts</h1>
      
    </div>

    <div class="row">
        <div class="col-md-4">
           

            <br />
            <asp:Label ID="lblWelcomeLogin" runat="server" ForeColor="White" Text="Hello, " Visible="False" style="font-size: large"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Test List from DB" Visible="False" />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LnkExplorePackages" runat="server" BackColor="#00CC99" style="padding:5px;" BorderColor="Blue" BorderStyle="Inset" ForeColor="White" PostBackUrl="~/Account/BrowsePackages.aspx" Visible="False" BorderWidth="7px" Font-Size="Large">Explore our Packages!</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnCreateAcct" runat="server" BackColor="#00CC99" style="padding:5px;" BorderColor="Blue" BorderStyle="Inset" ForeColor="White" PostBackUrl="~/Account/Register.aspx" Visible="False" BorderWidth="7px" OnClick="btnCreateAcct_Click" Font-Bold="True" Font-Size="Large">Create an Account!</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LnkUpdateInfo" runat="server" BackColor="#00CC99" style="padding:5px;" BorderColor="Blue" BorderStyle="Inset" ForeColor="White" PostBackUrl="~/Update.aspx" Visible="False" BorderWidth="7px" Font-Size="Large">Update Account Info!</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnLoginDefault" runat="server" BackColor="#00CC99" style="padding:5px;" BorderColor="Blue" BorderStyle="Inset" ForeColor="White" PostBackUrl="~/Account/CustomerLogin.aspx" Visible="False" BorderWidth="7px" OnClick="btnCreateAcct_Click" Font-Size="Large">Login to your Account!</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="btnCustomerPackages" runat="server" BackColor="#00CC99" style="padding:5px;" BorderColor="Blue" BorderStyle="Inset" ForeColor="White" PostBackUrl="~/Account/CustomerPackages.aspx" Visible="False" BorderWidth="7px" Font-Size="Large" OnClick="btnCustomerPackages_Click">View Purchase History</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
           

        </div>
        <div class="col-md-4">
            


        </div>
        <div class="col-md-4">
          


        </div>
    </div>

</asp:Content>
