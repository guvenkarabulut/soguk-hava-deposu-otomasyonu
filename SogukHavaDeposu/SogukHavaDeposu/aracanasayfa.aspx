<%@ Page  Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aracanasayfa.aspx.cs" Inherits="SogukHavaDeposu.aracanasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="aracNo" DataMember="aracNo" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
             <asp:BoundField DataField="aracNo" HeaderText="aracNo" ReadOnly="True"/>
            <asp:BoundField DataField="aracPlaka" HeaderText="aracPlaka"/>
            <asp:BoundField DataField="aracMarka" HeaderText="aracMarka"/>
            <asp:BoundField DataField="aracModel" HeaderText="aracModel"/>
            <asp:BoundField DataField="aracKapasiteTon" HeaderText="aracKapasiteTon"/>
            <asp:BoundField DataField="aracKapasiteKg" HeaderText="aracKapasiteKg"/>
            <asp:BoundField DataField="aracKapasiteKasa" HeaderText="aracKapasiteKasa"/>
            <asp:BoundField DataField="calisanNo" HeaderText="calisanNo"/>
             <asp:CommandField  ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" ShowEditButton="True" />
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
