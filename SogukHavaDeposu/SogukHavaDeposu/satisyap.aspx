<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="satisyap.aspx.cs" Inherits="SogukHavaDeposu.satisyap" %>
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

        .auto-style7 {
            width: 320px;
            height: 26px;
        }
        .auto-style8 {
            width: 321px;
            height: 26px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ustbar" runat="server">
     <li class="nav-item">
        <a class="nav-link"  href="satisyap.aspx" role="button"><i class="fas fa-home"></i>Satış</a>
      </li>
              <li class="nav-item">
        <a class="nav-link"  href="satisara.aspx" role="button"><i class="fas fa-search"></i>Satış Ara</a>
      </li>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <table class="auto-style1">



        <tr>
            <td class="auto-style5">Urun</td>
            <td class="auto-style6">
                        <asp:DropDownList ID="dLUrun" runat="server" Width="139px" AppendDataBoundItems="True" AutoPostBack="True" CssClass="accent-indigo" OnSelectedIndexChanged="dLUrun_SelectedIndexChanged">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                        </asp:DropDownList>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">Urun Kodu</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtUrunKodu" runat="server"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Birim Fiyatı Otomatik Gelsin" />
                        </td>
            <td class="auto-style6">Urun Fiyat</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtUrunFiyat" runat="server"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style7">Urun Miktar</td>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;<asp:Button ID="btnEksi" runat="server" OnClick="btnEksi_Click" Text="-" Width="30px" />
                        <asp:TextBox ID="txtMiktar" runat="server" Width="125px">0</asp:TextBox>
                <asp:Button ID="btnArti" runat="server" OnClick="btnArti_Click" Text="+" Width="30px" />
                        </td>
            <td class="auto-style8"></td>
            <td class="auto-style8">
                        </td>
        </tr>

       
        <tr>
            <td colspan="4">
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnSatis" runat="server" Height="45px" Text="Satış Yap" Width="188px" OnClick="btnSatis_Click"  />
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
            <p>
        <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
    </p>
</asp:Content>

