<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsal/Bayi.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="AspCicekci.kurumsal.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="StyleSheet1.css" rel="stylesheet" />
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView2" runat="server" CssClass="oval" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="z-index: 1; width: 876px; height: 268px; position: absolute; top: 389px; left: 338px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Onay_durumu" HeaderText="Onay_durumu" SortExpression="Onay_durumu" />
            <asp:BoundField DataField="Kullanici_adi" HeaderText="Kullanici_adi" SortExpression="Kullanici_adi" />
            <asp:BoundField DataField="Yorum" HeaderText="Yorum" SortExpression="Yorum" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CICEKCIMConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Onay_durumu], [Kullanici_adi], [Yorum] FROM [Yorum]">
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
