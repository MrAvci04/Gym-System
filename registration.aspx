<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="registration.css" rel="stylesheet" /> 
    <asp:Image ID="Image1" runat="server" ImageUrl="img/back.png" Width="100%" Height="150px"></asp:Image>
    <div id="log">
        <h1><i>Sign Up Page </i></h1>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Please Enter You'r Name" CssClass="login" width="70%"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field , Enter You'r Name" ControlToValidate="TextBox1" ForeColor="Red" ></asp:RequiredFieldValidator>
    <br />
        <br /><br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Please Enter You'r E-mail" type="text" CssClass="login" width="70%"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field , Enter You'r E-mail" ControlToValidate="TextBox2" ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BorderColor="Red" ControlToValidate="TextBox2" ErrorMessage="Invalid E-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text=" " ForeColor="Red"></asp:Label>
        <br /><br />
        
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Please Enter You'r Password" type="password" CssClass="login" width="70%"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field , Enter You'r Password" ControlToValidate="TextBox3" ForeColor="Red" ></asp:RequiredFieldValidator><br /><br /><br />
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Please Re Enter You'r Password" type="password" CssClass="login" width="70%"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field , reEnter You'r Password" ControlToValidate="TextBox5" ForeColor="Red" ></asp:RequiredFieldValidator>
       <br /> <asp:Label ID="Label1" runat="server" Text=" " forecolor="red"></asp:Label>
        <br /><br /><br />
        <asp:DropDownList runat="server" CssClass="login" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" id="drop" width="72%"></asp:DropDownList> <br /><br /><br /><br /><br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Please Enter You'r Answer" type="text" CssClass="login" width="70%"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="but" OnClick="Button1_Click" />
        <br /><br /><br /><br />
        </div>
</asp:Content>

