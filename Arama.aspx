<%@ Page Title="" Language="C#" MasterPageFile="~/CicekciSablon.Master" AutoEventWireup="true" CodeBehind="Arama.aspx.cs" Inherits="AspCicekci.Arama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="text-align: center"> <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
         <ItemTemplate>
             <a href="Ozellikler.aspx?OnayliCicek_id=<%#Eval("OnayliCicek_id")%>" />
             
        <img src="<%#Eval("OnayliCicek_resim") %>" alt="<%#Eval("OnayliCicek_resim") %>" id="resimler"/> 
                
            </ItemTemplate>     
    </asp:Repeater>
    
       <br />
       <asp:Panel ID="Panel1" runat="server">

       </asp:Panel>

</div>
</asp:Content>
