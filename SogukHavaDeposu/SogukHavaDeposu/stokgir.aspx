<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stokgir.aspx.cs" Inherits="SogukHavaDeposu.stokgir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .auto-style1 {
            width: 100%;
        }

        .auto-style5 {
            width: 320px;
        }

        .auto-style6 {
            width: 321px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ustbar" runat="server">
              <li class="nav-item">
        <a class="nav-link"  href="stok.aspx" role="button"><i class="fas fa-home"></i>Stok</a>
      </li>
              <li class="nav-item">
        <a class="nav-link"  href="stokgir.aspx" role="button"><i class="fas fa-angle-down"></i>Stok Giriş</a>
      </li>

                              <li class="nav-item">
        <a class="nav-link"  href="stokdisari.aspx" role="button"><i class="fas fa-angle-double-down"></i>Dışarı Aktar</a>
      </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <table class="auto-style1">
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style5">Ürün Adı</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtUrunAdi" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">Ürün Birimi</td>
            <td class="auto-style6">
                        <asp:DropDownList ID="dLBirim" runat="server" Width="139px">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Kg</asp:ListItem>
                            <asp:ListItem>Ton</asp:ListItem>
                            <asp:ListItem>Kasa</asp:ListItem>
                        </asp:DropDownList>
            </td>
        </tr>

      
        <tr>
            <td class="auto-style5">Ürün Miktarı</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUrunMiktari" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">Ürün Kodu</td>
            <td class="auto-style6">                        <asp:TextBox ID="txtUrunKodu" runat="server"></asp:TextBox>
</td>
        </tr>
                        <tr>
            <td>Ürün Kilo Başı Fiyat
            </td>
                                   <td>
            </td>       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUrunFiyat" runat="server"></asp:TextBox>
                            </td>       <td>&nbsp;</td>
        </tr>
       

       <tr>
            <td colspan="4">
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnKaydet" runat="server" Height="45px" Text="Kaydet" Width="188px" OnClick="btnKaydet_Click"   />
            </td>
        </tr>
                <tr>
            <td colspan="4">&nbsp;
                
            </td>
        </tr>
                <tr>
            <td colspan="4">&nbsp;
            </td>
        </tr>
    </table>

    <table class="auto-style1">
        
       

       <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
                <tr>
            <td colspan="4">&nbsp;
                
            </td>
        </tr>
                <tr>
            <td colspan="4">&nbsp;
                Bu Listede Sadece Bugün Kayıt Edilen Veriler Listelenecektir Hepsini Görmek İstiyorsanız Yukarıdan Stok Butonuna Tıklayınız.</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px" PageSize="5">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
    </asp:Content>
