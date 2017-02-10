<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Checkout.aspx.cs" Inherits="ProductionProjectWebsite.Account.Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Checkout</h1>
      
    </div>

    
    <div>
    
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID:" Visible="False"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCustomerId" style="color:Black" runat="server" Visible="False" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtFirstName" MaxLength="15" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegExValidFName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name is Required!" ForeColor="Red" ValidationExpression="^[A-Z][-a-zA-Z]+$" Enabled="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLastName" MaxLength="15" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegExValidLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last name is Required!" ForeColor="Red" ValidationExpression="[a-zA-Z]" Enabled="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" MaxLength="30" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegExValidAddress" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address is Required!" ForeColor="Red" ValidationExpression="[A-Za-z0-9'\.\-\s\,]" EnableViewState="False" Enabled="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCity" MaxLength="15" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProvince" MaxLength="2" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPostalCode" MaxLength="7" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCountry" MaxLength="10" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtHomePhone" MaxLength="15" style="color:Black" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblBusPhone" runat="server" Text="Business Phone:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtBusPhone" runat="server" MaxLength="15" style="color:Black" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="25" style="color:Black" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
    </div>
        <div>
            <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblNameCredit" runat="server" Text="Name on Credit Card:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtNameCredit" style="color:Black" MaxLength="25" runat="server" Width="140px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegExValidCCName" runat="server" ControlToValidate="txtNameCredit" Display="Dynamic" ErrorMessage="Name must contain letters only!" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z .,'-]*$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RegValidNameonCard" runat="server" ControlToValidate="txtNameCredit" Display="Dynamic" ErrorMessage="Name on card is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPaymentType" runat="server" Text="Payment Type: "></asp:Label>
                </td>
                    <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="color:Black" Width="148px">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>AMEX</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
                <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCardNumber" runat="server" Text="Card #:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCreditNumber" style="color:Black" MaxLength="16" runat="server" Width="140px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCreditNumber" Display="Dynamic" ErrorMessage="Card # is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCreditNumber" MaxLength="16" Display="Dynamic" ErrorMessage="Invalid Visa, Mastercard or Amex Number! No dashes or spaces." ForeColor="Red" ValidationExpression="^([0-9]{16})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
                <tr>
                <td class="auto-style5">
                   <asp:Label ID="lblExpiry" runat="server" Text="Expiry Date:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMonth" runat="server" style="color:Black">
                        <asp:ListItem Value="01">January</asp:ListItem>
                        <asp:ListItem Value="02">February</asp:ListItem>
                        <asp:ListItem Value="03">March</asp:ListItem>
                        <asp:ListItem Value="04">April</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">June</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">August</asp:ListItem>
                        <asp:ListItem Value="09">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server" style="color:Black">
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr> 
       </table>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" BackColor="#00CC99" BorderColor="#0033CC" BorderStyle="Inset" BorderWidth="8px" Height="47px" Width="84px" style="margin-top: 22px; margin-left: 154;" Font-Size="Large" ForeColor="White" />
        <br />
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
            </div>
   

    </asp:content>
