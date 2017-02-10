<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CustomerLogin.aspx.cs" Inherits="ProductionProjectWebsite.Account.CustomerLogin" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  <link href="../Content/palette.css" rel="stylesheet" />  
    <div class="jumbotron" style="margin-left: 0px">
        <h1 style="font-size: xx-large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Please Sign-in!</h1>
      
    </div>

    <div class="row">
        <div class="col-md-4">
           <div>
    <div class="auto-style2">
            <div class="col-md-10" style="left: 0px; top: 0px">
               <span style="font-size: large; color: white; margin-left: 5px">User Name
                </span>
                <asp:TextBox runat="server" MaxLength="25" ID="txtLoginUserName" CssClass="form-control" ForeColor="Black" Width="1013px" />
                
                <asp:RequiredFieldValidator ID="LoginUserNameReq" runat="server" ControlToValidate="txtLoginUserName" Display="Dynamic" ErrorMessage="User Name Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <asp:Label ID="lblLoginUser" runat="server" ForeColor="Red" Text="UserName must be Unique!" Visible="False"></asp:Label>
          
            </div>
            
        </div>
    <div class="auto-style2">
            <div class="col-md-10" style="left: 0px; top: 0px">

            <span style="font-size: large; color: white; margin-left: 5px"> Password
                </span>
            
                <asp:TextBox runat="server" MaxLength="25" ID="Password" TextMode="Password" CssClass="form-control" Width="1014px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." style="color: #FF0000" ID="LoginPassRequiredValid" Display="Dynamic" ForeColor="Red" />
           </div> 

    </div>
           </div>
            &nbsp;<br />
            <br />
            <div class="auto-style2" style="margin-left: 5px" >
            <div class="col-md-10" style="left: 0px; top: 0px">
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" BorderColor="Blue" BorderStyle="Inset" BorderWidth="8px" Font-Bold="True" style="font-family: 'Times New Roman', Times, serif; font-size: large; text-decoration: underline; color: #FFFFFF; background-color: #00CC99" ID="btnLogin" BackColor="#00CC99" ForeColor="White" />
      &nbsp;
    </div></div>

        </div>
    </div>

</asp:Content>
