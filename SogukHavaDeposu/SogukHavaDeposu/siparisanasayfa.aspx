<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="siparisanasayfa.aspx.cs" Inherits="SogukHavaDeposu.siparisanasayfa" %>
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
        <a class="nav-link" href="siparisana.aspx" role="button"><i class="fas fa-shopping-cart"></i>Sipariş</a>
    </li>

            <li class="nav-item">
        <a class="nav-link" href="siparisanasayfa.aspx" role="button"><i class="fas fa-cart-plus"></i>Sipariş Yap</a>
    </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView5" runat="server" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView5_PageIndexChanging">
        <Columns>
            <asp:ButtonField ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" CommandName="Select" Text="Seç" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    &nbsp;<table class="auto-style1">

      
        <tr>
            <td class="auto-style5">
                Ürün</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUrun" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button CssClass="btn btn-block btn-primary" ID="Button3" runat="server" Text="Ara" OnClick="Button3_Click" />
            </td>
            <td class="auto-style6">                        &nbsp;</td>
        </tr>

       

       <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>

    </table>
    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="4" OnPageIndexChanging="GridView2_PageIndexChanging">
        <Columns>
            <asp:ButtonField ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" CommandName="Select" Text="Seç" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
            <table class="auto-style1">

        

      
        <tr>
            <td class="auto-style5">
                Plaka</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtPlaka" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button CssClass="btn btn-block btn-primary" ID="Button2" runat="server" OnClick="Button2_Click" Text="Ara" />
            </td>
            <td class="auto-style6">                        &nbsp;</td>
        </tr>

       

       <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>

    </table>
    <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px" AllowPaging="True" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" PageSize="4" OnPageIndexChanging="GridView3_PageIndexChanging">
        <Columns>
            <asp:ButtonField ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" CommandName="Select" Text="Seç" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
            <table class="auto-style1">



      
        <tr>
            <td class="auto-style5">
                Tc</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtTx" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:Button CssClass="btn btn-block btn-primary" ID="Button4" runat="server" Text="Ara" OnClick="Button4_Click" />
            </td>
            <td class="auto-style6">                        &nbsp;</td>
        </tr>

       

       <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>

    </table>
    <br />
    <table class="auto-style1">
        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                        <asp:Button CssClass="btn btn-block btn-primary" ID="Button1" runat="server" Text="Ekle" CommandName="Select" OnClick="Button1_Click" />
            </td>
        </tr>

      
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
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
    <asp:GridView ID="GridView4" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" AutoGenerateColumns="False" PageSize="4" Width="1080px" OnPageIndexChanging="GridView4_PageIndexChanging">
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="siparisListele" TypeName="SogukHavaDeposu.siparisanasayfa"></asp:ObjectDataSource>

</asp:Content>
