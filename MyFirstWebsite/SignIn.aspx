<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MyFirstWebsite.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link  rel="stylesheet" href="CssStyle/Style1.css"/>
     <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@300;400;700&display=swap" rel="stylesheet">

</head>
<body >
    <form id="form1" runat="server">
      <h3>
          <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
      </h3>
        <div class="form-container">
        <div>
            <h1 class="auto-style1"> Log In page:</h1>
        </div>
        <div style="text-align: center">
            <asp:Label CssClass="label" ID="lblEmail" runat="server" Text="Enter your email:"></asp:Label> 
            
            <asp:TextBox TextMode="Email"  CssClass="input-field" ID="txtEmail" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" ValidationGroup="SIGNIN"></asp:RequiredFieldValidator>

            <br />   
     
            <br />
            <asp:Label CssClass="label" ID="lblPassword" runat="server" Text="Enter your password:"></asp:Label>
            <asp:TextBox CssClass="input-field" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="SIGNIN"></asp:RequiredFieldValidator>
     
            <br />
     
        </div>
        <div style="text-align: center">
            <br />
            <br />
            <asp:Button CssClass="btn btn-primary" ID="btnSignIn"  runat="server" Text="Sign in" OnClick="btnSignIn_Click" ValidationGroup="SIGNIN" />
            <asp:Button CssClass="btn cancel-btn" ID="btnCancel" runat="server" Text="Cancel" Height="26px" />
        &nbsp;<br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ForgotPassword.aspx">Forgot Password?</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
            </div>
    </form>
</body>
</html>
