<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ViewPackages2.aspx.cs" Inherits="ProductionProjectWebsite.Account.ViewPackages2" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> **Steve Silliker.


    <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Packages</h1>
      
    </div>
    <style type="text/css">
    </style>

   <br />
        <br />
    
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
            <div style="border:2px solid black;padding:10px;width:50%;margin:20px;">
                Package Name: <%# Eval("PkgName") %><br />
                Description: <%# Eval("PkgDesc") %><br />
                From: <%# ShortDate((DateTime)Eval("PkgStartDate")) %> to <%# ShortDate((DateTime)Eval("PkgEndDate")) %><br />
                <br />
                <%# ConvertPrice((decimal)Eval("PkgBasePrice")) %>
            </div>
                
                </ItemTemplate>
        </asp:Repeater>
    
    <br />
    <br />
    
</asp:content>