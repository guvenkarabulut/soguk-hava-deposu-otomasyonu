using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class stokgir : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";
        protected void GvBind()
        {
            int gun = DateTime.Now.Day;
            string ay = DateTime.Now.ToString("MM");
            int yil = DateTime.Now.Year;
            string buguntarih = (gun.ToString() + "." + ay + "." + yil.ToString());
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM stokGiris where stokGirisTarihi like '%"+buguntarih+"%'", baglan);
            SQLiteDataReader dr = komut.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            baglan.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            GvBind();

        }
        public void temizle()
        {
            txtUrunAdi.Text = "";
            txtUrunMiktari.Text = "";
            txtUrunKodu.Text = "";
            dLBirim.SelectedIndex = 0;


        }
        public string stokMiktarı = "";
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string stokAd = txtUrunAdi.Text;
            string stokBirim = "kg";
            int miktar = int.Parse(txtUrunMiktari.Text);
            if (dLBirim.SelectedValue == "Kg")
            {
                string stokMiktarı = txtUrunMiktari.Text;

            }
            else if (dLBirim.SelectedValue == "Ton")
            {
               string stokMiktarı = (miktar * 1000).ToString();

            }
            else if (dLBirim.SelectedValue == "Kasa")
            {
              string stokMiktarı = (miktar / 10).ToString();

            }
            string stokUrunKodu = txtUrunKodu.Text;
            string fiyat = txtUrunFiyat.Text;
            DateTime suan = DateTime.Now;
            string stokGirisTarihi = suan.ToString();
            string aktifMi = "true";

            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("insert into stokGiris (stokAd,stokMiktarı,stokBirim,stokGirisTarihi,aktifMi,stokUrunKodu,fiyat) values ('" + stokAd + "','" + stokMiktarı + "','" + stokBirim + "','" + stokGirisTarihi + "','" + aktifMi + "','" + stokUrunKodu + "','" + fiyat + "'); ", baglan);
            komut.ExecuteNonQuery();
            GvBind();
            baglan.Close();
            Etiket:
            if (txtUrunAdi.Text != "")
            {
                baglan.Open();
                SQLiteCommand komut2 = new SQLiteCommand("select count(*) from anaStok", baglan);
                int girilenkayitsayisi = Convert.ToInt32(komut2.ExecuteScalar());
                if (girilenkayitsayisi == 0)
                {
                    string anaStokAD = txtUrunAdi.Text;
                    string anaStokBirimFiyat = txtUrunFiyat.Text;
                    string anaStokKodu = txtUrunKodu.Text;
                    string anaStokMiktar = txtUrunMiktari.Text;
                    SQLiteCommand komut3 = new SQLiteCommand("insert into anaStok (anaStokAD,anaStokMiktar,anaStokBirimFiyat,anaStokKodu) values ('" + anaStokAD + "','" + anaStokMiktar + "','" + anaStokBirimFiyat + "','" + anaStokKodu + "'); ", baglan);
                    komut3.ExecuteNonQuery();
                    GvBind();
                    temizle();
                    baglan.Close();


                    goto Etiket;
                }
                if (girilenkayitsayisi > 0)
                {

                        SQLiteCommand komut4 = new SQLiteCommand("select * from anaStok where anaStokAD='" + txtUrunAdi.Text + "'", baglan);
                        SQLiteDataReader dr4 = komut4.ExecuteReader();
                        if (dr4.HasRows)
                        {
                            while (dr4.Read())
                            {
                                string ificinad = dr4.GetString(1);
                                if (ificinad == txtUrunAdi.Text)
                                {
                                    

                                    int anaMiktar = int.Parse(dr4["anaStokMiktar"].ToString());
                                    string anaStokMiktari = (anaMiktar + int.Parse(txtUrunMiktari.Text)).ToString();
                                    SQLiteCommand cmd = new SQLiteCommand("update anaStok set anaStokMiktar='" + anaStokMiktari + "'  where anaStokAD='" + ificinad + "'", baglan);
                                    cmd.ExecuteNonQuery();
                                    GvBind();
                                    temizle();
                                    baglan.Close();
                                Response.Redirect("stok.aspx");

                                goto Etiket;


                                }

                                else if (ificinad != txtUrunAdi.Text)
                                {
                                    string anaStokAD = txtUrunAdi.Text;
                                    string anaStokBirimFiyat = txtUrunFiyat.Text;
                                    string anaStokKodu = txtUrunKodu.Text;
                                    string anaStokMiktar = txtUrunMiktari.Text;
                                    SQLiteCommand komut3 = new SQLiteCommand("insert into anaStok (anaStokAD,anaStokMiktar,anaStokBirimFiyat,anaStokKodu) values ('" + anaStokAD + "','" + anaStokMiktar + "','" + anaStokBirimFiyat + "','" + anaStokKodu + "'); ", baglan);
                                    komut3.ExecuteNonQuery();
                                    GvBind();
                                    temizle();
                                    baglan.Close();
                                Response.Redirect("stok.aspx");

                                goto Etiket;
                                }
                            }
                          
                        }
                    
                        
                    



                }
            }

        }
    }
}