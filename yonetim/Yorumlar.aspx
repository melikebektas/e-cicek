<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="AspCicekci.yonetim.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; width:1130px; background-color:#2a595a; color:#fff;font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_Arti" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_Arti_Click"   />
            &nbsp; <asp:Button ID="btn_Eksi" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_Eksi_Click"  />
        &nbsp;&nbsp;  Onaysız Yorum Paneli
        </div>  
        <asp:Panel ID="pnl_yorum" runat="server"  ForeColor="Black">   

            <asp:DataList ID="dtOnayli" Width="971px"  runat="server">
                <ItemTemplate> 
                    
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="images/yorum.png" Width="49px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="width: 590px; height: 25px; float: left; background-color: #879EB6;">
                            <asp:Label ID="Label5" runat="server" Text="Yorum No:"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Font-Size="12px" Text='<%# Eval("Yorum_id") %>'></asp:Label>
                            -<asp:Label ID="Label6" runat="server" Text="Cicek No:"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("Cicek_id") %>'></asp:Label>
                            -<asp:Label ID="Label7" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("Kullanici_adi") %>'></asp:Label>
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #B1C0CF;">
                      <asp:Label ID="Label8" runat="server" Text="Yorum:"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorum") %>'></asp:Label>
                        </div>
                        <table class="nav-justified">
                            <tr>
                                
                                <td style="text-align: right; width: 545px;">
                             <a href="yorumOnayla.aspx?Yorum_id=<%# Eval("Yorum_id") %>"><asp:Image ID="Image2" ImageUrl="images/onay.png" runat="server" Height="29px" /></a>
                                </td>
                               
                            </tr>
                        </table>
                    </div>
                </div>
                <div style="width:690px;height:30px;"></div>
            </ItemTemplate>

                
            </asp:DataList>
            </asp:Panel>
        
    </div>
    <div style="height:30px;"></div>
    <div style="height:25px; width:1130px; background-color:#2a595a; color:#fff; font-weight:bolder;">&nbsp;
            <asp:Button ID="btn_ArtiYorum" runat="server" Height="25px" Text="+" Width="25px" style="color:black" OnClick="btn_ArtiYorum_Click"   />
            &nbsp; <asp:Button ID="btn_EksiYorum" runat="server" Height="25px" Text="-" Width="25px" style="color:black" OnClick="btn_EksiYorum_Click" />
        &nbsp;&nbsp; Onaylanan Yorum Paneli
        </div>  
        <asp:Panel ID="pnl_YorumOnayli" runat="server" BackColor="White" ForeColor="White">   

        
        <asp:DataList ID="DataList2" runat="server" Width="971px" BackColor="White">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="58px" ImageUrl="images/yorum.png" Width="49px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="width: 590px; height: 25px; float: left; background-color: #879EB6;">
                            <asp:Label ID="Label5" runat="server" Text="Yorum No:"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Font-Size="12px" Text='<%# Eval("Yorum_id") %>'></asp:Label>
                            -<asp:Label ID="Label6" runat="server" Text="Cicek No:"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("Cicek_id") %>'></asp:Label>
                            -<asp:Label ID="Label7" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("Kullanici_adi") %>'></asp:Label>
                        </div>
                        <div style="width:590px;height:auto;float:left; background-color: #B1C0CF;">
                            <asp:Label ID="Label8" runat="server" Text="Yorum:"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorum") %>'></asp:Label>
                        </div>
                       
                    </div>
                </div>
                <div style="width:690px;height:30px;"></div>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
    <div style="height:30px;"></div>
</asp:Content>
