<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="BrowsePackages.aspx.cs" Inherits="ProductionProjectWebsite.Account.BrowsePackages" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron" style="margin-left: 0px">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Select your Destinations!</h1>
      
    </div>
   
    <div>
        
        <div>
            <p>
            <asp:ListBox ID="ListBox1" runat="server" style="color: Black; position: relative; top: 10px; left: 0px; height: 233px;" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="PkgName" DataValueField="PackageId" Width="280px" ToolTip="Packages!" BackColor="#CCCCFF"></asp:ListBox>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetPackage" TypeName="ProductionProjectWebsite.Account.PackageDB"></asp:ObjectDataSource>
           
                
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <strong>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetPackageDetails" TypeName="ProductionProjectWebsite.Account.PackageDB">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" Name="packageid" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </strong>
            <p>
                &nbsp;</p>
            <p>
                <strong>
            <asp:Button ID="txtBuy" runat="server" Text="Purchase" CssClass="auto-style7" Height="62px" OnClick="txtBuy_Click" Width="140px" BackColor="#00CC99" BorderColor="#0066FF" BorderStyle="Inset" BorderWidth="8px" Font-Size="Large" ForeColor="White" />
            </strong>
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="ObjectDataSource2" Width="246px" ForeColor="#333333" CssClass="auto-style3" style="color: #000000; z-index: 1; width: 246px; height: 227px; position: relative; top: -395px; left: 334px; right: -334px; bottom: 395px;" BackColor="#CCCCFF">
                <EditItemTemplate>
                    Package Name:
                    <asp:TextBox ID="PkgNameTextBox" runat="server" Text='<%# Bind("PkgName") %>' />
                    <br />
                    StartDate:
                    <asp:TextBox ID="PkgStartDateTextBox" runat="server" Text='<%# Bind("PkgStartDate") %>' />
                    <br />
                    EndDate:
                    <asp:TextBox ID="PkgEndDateTextBox" runat="server" Text='<%# Bind("PkgEndDate") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="PkgDescTextBox" runat="server" Text='<%# Bind("PkgDesc") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="PkgBasePriceTextBox" runat="server" Text='<%# Bind("PkgBasePrice") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    PackageId:
                    <asp:TextBox ID="PackageIdTextBox" runat="server" Text='<%# Bind("PackageId") %>' />
                    <br />
                    PkgName:
                    <asp:TextBox ID="PkgNameTextBox0" runat="server" Text='<%# Bind("PkgName") %>' />
                    <br />
                    PkgStartDate:
                    <asp:TextBox ID="PkgStartDateTextBox0" runat="server" Text='<%# Bind("PkgStartDate") %>' />
                    <br />
                    PkgEndDate:
                    <asp:TextBox ID="PkgEndDateTextBox0" runat="server" Text='<%# Bind("PkgEndDate") %>' />
                    <br />
                    PkgDesc:
                    <asp:TextBox ID="PkgDescTextBox0" runat="server" Text='<%# Bind("PkgDesc") %>' />
                    <br />
                    PkgBasePrice:
                    <asp:TextBox ID="PkgBasePriceTextBox0" runat="server" Text='<%# Bind("PkgBasePrice") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <div class="auto-style6">
                        <strong>Package Name:</strong>
                        <asp:Label ID="PkgNameLabel" runat="server" Text='<%# Bind("PkgName") %>' />
                        <br />
                        <strong>
                        <br />
                        StartDate:</strong>
                        <asp:Label ID="PkgStartDateLabel" runat="server" Text='<%# Bind("PkgStartDate", "{0:d}") %>' />
                        <br />
                        <strong>
                        <br />
                        EndDate:</strong>
                        <asp:Label ID="PkgEndDateLabel" runat="server" Text='<%# Bind("PkgEndDate", "{0:d}") %>' />
                        <br />
                        <strong>
                        <br />
                        Description:</strong>
                        <asp:Label ID="PkgDescLabel" runat="server" Text='<%# Bind("PkgDesc") %>' />
                        <br />
                        <strong>
                        <br />
                        Price:</strong>
                        <asp:Label ID="PkgBasePriceLabel" runat="server" Text='<%# Bind("PkgBasePrice", "{0:C}") %>' />
                        <br />
                    </div></ItemTemplate>

    </asp:FormView> </p></div> 
    
    </div>
      
        


        


    </asp:content>
