<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Update.aspx.cs" Inherits="ProductionProjectWebsite.Update" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/palette.css" rel="stylesheet" />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
     <div class="jumbotron">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Update Existing Account</h1>
      
    </div>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label ID="UpdateLabel1" runat="server" CssClass="col-md-2 control-label" Text="First Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                
                <asp:TextBox runat="server" ID="txtUpdateFirstName" MaxLength="25" CssClass="form-control" AutoPostBack="True"  />
                
                <asp:RequiredFieldValidator ID="UpdateFirstNameValid" runat="server" ControlToValidate="txtUpdateFirstName" Display="Dynamic" ErrorMessage="First Name is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="UpdateFirstNameRegExValid" runat="server" ControlToValidate="txtUpdateFirstName" Display="Dynamic" ErrorMessage="First Name must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="UpdateLabel2" runat="server" CssClass="col-md-2 control-label" Text="Last Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtUpdateLastName" MaxLength="25" CssClass="form-control" ForeColor="Black" AutoPostBack="True" />
                
                <asp:RequiredFieldValidator ID="UpdateLastNameValid" runat="server" ControlToValidate="txtUpdateLastName" Display="Dynamic" ErrorMessage="Last Name is Required!" ToolTip="This is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="UpdateLastNameRegexValid" runat="server" ControlToValidate="txtUpdateLastName" Display="Dynamic" ErrorMessage="Last name must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="UpdateLabel3" runat="server" CssClass="col-md-2 control-label" Text="Address" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtUpdateAddress" CssClass="form-control" MaxLength="75" ForeColor="Black" />
                <asp:RequiredFieldValidator ID="UpdateAddressValid" runat="server" ControlToValidate="txtUpdateAddress" Display="Dynamic" ErrorMessage="Address is Required!" ToolTip="Address is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="UpdateLabel4" runat="server" CssClass="col-md-2 control-label" Text="City" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtUpdateCity" MaxLength="50" CssClass="form-control" Width="1015px" />
                <asp:RequiredFieldValidator ID="UpdateRequiredFieldValidator1" runat="server" ControlToValidate="txtUpdateCity" Display="Dynamic" ErrorMessage="City is Required!" ToolTip="Where you live?" style="color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="UpdateRegularExpressionValidator5" runat="server" ControlToValidate="txtUpdateCity" Display="Dynamic" ErrorMessage="City must be letters only!" ValidationExpression="^[a-zA-Z]+$" style="color: #FF0000"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="UpdateLabel5" runat="server" CssClass="col-md-2 control-label" Text="Province" ForeColor="Black" Font-Bold="True" style="color: white">Province</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlUpdateProv" runat="server" Height="40px" Width="296px" AutoPostBack="True" ForeColor="Black">
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
            <asp:Label ID="UpdateLabel7" runat="server" CssClass="col-md-2 control-label" Text="Postal Code" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="7" ID="txtUpdatePostal" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="UpdateRequiredFieldValidator2" runat="server" ControlToValidate="txtUpdatePostal" Display="Dynamic" ErrorMessage="Postal Code is Required!" style="color: #FF0000"></asp:RequiredFieldValidator>
                </div>
            </div>

          <div class="form-group">
            <asp:Label ID="UpdateLabel9" runat="server" CssClass="col-md-2 control-label" Text="Country" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="txtUpdateCountry" CssClass="form-control" ForeColor="Black" />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="UpdateLabel6" runat="server" CssClass="col-md-2 control-label" Text="Home Phone" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF" ></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="20" ID="txtUpdateHomePhone" CssClass="form-control" />
                
                <asp:RegularExpressionValidator ID="UpdateRegularExpressionValidator2" runat="server" ControlToValidate="txtUpdateHomePhone" Display="Dynamic" ErrorMessage="Phone must be xxx xxx-xxxx Format Only!" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="UpdateLabel8" runat="server" CssClass="col-md-2 control-label" Text="Business" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtUpdateBusPhone" MaxLength="20" CssClass="form-control" />
                <asp:RegularExpressionValidator ID="UpdateRegularExpressionValidator4" runat="server" ControlToValidate="txtUpdateBusPhone" Display="Dynamic" ErrorMessage="Business Phone must be xxx xxx-xxxx Format Only!" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" style="color: #FF0000"></asp:RegularExpressionValidator>
                
                </div>

        </div>
        <div class="form-group">
            <asp:Label runat="server" Text="Email" CssClass="col-md-2 control-label" Font-Bold="true" ForeColor="Black" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UpdateEmail" MaxLength="50"  CssClass="form-control" TextMode="Email" />
            </div>
        </div>
            <asp:Label ID="UpdateLabel10" runat="server" CssClass="col-md-2 control-label" Text="User Name" ForeColor="Black" Font-Bold="True" style="color: #FFFFFF"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="txtUpdateUserName" CssClass="form-control" ForeColor="Black" />
                
                <asp:RequiredFieldValidator ID="UpdateUserNameReq" runat="server" ControlToValidate="txtUpdateUserName" Display="Dynamic" ErrorMessage="User Name is Required" ForeColor="White" style="color: #FF0000"></asp:RequiredFieldValidator>
                
            </div>
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" MaxLength="25" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." style="color: #FF0000" />
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
    <div style="height:30px;"></div>
            <div> 
                <br />

                <asp:Button runat="server" Text="Update" CssClass="btn btn-default" ID="btnUpdate" Height="52px" Width="146px" BackColor="#00CC99" OnClick="btnUpdate_Click" BorderColor="Blue" BorderStyle="Inset" BorderWidth="6px" style="margin-left: 8; margin-top: 20;" Font-Size="Large" ForeColor="White" />
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblOldCust" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="lblNewCust" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
</asp:Content>
