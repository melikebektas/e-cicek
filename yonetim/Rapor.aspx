<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Rapor.aspx.cs" Inherits="AspCicekci.yonetim.Rapor" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="878px">
            <LocalReport ReportPath="yonetim\Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSet1" />
                </DataSources>
            </LocalReport>
         </rsweb:ReportViewer>
         <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AspCicekci.yonetim.DataSet1TableAdapters.KurumsalUyelerTableAdapter" UpdateMethod="Update">
             <DeleteParameters>
                 <asp:Parameter Name="Original_KKullanici_adi" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="KKullanici_adi" Type="String" />
                 <asp:Parameter Name="Sifre" Type="String" />
                 <asp:Parameter Name="K_soyad" Type="String" />
                 <asp:Parameter Name="K_ad" Type="String" />
                 <asp:Parameter Name="Kurum_ad" Type="String" />
                 <asp:Parameter Name="Vergi_dairesi" Type="String" />
                 <asp:Parameter Name="Vergi_numarasi" Type="String" />
                 <asp:Parameter Name="Adres" Type="String" />
                 <asp:Parameter Name="Telefon" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Sifre" Type="String" />
                 <asp:Parameter Name="K_soyad" Type="String" />
                 <asp:Parameter Name="K_ad" Type="String" />
                 <asp:Parameter Name="Kurum_ad" Type="String" />
                 <asp:Parameter Name="Vergi_dairesi" Type="String" />
                 <asp:Parameter Name="Vergi_numarasi" Type="String" />
                 <asp:Parameter Name="Adres" Type="String" />
                 <asp:Parameter Name="Telefon" Type="String" />
                 <asp:Parameter Name="Original_KKullanici_adi" Type="String" />
             </UpdateParameters>
         </asp:ObjectDataSource>
         <asp:ObjectDataSource ID="ObjectDataSource4" runat="server"></asp:ObjectDataSource>
         <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"></asp:ObjectDataSource>
         <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"></asp:ObjectDataSource>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    </div>
</asp:Content>
