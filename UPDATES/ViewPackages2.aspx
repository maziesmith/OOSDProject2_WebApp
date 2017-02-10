<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPackages2.aspx.cs" Inherits="ProductionProjectWebsite.Account.ViewPackages2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
