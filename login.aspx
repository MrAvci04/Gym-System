        <%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="log.css" rel="stylesheet" />
    <asp:Image ID="Image1" runat="server" ImageUrl="img/back.png" Width="100%" Height="150px"></asp:Image>
    <div id="log">
        <h1><i>Login Page </i></h1>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Please Enter You'r Email" CssClass="login"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field , Enter You'r E-mail" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BorderColor="#000002" ControlToValidate="TextBox1" ErrorMessage="Invalid E-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
        <br /><br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Please Enter You'r Password" type="password" CssClass="login"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field , Enter You'r Password" ControlToValidate="TextBox2" ForeColor="Red" ></asp:RequiredFieldValidator>
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="but" OnClick="Button1_Click"/><br />
        <asp:Label ID="Label1" runat="server" Text=" " ForeColor="Red"></asp:Label>
        <br /><br /><br />
        <a href="registration.aspx" class="ah">Don't Have An Acoount ? Click Here To Sign Up !</a><br /><br /><br /><br />
        <h6><a href="pass.aspx" class="ah">Porget Your Password ? Click Here To Change</a></h6>
    </div>
</asp:Content>

