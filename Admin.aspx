<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button3" runat="server" Text="Exit
        " BackColor="Red" BorderColor="White" ForeColor="#FFFF66" OnClick="Button3_Click" />
        <h2><asp:Label ID="Label1" runat="server" Text="Change Account type : " ForeColor="white"></asp:Label></h2>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="user Email"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" placeholder="set to"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Update" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" OnClick="Button1_Click" />
    <br /><br />
     <h2><asp:Label ID="Label2" runat="server" Text="Delete Account By Email : " ForeColor="white"></asp:Label></h2>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="user Email" Width="298px"></asp:TextBox>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Delete" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" OnClick="Button2_Click" />
    <br /><hr /><br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCFFFF"></asp:GridView>
    
</asp:Content>

