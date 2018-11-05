<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsal/Bayi.Master" AutoEventWireup="true" CodeBehind="Raporlama.aspx.cs" Inherits="AspCicekci.kurumsal.Raporlama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link href="StyleSheet1.css" rel="stylesheet" />
     <p>
        
    <br />
</p>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="oval" style="z-index: 1; position: absolute; top: 228px; left: 281px; height: 17px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Kullanıcı adı boş geçilemez" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server" style="z-index: 1; position: absolute; top: 232px; left: 160px; color: #FFFFFF" Text="Kullanıcı Adı:"></asp:Label>
<p>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="kullanıcı adını mail formatında giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </p>
    <p>
        &nbsp;</p>
    
    <p>
    <asp:Button ID="Button1" runat="server" CssClass="oval" OnClick="Button1_Click" Text="stogu raporla" Height="29px" style="z-index: 1; position: absolute; top: 510px; left: 900px" />
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; width: 465px; height: 56px; position: absolute; top: 500px; left: 235px">
        </asp:GridView>
    </p>
<p>
    <asp:Button ID="Button2" runat="server" CssClass="oval" Text="Excel Aktar" Height="29px" style="z-index: 1; position: absolute; top: 510px; left: 1065px; width: 143px;" OnClick="Button2_Click" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
