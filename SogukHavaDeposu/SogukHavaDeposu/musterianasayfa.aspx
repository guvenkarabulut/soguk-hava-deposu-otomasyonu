<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="musterianasayfa.aspx.cs" Inherits="SogukHavaDeposu.musterianasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ustbar" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="musterianasayfa.aspx" role="button"><i class="fas fa-home"></i>Müşteri</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="musteriekle.aspx" role="button"><i class="fas fa-user-plus"></i>Müşteri Kayıt</a>
    </li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1100px" DataKeyNames="musteriID" DataMember="musteriID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="musteriID" HeaderText="musteriID" ReadOnly="True" />
            <asp:BoundField DataField="musteriAd" HeaderText="musteriAd" />
            <asp:BoundField DataField="musteriSoyad" HeaderText="musteriSoyad" />
            <asp:BoundField DataField="musteriTC" HeaderText="musteriTC" />
            <asp:BoundField DataField="musteriCinsiyet" HeaderText="musteriCinsiyet" />
            <asp:BoundField DataField="musteriCepTel" HeaderText="musteriCepTel" />
            <asp:BoundField DataField="musteriEPosta" HeaderText="musteriEPosta" />
            <asp:BoundField DataField="musterikayitTarihi" HeaderText="musterikayitTarihi" />
            <asp:CommandField  ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField  ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" ShowDeleteButton="True" />
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
    <br />

</asp:Content>
