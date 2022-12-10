using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class satisyap : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";


        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM satis", baglan);
            SQLiteDataReader dr = komut.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
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
            if (!IsPostBack)
            {
                SQLiteConnection baglan = new SQLiteConnection(db_path);
                baglan.Open();
                SQLiteCommand komut = new SQLiteCommand("SELECT * FROM anaStok ", baglan);
                SQLiteDataReader dr = komut.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dLUrun.DataSource = dr;
                    dLUrun.DataTextField = "anaStokAD";
                    dLUrun.DataValueField = "anaStokID";
                    dLUrun.DataBind();
                }
                GvBind();
            }
          
        }
        protected void dLUrun_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dLUrun.SelectedValue=="Seçiniz")
            {
                txtUrunFiyat.Text = "";
                txtUrunKodu.Text = "";
                Label1.Text = "";
            }
            else
            {

                int secilenveri = int.Parse(dLUrun.SelectedValue);
                dLUrun.SelectedValue = secilenveri.ToString();

                SQLiteConnection baglan = new SQLiteConnection(db_path);
                baglan.Open();
                SQLiteCommand komut = new SQLiteCommand("SELECT * FROM anaStok where anaStokID='"+secilenveri+"' ", baglan);
                using (SQLiteDataReader dr = komut.ExecuteReader())
                { 
                    if (dr.HasRows == true)
                    {
                        if (dr.Read())
                        {
                            if (secilenveri == int.Parse(dr["anaStokID"].ToString()))
                            {
                                txtUrunKodu.Text = dr["anaStokKodu"].ToString();
                                Label1.Text = "Sistem deki Stok Miktarı=" + dr["anaStokMiktar"].ToString();
                                if (CheckBox1.Checked == true)
                                {
                                    txtUrunFiyat.Text = dr["anaStokBirimFiyat"].ToString();

                                }
                            }
                        }
                    }
                }
                baglan.Close();


            }
           
        }

        protected void btnArti_Click(object sender, EventArgs e)
        {
            string textyazi = txtMiktar.Text;
            int artiyazi = int.Parse(textyazi) + 1;
            txtMiktar.Text = artiyazi.ToString();
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            if (txtMiktar.Text == "-1")
            {
                txtMiktar.Text = "0";
                Response.Write("<script>confirm('Lütfen Negatif sayıalra Düşmeyiziniz.')</script>");

            }
            else
            {
                string textyazi = txtMiktar.Text;
                int eksiyazi = int.Parse(textyazi) - 1;
                txtMiktar.Text = eksiyazi.ToString();
            }

        }

        protected void btnSatis_Click(object sender, EventArgs e)
        {
            string satisBirimFiyat = txtUrunFiyat.Text;
            string satisMiktar = txtMiktar.Text;
            string satisTarihi = DateTime.Now.ToString();
            double urunfiyat = double.Parse(txtUrunFiyat.Text, System.Globalization.CultureInfo.InvariantCulture);
            double urunmiktar = double.Parse(txtMiktar.Text);
            double toplamfiyat = urunfiyat * urunmiktar;
            string satisToplamFiyat = toplamfiyat.ToString();
            string satisUrunAdi = dLUrun.SelectedItem.Text;
            string satisUrunKodu = txtUrunKodu.Text;
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("insert into satis (satisUrunAdi,satisUrunKodu,satisMiktar,satisBirimFiyat,satisToplamFiyat,satisTarihi) values ('" + satisUrunAdi + "','" + satisUrunKodu + "','" + satisMiktar + "','" + satisBirimFiyat + "','" + satisToplamFiyat + "','" + satisTarihi + "'); ", baglan);
            komut.ExecuteNonQuery();


            int secilenveri = int.Parse(dLUrun.SelectedValue);
            dLUrun.SelectedValue = secilenveri.ToString();
            SQLiteCommand komut2 = new SQLiteCommand("SELECT * FROM anaStok where anaStokID='" + secilenveri + "' ", baglan);
            SQLiteDataReader dr = komut2.ExecuteReader();
            if (dr.HasRows==true)
            {
                if (dr.Read())
                {
                    if (secilenveri == int.Parse(dr["anaStokID"].ToString()))
                    {
                        int stoktoplammiktar = int.Parse(dr["anaStokMiktar"].ToString());
                        int cıkarilmistoplammiktar = stoktoplammiktar - int.Parse(txtMiktar.Text);
                        SQLiteCommand komut3 = new SQLiteCommand("update anaStok set anaStokMiktar='"+ cıkarilmistoplammiktar + "' where anaStokID='"+secilenveri+"'", baglan);
                        komut3.ExecuteNonQuery();
                    }
                }
            }


            txtUrunFiyat.Text = "";
            txtUrunKodu.Text = "";
            Label1.Text = "";
            txtMiktar.Text = "";
            dLUrun.SelectedValue = "Seçiniz";
            CheckBox1.Checked = false;
            GvBind();
        }

    }
}