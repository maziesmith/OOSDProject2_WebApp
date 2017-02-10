<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProductionProjectWebsite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Travel Experts Inc.</h3>
    <address>
        1301 16 Ave NW,  <br />
        Calgary, AB<br />
        T2M 0L4 <br />
        1 877-284-7248 <br />
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@travelexperts.ca">Support@travelexperts.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@travelexperts.ca">Marketing@<a href="mailto:Support@travelexperts.ca">travelexperts</a>.com</a>
    </address>
</asp:Content>
