<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="calisan.aspx.cs" Inherits="SogukHavaDeposu.calisan" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
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
            <td class="auto-style8">Doğum Tarihi</td>
            <td class="auto-style6">
                        <asp:DropDownList ID="dLGun" runat="server">
                            <asp:ListItem>Gün</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                <asp:DropDownList ID="dLAy" runat="server">
                    <asp:ListItem>Ay</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dLYil" runat="server">
                    <asp:ListItem>Yıl</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>


        <tr>
            <td class="auto-style5">Cinsiyet</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="dLCinsiyet" runat="server" Width="139px">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Erkek</asp:ListItem>
                            <asp:ListItem>Kadın</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td class="auto-style6">Pozisyon</td>
            <td class="auto-style6">
                        <asp:DropDownList ID="dLPozisyon" runat="server" Width="139px">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Şöfor</asp:ListItem>
                            <asp:ListItem>Depo</asp:ListItem>
                        </asp:DropDownList>
            </td>
        </tr>



        <tr>
            <td class="auto-style5">Eğitim Durumu</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="dLEgitim" runat="server" Width="139px">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>Lise</asp:ListItem>
                            <asp:ListItem>Önlisans</asp:ListItem>
                            <asp:ListItem>Lisans</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td class="auto-style6">İl</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtIl" runat="server"></asp:TextBox>
            </td>
        </tr>



        <tr>
            <td class="auto-style5">İlçe</td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtIlce" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">Tam Adres</td>
            <td class="auto-style6">
                        <asp:TextBox ID="txtAdres" runat="server" Height="57px" Width="277px"></asp:TextBox>
            </td>
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
            <p>
        <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="calisanID" DataMember="calisanID" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                                                <asp:BoundField DataField="calisanID" HeaderText="calisanID" ReadOnly="True" />

                        <asp:BoundField DataField="calisanAd" HeaderText="calisanAd" />
                        <asp:BoundField DataField="calisanSoyad" HeaderText="calisanSoyad" />
                        <asp:BoundField DataField="calisanTCNo" HeaderText="calisanTCNo" />
                        <asp:BoundField DataField="calisanTel" HeaderText="calisanTel" />
                        <asp:BoundField DataField="calisanMail" HeaderText="calisanMail" />
                        <asp:BoundField DataField="calisanDogumTarihi" HeaderText="calisanDogumTarihi" />
                        <asp:BoundField DataField="calisanCinsiyet" HeaderText="calisanCinsiyet" />
                        <asp:BoundField DataField="calisanPozisyon" HeaderText="calisanPozisyon" />
                        <asp:BoundField DataField="calisanEgitimDurumu" HeaderText="calisanEgitimDurumu" />
                                                <asp:BoundField DataField="calisanIl" HeaderText="calisanIl" />
                        <asp:BoundField DataField="calisanIlce" HeaderText="calisanIlce" />
                        <asp:BoundField DataField="calisanAdres" HeaderText="calisanAdres" />
                                                <asp:BoundField DataField="aktifMi" HeaderText="aktifMi" />

                                                <asp:CommandField ControlStyle-CssClass="btn btn-block btn-primary" ButtonType="Button" ShowEditButton="True" />
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
    </p>
      <p>
          &nbsp;</p>
</asp:Content>
