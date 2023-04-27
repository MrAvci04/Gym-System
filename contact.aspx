<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="contact.css" rel="stylesheet" />
     <asp:Image ID="Image1" runat="server" ImageUrl="img/back.png" Width="100%" Height="150px"></asp:Image>
    <center>
       
         <br /><br /><br /><h1><i > Contact Us </i></h1><br /><br /><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Please Enter You'r Name" CssClass="login"></asp:TextBox><br /><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field , Type Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Please Enter The Message Subject" CssClass="login"></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field , Type The Subject" ForeColor="Red"></asp:RequiredFieldValidator>
         <br /><br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Please Enter The Content" CssClass="login" TextMode="MultiLine" Height="300"></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field , Type Your Message" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         <asp:Label ID="Label1" runat="server" Text=" " ForeColor="Green"></asp:Label>
         <br />
    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="but" OnClick="Button1_Click"></asp:Button><asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="but" OnClick="Button2_Click"></asp:Button>
    </center>
</asp:Content>

