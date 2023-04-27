<%@ Page Title="" Language="C#" MasterPageFile="~/Gym.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MajdGym.Home" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="home.css" rel="stylesheet" />
    <center>
       <asp:Image ID="Image1" runat="server" ImageUrl="img/back.png" Width="100%" Height="150px"></asp:Image>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="data" RepeatColumns="2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <ItemTemplate >
                <header>
                    <h2><center><%#Eval("ProgName")%></center></h2>
                    <h5 ">السعر : <%#Eval("ProgPrice")%></h5>
                   <asp:Image runat="server" ImageUrl=<%#Eval("ProgImg") %> CssClass="img"></asp:Image>
                </header>
                <content >
               <h3 ><%#Eval("ProgDesc")%></h3>
             <div class="lf">      <h5>المدرب : <%#Eval("ProgCoach") %></h5>
                  <h5>  <asp:Button runat="server" Text="اشتراك" CssClass="but"></asp:Button></h5></div>
                </content>
                <footer><hr color="black"</footer>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [programms]"></asp:SqlDataSource>
    </center>
</asp:Content>
