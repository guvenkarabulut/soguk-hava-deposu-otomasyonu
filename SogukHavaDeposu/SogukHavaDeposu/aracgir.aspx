<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aracgir.aspx.cs" Inherits="SogukHavaDeposu.aracgir" %>
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

        .auto-style8 {
            width: 320px;
            height: 23px;
        }

        .auto-style9 {
        width: 320px;
        height: 26px;
    }
    .auto-style10 {
        width: 321px;
        height: 26px;
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
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style5">Plaka</td>
            <td class="auto-style6">&nbsp;&nbsp;
                        <asp:TextBox ID="txtPlaka" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">Marka</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtMarka" runat="server"></asp:TextBox>
            </td>
        </tr>

      
        <tr>
            <td class="auto-style5">Model</td>
            <td class="auto-style6">&nbsp;&nbsp;
            <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">Ton</td>
            <td class="auto-style6">                        <asp:TextBox ID="txtTon" runat="server"></asp:TextBox>
</td>
        </tr>

       

        <tr>
            <td class="auto-style5">Kilo</td>
            <td class="auto-style6">&nbsp;&nbsp;
                        <asp:TextBox ID="txtKilo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8">Kasa</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtKasa" runat="server"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td class="auto-style5">Şoför</td>
            <td class="auto-style6">&nbsp;&nbsp;
                        <asp:DropDownList ID="dLSofor" runat="server" Width="139px" AppendDataBoundItems="True">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                        &nbsp;</td>
        </tr>



        <tr>
            <td class="auto-style9">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Kasa ve Kiloyu Otomatik Yaz" />
            </td>
            <td class="auto-style10">&nbsp;&nbsp;
                Not:Bir kasaya sadece 10 kilo
                <br />
                sığacak şekilde hesaplanmıştır.</td>
            <td class="auto-style10"></td>
            <td class="auto-style10">
                        </td>
        </tr>



        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                        &nbsp;</td>
        </tr>

       
        <tr>
            <td colspan="4">
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnKaydet" runat="server" Height="45px" Text="Aracı Kaydet" Width="188px" OnClick="btnKaydet_Click"  />
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

<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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
