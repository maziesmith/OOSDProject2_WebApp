<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="ProductionProjectWebsite.Account.OpenAuthProviders" %>

<div id="socialLoginList">
    
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            

        </ItemTemplate>
        <EmptyDataTemplate>
            
        </EmptyDataTemplate>
    </asp:ListView>
</div>
