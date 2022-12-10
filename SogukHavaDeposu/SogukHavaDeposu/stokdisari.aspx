<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stokdisari.aspx.cs" Inherits="SogukHavaDeposu.stokdisari" EnableEventValidation="false"
 %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
         .auto-style1 {
            width: 100%;
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
                <table class="auto-style1">
        
                <tr>
            <td>Listeleme Şekli:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="189px" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem>Seçiniz</asp:ListItem>
                                        <asp:ListItem>Stok</asp:ListItem>
                                        <asp:ListItem>Bugünki Stok</asp:ListItem>
                                        <asp:ListItem>Çıkış Yapılan Stok</asp:ListItem>
                                        <asp:ListItem>İsim ile Arama</asp:ListItem>
                                        <asp:ListItem>Kod ile Arama</asp:ListItem>
                                    </asp:DropDownList>
                    </td>
            <td>
															<input type="text" id="txt_Arama" runat="server" class="form-control" placeholder="Kelime" />
                    </td>
            <td>
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" />
                    </td>

        </tr>
                            
                <tr>
            <td>
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnWordeAktar" runat="server" Text="Worde Aktar" Width="200px" OnClick="btnWordeAktar_Click" />
                    </td>
                                <td>
                                    <asp:Button CssClass="btn btn-block btn-primary" ID="btnExceleAktar" runat="server" Text="Excele Aktar" OnClick="btnExceleAktar_Click" Width="200px" />
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
