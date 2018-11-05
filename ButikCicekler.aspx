<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="ButikCicekler.aspx.cs" Inherits="AspCicekci.ButikCicekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="text-align: center"> <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
             <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/>    
            </ItemTemplate>     
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString %>" SelectCommand="SELECT * FROM [OnayliCicek] WHERE ([OnayliKategori] = @OnayliKategori)">
        <SelectParameters>
            <asp:Parameter DefaultValue="butik çiçekler" Name="OnayliKategori" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

       <asp:Panel ID="Panel1" runat="server">

       </asp:Panel>
   </div>
</asp:Content>
