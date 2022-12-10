<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aracdisari.aspx.cs" Inherits="SogukHavaDeposu.aracdisari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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

        .auto-style8 {
            width: 320px;
            height: 23px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ustbar" runat="server">
                                          <li class="nav-item">
        <a class="nav-link"  href="aracanasayfa.aspx" role="button"><i class="fas fa-home"></i>Araç</a>
      </li>
                                  <li class="nav-item">
        <a class="nav-link"  href="aracgir.aspx" role="button"><i class="fas fa-truck"></i>Araç Giriş</a>
      </li>
                                  <li class="nav-item">
        <a class="nav-link"  href="aracdisari.aspx" role="button"><i class="fas fa-angle-double-down"></i>Dışarı Aktar</a>
      </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
        
                <tr>
            <td>Listeleme Şekli:</td>
                                <td class="auto-style1">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="189px" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem>Seçiniz</asp:ListItem>
                                        <asp:ListItem>Plaka</asp:ListItem>
                                        <asp:ListItem>Marka</asp:ListItem>
                                    </asp:DropDownList>
                    </td>
            <td>
															<input type="text" id="txt_Arama" runat="server" class="auto-style2" placeholder="Kelime" />
                    </td>
            <td>
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" />
                    </td>

        </tr>
                            
                <tr>
            <td>
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnWordeAktar" runat="server" Text="Worde Aktar" Width="200px" OnClick="btnWordeAktar_Click"  />
                    </td>
                                <td class="auto-style1">
                                    <asp:Button CssClass="btn btn-block btn-primary" ID="btnExceleAktar" runat="server" Text="Excele Aktar"  Width="200px" OnClick="btnExceleAktar_Click" />
                    </td>
            <td>
															&nbsp;</td>
            <td>
                &nbsp;</td>

        </tr>
    </table>
    <br />
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
    <br />

</asp:Content>
