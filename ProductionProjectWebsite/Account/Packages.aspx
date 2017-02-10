<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="ProductionProjectWebsite.Account.Packages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            

    </div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                <asp:BoundField DataField="CustFirstName" HeaderText="CustFirstName" SortExpression="CustFirstName" />
                <asp:BoundField DataField="CustLastName" HeaderText="CustLastName" SortExpression="CustLastName" />
                <asp:BoundField DataField="CustAddress" HeaderText="CustAddress" SortExpression="CustAddress" />
                <asp:BoundField DataField="CustCity" HeaderText="CustCity" SortExpression="CustCity" />
                <asp:BoundField DataField="CustProv" HeaderText="CustProv" SortExpression="CustProv" />
                <asp:BoundField DataField="CustPostal" HeaderText="CustPostal" SortExpression="CustPostal" />
                <asp:BoundField DataField="CustCountry" HeaderText="CustCountry" SortExpression="CustCountry" />
                <asp:BoundField DataField="CustHomePhone" HeaderText="CustHomePhone" SortExpression="CustHomePhone" />
                <asp:BoundField DataField="CustBusPhone" HeaderText="CustBusPhone" SortExpression="CustBusPhone" />
                <asp:BoundField DataField="CustEmail" HeaderText="CustEmail" SortExpression="CustEmail" />
                <asp:BoundField DataField="AgentId" HeaderText="AgentId" SortExpression="AgentId" />
                <asp:BoundField DataField="CustUserName" HeaderText="CustUserName" SortExpression="CustUserName" />
                <asp:BoundField DataField="CustPassword" HeaderText="CustPassword" SortExpression="CustPassword" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @original_CustomerId AND [CustFirstName] = @original_CustFirstName AND [CustLastName] = @original_CustLastName AND [CustAddress] = @original_CustAddress AND [CustCity] = @original_CustCity AND [CustProv] = @original_CustProv AND [CustPostal] = @original_CustPostal AND (([CustCountry] = @original_CustCountry) OR ([CustCountry] IS NULL AND @original_CustCountry IS NULL)) AND (([CustHomePhone] = @original_CustHomePhone) OR ([CustHomePhone] IS NULL AND @original_CustHomePhone IS NULL)) AND [CustBusPhone] = @original_CustBusPhone AND [CustEmail] = @original_CustEmail AND (([AgentId] = @original_AgentId) OR ([AgentId] IS NULL AND @original_AgentId IS NULL)) AND [CustUserName] = @original_CustUserName AND [CustPassword] = @original_CustPassword" InsertCommand="INSERT INTO [Customers] ([CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId], [CustUserName], [CustPassword]) VALUES (@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @AgentId, @CustUserName, @CustPassword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customers] ORDER BY [CustomerId]" UpdateCommand="UPDATE [Customers] SET [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CustAddress] = @CustAddress, [CustCity] = @CustCity, [CustProv] = @CustProv, [CustPostal] = @CustPostal, [CustCountry] = @CustCountry, [CustHomePhone] = @CustHomePhone, [CustBusPhone] = @CustBusPhone, [CustEmail] = @CustEmail, [AgentId] = @AgentId, [CustUserName] = @CustUserName, [CustPassword] = @CustPassword WHERE [CustomerId] = @original_CustomerId AND [CustFirstName] = @original_CustFirstName AND [CustLastName] = @original_CustLastName AND [CustAddress] = @original_CustAddress AND [CustCity] = @original_CustCity AND [CustProv] = @original_CustProv AND [CustPostal] = @original_CustPostal AND (([CustCountry] = @original_CustCountry) OR ([CustCountry] IS NULL AND @original_CustCountry IS NULL)) AND (([CustHomePhone] = @original_CustHomePhone) OR ([CustHomePhone] IS NULL AND @original_CustHomePhone IS NULL)) AND [CustBusPhone] = @original_CustBusPhone AND [CustEmail] = @original_CustEmail AND (([AgentId] = @original_AgentId) OR ([AgentId] IS NULL AND @original_AgentId IS NULL)) AND [CustUserName] = @original_CustUserName AND [CustPassword] = @original_CustPassword">
            <DeleteParameters>
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_CustFirstName" Type="String" />
                <asp:Parameter Name="original_CustLastName" Type="String" />
                <asp:Parameter Name="original_CustAddress" Type="String" />
                <asp:Parameter Name="original_CustCity" Type="String" />
                <asp:Parameter Name="original_CustProv" Type="String" />
                <asp:Parameter Name="original_CustPostal" Type="String" />
                <asp:Parameter Name="original_CustCountry" Type="String" />
                <asp:Parameter Name="original_CustHomePhone" Type="String" />
                <asp:Parameter Name="original_CustBusPhone" Type="String" />
                <asp:Parameter Name="original_CustEmail" Type="String" />
                <asp:Parameter Name="original_AgentId" Type="Int32" />
                <asp:Parameter Name="original_CustUserName" Type="String" />
                <asp:Parameter Name="original_CustPassword" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustFirstName" Type="String" />
                <asp:Parameter Name="CustLastName" Type="String" />
                <asp:Parameter Name="CustAddress" Type="String" />
                <asp:Parameter Name="CustCity" Type="String" />
                <asp:Parameter Name="CustProv" Type="String" />
                <asp:Parameter Name="CustPostal" Type="String" />
                <asp:Parameter Name="CustCountry" Type="String" />
                <asp:Parameter Name="CustHomePhone" Type="String" />
                <asp:Parameter Name="CustBusPhone" Type="String" />
                <asp:Parameter Name="CustEmail" Type="String" />
                <asp:Parameter Name="AgentId" Type="Int32" />
                <asp:Parameter Name="CustUserName" Type="String" />
                <asp:Parameter Name="CustPassword" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustFirstName" Type="String" />
                <asp:Parameter Name="CustLastName" Type="String" />
                <asp:Parameter Name="CustAddress" Type="String" />
                <asp:Parameter Name="CustCity" Type="String" />
                <asp:Parameter Name="CustProv" Type="String" />
                <asp:Parameter Name="CustPostal" Type="String" />
                <asp:Parameter Name="CustCountry" Type="String" />
                <asp:Parameter Name="CustHomePhone" Type="String" />
                <asp:Parameter Name="CustBusPhone" Type="String" />
                <asp:Parameter Name="CustEmail" Type="String" />
                <asp:Parameter Name="AgentId" Type="Int32" />
                <asp:Parameter Name="CustUserName" Type="String" />
                <asp:Parameter Name="CustPassword" Type="String" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_CustFirstName" Type="String" />
                <asp:Parameter Name="original_CustLastName" Type="String" />
                <asp:Parameter Name="original_CustAddress" Type="String" />
                <asp:Parameter Name="original_CustCity" Type="String" />
                <asp:Parameter Name="original_CustProv" Type="String" />
                <asp:Parameter Name="original_CustPostal" Type="String" />
                <asp:Parameter Name="original_CustCountry" Type="String" />
                <asp:Parameter Name="original_CustHomePhone" Type="String" />
                <asp:Parameter Name="original_CustBusPhone" Type="String" />
                <asp:Parameter Name="original_CustEmail" Type="String" />
                <asp:Parameter Name="original_AgentId" Type="Int32" />
                <asp:Parameter Name="original_CustUserName" Type="String" />
                <asp:Parameter Name="original_CustPassword" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CreditCardId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="CreditCardId" HeaderText="CreditCardId" InsertVisible="False" ReadOnly="True" SortExpression="CreditCardId" />
                <asp:BoundField DataField="CCName" HeaderText="CCName" SortExpression="CCName" />
                <asp:BoundField DataField="CCNumber" HeaderText="CCNumber" SortExpression="CCNumber" />
                <asp:BoundField DataField="CCExpiry" HeaderText="CCExpiry" SortExpression="CCExpiry" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [CreditCards] WHERE [CreditCardId] = @original_CreditCardId AND [CCName] = @original_CCName AND [CCNumber] = @original_CCNumber AND [CCExpiry] = @original_CCExpiry AND [CustomerId] = @original_CustomerId" InsertCommand="INSERT INTO [CreditCards] ([CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (@CCName, @CCNumber, @CCExpiry, @CustomerId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CreditCards] ORDER BY [CreditCardId]" UpdateCommand="UPDATE [CreditCards] SET [CCName] = @CCName, [CCNumber] = @CCNumber, [CCExpiry] = @CCExpiry, [CustomerId] = @CustomerId WHERE [CreditCardId] = @original_CreditCardId AND [CCName] = @original_CCName AND [CCNumber] = @original_CCNumber AND [CCExpiry] = @original_CCExpiry AND [CustomerId] = @original_CustomerId">
            <DeleteParameters>
                <asp:Parameter Name="original_CreditCardId" Type="Int32" />
                <asp:Parameter Name="original_CCName" Type="String" />
                <asp:Parameter Name="original_CCNumber" Type="String" />
                <asp:Parameter Name="original_CCExpiry" Type="DateTime" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CCName" Type="String" />
                <asp:Parameter Name="CCNumber" Type="String" />
                <asp:Parameter Name="CCExpiry" Type="DateTime" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CCName" Type="String" />
                <asp:Parameter Name="CCNumber" Type="String" />
                <asp:Parameter Name="CCExpiry" Type="DateTime" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="original_CreditCardId" Type="Int32" />
                <asp:Parameter Name="original_CCName" Type="String" />
                <asp:Parameter Name="original_CCNumber" Type="String" />
                <asp:Parameter Name="original_CCExpiry" Type="DateTime" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="BookingsSqlDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
                <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
                <asp:BoundField DataField="BookingNo" HeaderText="BookingNo" SortExpression="BookingNo" />
                <asp:BoundField DataField="TravelerCount" HeaderText="TravelerCount" SortExpression="TravelerCount" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                <asp:BoundField DataField="TripTypeId" HeaderText="TripTypeId" SortExpression="TripTypeId" />
                <asp:BoundField DataField="PackageId" HeaderText="PackageId" SortExpression="PackageId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="BookingsSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Bookings] WHERE [BookingId] = @original_BookingId AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL)) AND (([BookingNo] = @original_BookingNo) OR ([BookingNo] IS NULL AND @original_BookingNo IS NULL)) AND (([TravelerCount] = @original_TravelerCount) OR ([TravelerCount] IS NULL AND @original_TravelerCount IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([TripTypeId] = @original_TripTypeId) OR ([TripTypeId] IS NULL AND @original_TripTypeId IS NULL)) AND (([PackageId] = @original_PackageId) OR ([PackageId] IS NULL AND @original_PackageId IS NULL))" InsertCommand="INSERT INTO [Bookings] ([BookingDate], [BookingNo], [TravelerCount], [CustomerId], [TripTypeId], [PackageId]) VALUES (@BookingDate, @BookingNo, @TravelerCount, @CustomerId, @TripTypeId, @PackageId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bookings] ORDER BY [CustomerId]" UpdateCommand="UPDATE [Bookings] SET [BookingDate] = @BookingDate, [BookingNo] = @BookingNo, [TravelerCount] = @TravelerCount, [CustomerId] = @CustomerId, [TripTypeId] = @TripTypeId, [PackageId] = @PackageId WHERE [BookingId] = @original_BookingId AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL)) AND (([BookingNo] = @original_BookingNo) OR ([BookingNo] IS NULL AND @original_BookingNo IS NULL)) AND (([TravelerCount] = @original_TravelerCount) OR ([TravelerCount] IS NULL AND @original_TravelerCount IS NULL)) AND (([CustomerId] = @original_CustomerId) OR ([CustomerId] IS NULL AND @original_CustomerId IS NULL)) AND (([TripTypeId] = @original_TripTypeId) OR ([TripTypeId] IS NULL AND @original_TripTypeId IS NULL)) AND (([PackageId] = @original_PackageId) OR ([PackageId] IS NULL AND @original_PackageId IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BookingId" Type="Int32" />
                <asp:Parameter Name="original_BookingDate" Type="DateTime" />
                <asp:Parameter Name="original_BookingNo" Type="String" />
                <asp:Parameter Name="original_TravelerCount" Type="Double" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_TripTypeId" Type="String" />
                <asp:Parameter Name="original_PackageId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BookingDate" Type="DateTime" />
                <asp:Parameter Name="BookingNo" Type="String" />
                <asp:Parameter Name="TravelerCount" Type="Double" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="TripTypeId" Type="String" />
                <asp:Parameter Name="PackageId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BookingDate" Type="DateTime" />
                <asp:Parameter Name="BookingNo" Type="String" />
                <asp:Parameter Name="TravelerCount" Type="Double" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
                <asp:Parameter Name="TripTypeId" Type="String" />
                <asp:Parameter Name="PackageId" Type="Int32" />
                <asp:Parameter Name="original_BookingId" Type="Int32" />
                <asp:Parameter Name="original_BookingDate" Type="DateTime" />
                <asp:Parameter Name="original_BookingNo" Type="String" />
                <asp:Parameter Name="original_TravelerCount" Type="Double" />
                <asp:Parameter Name="original_CustomerId" Type="Int32" />
                <asp:Parameter Name="original_TripTypeId" Type="String" />
                <asp:Parameter Name="original_PackageId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PackageId" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PackageId" HeaderText="PackageId" InsertVisible="False" ReadOnly="True" SortExpression="PackageId" />
                <asp:BoundField DataField="PkgName" HeaderText="PkgName" SortExpression="PkgName" />
                <asp:BoundField DataField="PkgStartDate" HeaderText="PkgStartDate" SortExpression="PkgStartDate" />
                <asp:BoundField DataField="PkgEndDate" HeaderText="PkgEndDate" SortExpression="PkgEndDate" />
                <asp:BoundField DataField="PkgDesc" HeaderText="PkgDesc" SortExpression="PkgDesc" />
                <asp:BoundField DataField="PkgBasePrice" HeaderText="PkgBasePrice" SortExpression="PkgBasePrice" />
                <asp:BoundField DataField="PkgAgencyCommission" HeaderText="PkgAgencyCommission" SortExpression="PkgAgencyCommission" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Packages] WHERE [PackageId] = @original_PackageId AND [PkgName] = @original_PkgName AND (([PkgStartDate] = @original_PkgStartDate) OR ([PkgStartDate] IS NULL AND @original_PkgStartDate IS NULL)) AND (([PkgEndDate] = @original_PkgEndDate) OR ([PkgEndDate] IS NULL AND @original_PkgEndDate IS NULL)) AND (([PkgDesc] = @original_PkgDesc) OR ([PkgDesc] IS NULL AND @original_PkgDesc IS NULL)) AND [PkgBasePrice] = @original_PkgBasePrice AND (([PkgAgencyCommission] = @original_PkgAgencyCommission) OR ([PkgAgencyCommission] IS NULL AND @original_PkgAgencyCommission IS NULL))" InsertCommand="INSERT INTO [Packages] ([PkgName], [PkgStartDate], [PkgEndDate], [PkgDesc], [PkgBasePrice], [PkgAgencyCommission]) VALUES (@PkgName, @PkgStartDate, @PkgEndDate, @PkgDesc, @PkgBasePrice, @PkgAgencyCommission)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Packages]" UpdateCommand="UPDATE [Packages] SET [PkgName] = @PkgName, [PkgStartDate] = @PkgStartDate, [PkgEndDate] = @PkgEndDate, [PkgDesc] = @PkgDesc, [PkgBasePrice] = @PkgBasePrice, [PkgAgencyCommission] = @PkgAgencyCommission WHERE [PackageId] = @original_PackageId AND [PkgName] = @original_PkgName AND (([PkgStartDate] = @original_PkgStartDate) OR ([PkgStartDate] IS NULL AND @original_PkgStartDate IS NULL)) AND (([PkgEndDate] = @original_PkgEndDate) OR ([PkgEndDate] IS NULL AND @original_PkgEndDate IS NULL)) AND (([PkgDesc] = @original_PkgDesc) OR ([PkgDesc] IS NULL AND @original_PkgDesc IS NULL)) AND [PkgBasePrice] = @original_PkgBasePrice AND (([PkgAgencyCommission] = @original_PkgAgencyCommission) OR ([PkgAgencyCommission] IS NULL AND @original_PkgAgencyCommission IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PackageId" Type="Int32" />
                <asp:Parameter Name="original_PkgName" Type="String" />
                <asp:Parameter Name="original_PkgStartDate" Type="DateTime" />
                <asp:Parameter Name="original_PkgEndDate" Type="DateTime" />
                <asp:Parameter Name="original_PkgDesc" Type="String" />
                <asp:Parameter Name="original_PkgBasePrice" Type="Decimal" />
                <asp:Parameter Name="original_PkgAgencyCommission" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PkgName" Type="String" />
                <asp:Parameter Name="PkgStartDate" Type="DateTime" />
                <asp:Parameter Name="PkgEndDate" Type="DateTime" />
                <asp:Parameter Name="PkgDesc" Type="String" />
                <asp:Parameter Name="PkgBasePrice" Type="Decimal" />
                <asp:Parameter Name="PkgAgencyCommission" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PkgName" Type="String" />
                <asp:Parameter Name="PkgStartDate" Type="DateTime" />
                <asp:Parameter Name="PkgEndDate" Type="DateTime" />
                <asp:Parameter Name="PkgDesc" Type="String" />
                <asp:Parameter Name="PkgBasePrice" Type="Decimal" />
                <asp:Parameter Name="PkgAgencyCommission" Type="Decimal" />
                <asp:Parameter Name="original_PackageId" Type="Int32" />
                <asp:Parameter Name="original_PkgName" Type="String" />
                <asp:Parameter Name="original_PkgStartDate" Type="DateTime" />
                <asp:Parameter Name="original_PkgEndDate" Type="DateTime" />
                <asp:Parameter Name="original_PkgDesc" Type="String" />
                <asp:Parameter Name="original_PkgBasePrice" Type="Decimal" />
                <asp:Parameter Name="original_PkgAgencyCommission" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView6" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PackageId,ProductSupplierId" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="PackageId" HeaderText="PackageId" ReadOnly="True" SortExpression="PackageId" />
                <asp:BoundField DataField="ProductSupplierId" HeaderText="ProductSupplierId" ReadOnly="True" SortExpression="ProductSupplierId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [Packages_Products_Suppliers] WHERE [PackageId] = @original_PackageId AND [ProductSupplierId] = @original_ProductSupplierId" InsertCommand="INSERT INTO [Packages_Products_Suppliers] ([PackageId], [ProductSupplierId]) VALUES (@PackageId, @ProductSupplierId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Packages_Products_Suppliers]">
            <DeleteParameters>
                <asp:Parameter Name="original_PackageId" Type="Int32" />
                <asp:Parameter Name="original_ProductSupplierId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PackageId" Type="Int32" />
                <asp:Parameter Name="ProductSupplierId" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
