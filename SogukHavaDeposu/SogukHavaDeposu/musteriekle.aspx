<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="musteriekle.aspx.cs" Inherits="SogukHavaDeposu.musteriekle" %>
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

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ustbar" runat="server">
            <li class="nav-item">
        <a class="nav-link"  href="musterianasayfa.aspx" role="button"><i class="fas fa-home"></i>Müşteri</a>
      </li>
    <li class="nav-item">
        <a class="nav-link"  href="musteriekle.aspx" role="button"><i class="fas fa-user-plus"></i>Müşteri Kayıt</a>
      </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style5">Ad</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">Soyad</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
            </td>
        </tr>

      
        <tr>
            <td class="auto-style5">T.C. Kimlik No</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTc" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">Cep Telefonu</td>
            <td class="auto-style6">                        <asp:TextBox ID="txtCepTel" runat="server"></asp:TextBox>
</td>
        </tr>

       

        <tr>
            <td class="auto-style5">Email Adresi</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style8">Cinsiyet</td>
            <td class="auto-style6">
                        <asp:DropDownList ID="dLCinsiyet" runat="server" Width="139px">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Erkek</asp:ListItem>
                            <asp:ListItem>Kadın</asp:ListItem>
                        </asp:DropDownList>
            </td>
        </tr>


        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                        &nbsp;</td>
        </tr>



       

       
        <tr>
            <td colspan="4">
                <asp:Button CssClass="btn btn-block btn-primary" ID="btnKaydet" runat="server" Height="45px" Text="Kaydet" Width="188px" OnClick="btnKaydet_Click"  />
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
