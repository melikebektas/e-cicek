<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="Cicekler1.aspx.cs" Inherits="AspCicekci.Cicekler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center"><asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/>    
            </ItemTemplate>        
    </asp:Repeater>
        <asp:Panel ID="Panel1" runat="server">

        </asp:Panel>

    </div>
</asp:Content>
