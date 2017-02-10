<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProductionProjectWebsite.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   
    <link href="../Content/palette.css" rel="stylesheet" />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="jumbotron" style="margin-left: 0px">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Register a New Account!</h1>
      
    </div>
    <div class="form-horizontal">
        
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="First Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                
                <asp:TextBox runat="server" ID="txtFirstName" MaxLength="25" CssClass="form-control"  />
                
                <asp:RequiredFieldValidator ID="FirstNameValid" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="FirstNameRegExValid" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Last Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtLastName" MaxLength="25" CssClass="form-control" ForeColor="Black" />
                
                <asp:RequiredFieldValidator ID="LastNameValid" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last Name is Required!" ToolTip="This is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="LastNameRegexValid" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last name must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Address" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" MaxLength="75" ForeColor="Black" />
                <asp:RequiredFieldValidator ID="AddressValid" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address is Required!" ToolTip="Address is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="City" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtCity" MaxLength="50" CssClass="form-control" Width="1043px" />
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is Required!" ToolTip="Where you live?" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Province" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF">Province</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlProv" style="color:black" runat="server" Height="40px" Width="296px">
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>BC</asp:ListItem>
                    <asp:ListItem>MB</asp:ListItem>
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>NL</asp:ListItem>
                    <asp:ListItem>NS</asp:ListItem>
                    <asp:ListItem>NT</asp:ListItem>
                    <asp:ListItem>NU</asp:ListItem>
                    <asp:ListItem>ON</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>QC</asp:ListItem>
                    <asp:ListItem>SK</asp:ListItem>
                    <asp:ListItem>YT</asp:ListItem>
                </asp:DropDownList>
                
               
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Postal Code" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="7" ID="txtPostal" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPostal" Display="Dynamic" ErrorMessage="Postal Code is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                </div>
            </div>

          <div class="form-group">
            <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Country" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="txtCountry" CssClass="form-control" ForeColor="Black" />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Home Phone" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF" ></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="20" ID="txtHomePhone" CssClass="form-control" />
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtHomePhone" Display="Dynamic" ErrorMessage="Phone must be xxx xxx-xxxx Format Only!" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Business Phone" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtBusPhone" MaxLength="20" CssClass="form-control" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtBusPhone" Display="Dynamic" ErrorMessage="Business Phone must be xxx xxx-xxxx Format Only!" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
                </div>

        </div>
       
        
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email"  Text="Email" CssClass="col-md-2 control-label" Font-Bold="true" ForeColor="Black" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" MaxLength="50" CssClass="form-control" TextMode="Email" />
                
            </div>
        </div>
               <div class="form-group">
            <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="User Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="txtUserName" CssClass="form-control" ForeColor="Black" />
                
                <asp:RequiredFieldValidator ID="UserNameReq" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Username is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <asp:Label ID="lblUser" runat="server" ForeColor="Red" Text="UserName must be Unique!" Visible="False"></asp:Label>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." style="color: #FF0000" />
            &nbsp;</div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." style="color: #FF0000" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." style="color: #FF0000" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" ID="btnRegister" Height="62px" Width="216px" BackColor="#00CC99" BorderColor="Blue" BorderStyle="Inset" BorderWidth="8px" Font-Size="Large" ForeColor="White" style="margin-left: 57; margin-top: 63" />
            </div>
        </div>
    </div>
</asp:Content>
