<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stok.aspx.cs" Inherits="SogukHavaDeposu.stok" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ustbar" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                        <asp:TextBox ID="txtAra" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                        <asp:Button CssClass="btn btn-block btn-primary" ID="btnAra" runat="server" Text="Ara" Height="31px" OnClick="btnAra_Click" Width="137px" />
            </td>
            <td class="auto-style5">
                        <asp:Button CssClass="btn btn-block btn-primary" ID="btnAna" runat="server" Text="Liste Temizle" Height="31px"  Width="137px" OnClick="btnAna_Click" />
            </td>
            <td class="auto-style6">
                        &nbsp;</td>
        </tr>

      
        <tr>
            <td class="auto-style5">
                <asp:RadioButton ID="rbİsim" runat="server" GroupName="a" Text="İsim İle Ara" />
            </td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rBKod" runat="server" GroupName="a" Text="Kodu İle Ara" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">                        &nbsp;</td>
        </tr>
                        <tr>
            <td colspan="4">&nbsp;
            </td>
        </tr>
       

       <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>

    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" Width="1100px" PageSize="5" DataKeyNames="stokGirisID" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
             <asp:BoundField DataField="stokGirisID" HeaderText="stokGirisID" ReadOnly="True" />
            <asp:BoundField DataField="stokAd" HeaderText="stokAd"  />
            <asp:BoundField DataField="stokMiktarı" HeaderText="stokMiktarı"  />
            <asp:BoundField DataField="stokBirim" HeaderText="stokBirim"  />
            <asp:BoundField DataField="stokGirisTarihi" HeaderText="stokGirisTarihi"  />
            <asp:BoundField DataField="stokUrunKodu" HeaderText="stokUrunKodu"  />
             <asp:CommandField ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
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
