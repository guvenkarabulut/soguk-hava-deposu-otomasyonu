<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="calisanbilgi.aspx.cs" Inherits="SogukHavaDeposu.calisanbilgi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Çalışan Bilgi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
        <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="SogukHavaDeposu.calisanTablo" DeleteMethod="calisanSil" SelectMethod="Listele" TypeName="SogukHavaDeposu.calisanbilgi" UpdateMethod="calisanGuncelle"></asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%" DataKeyNames="calisanID,calisanAd,calisanSoyad,calisanTCNo,calisanTel,calisanMail,calisanDogumTarihi,calisanCinsiyet,calisanPozisyon,calisanEgitimDurumu,calisanIl,calisanIlce,calisanAdres,aktifMi" DataSourceID="ObjectDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:BoundField DataField="calisanAd" HeaderText="calisanAd" SortExpression="calisanAd" />
                <asp:BoundField DataField="calisanSoyad" HeaderText="calisanSoyad" SortExpression="calisanSoyad" />
                <asp:BoundField DataField="calisanTCNo" HeaderText="calisanTCNo" SortExpression="calisanTCNo" />
                <asp:BoundField DataField="calisanTel" HeaderText="calisanTel" SortExpression="calisanTel" />
                <asp:BoundField DataField="calisanMail" HeaderText="calisanMail" SortExpression="calisanMail" />
                <asp:BoundField DataField="calisanDogumTarihi" HeaderText="calisanDogumTarihi" SortExpression="calisanDogumTarihi" />
                <asp:BoundField DataField="calisanCinsiyet" HeaderText="calisanCinsiyet" SortExpression="calisanCinsiyet" />
                <asp:BoundField DataField="calisanPozisyon" HeaderText="calisanPozisyon" SortExpression="calisanPozisyon" />
                <asp:BoundField DataField="calisanEgitimDurumu" HeaderText="calisanEgitimDurumu" SortExpression="calisanEgitimDurumu" />
                <asp:BoundField DataField="calisanIl" HeaderText="calisanIl" SortExpression="calisanIl" />
                <asp:BoundField DataField="calisanIlce" HeaderText="calisanIlce" SortExpression="calisanIlce" />
                <asp:BoundField DataField="calisanAdres" HeaderText="calisanAdres" SortExpression="calisanAdres" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </p>
</asp:Content>
