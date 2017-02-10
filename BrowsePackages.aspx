<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowsePackages.aspx.cs" Inherits="TECart.BrowsePackages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .Title {
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:x-large;
            float:left;
            margin-right: 5%;
            
                
            
        }
        .form {
            position:relative;
            margin-top: 4.9%;
            float:left;
            
        }
        .submit {
            margin-top: 20%;
           

        }


        .auto-style1 {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: x-large;
            float: left;
            margin-right: 5%;
            width: 308px;
            padding-right:0;
            margin-left:22%;
            text-align: center;
        }


        .auto-style2 {
            position: relative;
            margin-top: 5%;
            float: left;
            left: -1px;
            top: 0px;
            width: 273px;
            margin-left:2%;
            text-align: center;
        }


        .auto-style3 {
            font-size: large;
        }


        .auto-style4 {
            margin-left: 40px;
        }


        .auto-style5 {
            text-align: center;
        }
        .submit {
            float:left;
            margin-left:6%;
            margin-top:10%;
            
        }


        .auto-style6 {
            text-align: left;
            width: 313px;
        }


        .auto-style7 {
            font-weight: bold;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 class="auto-style5">Travel Packages</h1>
        <div class="auto-style1">
            <p class="auto-style4">
                <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="PkgName" DataValueField="PackageId" Height="230px" Width="304px"></asp:ListBox>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetPackage" TypeName="TECart.App_Code.PackageDB"></asp:ObjectDataSource>
            </p>
        </div>
        <br />
    
    </div>
        <div class="auto-style2">
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="ObjectDataSource2" Height="152px" Width="246px" ForeColor="#333333" CssClass="auto-style3">
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
                    <asp:TextBox ID="PkgNameTextBox" runat="server" Text='<%# Bind("PkgName") %>' />
                    <br />
                    PkgStartDate:
                    <asp:TextBox ID="PkgStartDateTextBox" runat="server" Text='<%# Bind("PkgStartDate") %>' />
                    <br />
                    PkgEndDate:
                    <asp:TextBox ID="PkgEndDateTextBox" runat="server" Text='<%# Bind("PkgEndDate") %>' />
                    <br />
                    PkgDesc:
                    <asp:TextBox ID="PkgDescTextBox" runat="server" Text='<%# Bind("PkgDesc") %>' />
                    <br />
                    PkgBasePrice:
                    <asp:TextBox ID="PkgBasePriceTextBox" runat="server" Text='<%# Bind("PkgBasePrice") %>' />
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
                    </div>

                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetPackageDetails" TypeName="TECart.App_Code.PackageDB">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" Name="packageid" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <br />
        <div class="submit">
            <strong>
            <asp:Button ID="txtBuy" runat="server" Text="Buy" CssClass="auto-style7" Height="46px" OnClick="txtBuy_Click" Width="76px" />
            </strong>
            </div>
        
       
    </form>
</body>
</html>
