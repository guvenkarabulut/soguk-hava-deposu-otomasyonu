using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class aracgir : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";
        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM arac", baglan);
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
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM calisanTablo where aktifMi='true'", baglan);
            SQLiteDataReader dr = komut.ExecuteReader();
            if (dr.HasRows == true)
            {
                dLSofor.DataSource = dr;
                dLSofor.DataTextField = "calisanAd";
                dLSofor.DataValueField = "calisanID";
                dLSofor.DataBind();
            }
            GvBind();
        }
        public void temizle()
        {
            txtPlaka.Text = "";
            txtKasa.Text = "";
            txtKilo.Text = "";
            txtTon.Text = "";
            txtMarka.Text = "";
            txtModel.Text = "";
            dLSofor.SelectedIndex = 0;
        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {

            string aracPlaka = txtPlaka.Text;
            string aracKapasiteKasa = txtKasa.Text;
            string aracKapasiteKg = txtKilo.Text;
            string aracKapasiteTon = txtTon.Text;
            string aracMarka = txtMarka.Text;
            string aracModel = txtModel.Text;
            int calisanNo =int.Parse(dLSofor.SelectedValue);
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();

            SQLiteCommand komut = new SQLiteCommand("insert into arac (aracPlaka,aracMarka,aracModel,aracKapasiteTon,aracKapasiteKg,aracKapasiteKasa,calisanNo) values ('" + aracPlaka + "','" + aracMarka + "','" + aracModel + "','" + aracKapasiteTon + "','" + aracKapasiteKg + "','" + aracKapasiteKasa + "','" + calisanNo + "'); ", baglan);
            komut.ExecuteNonQuery();
            temizle();
            GvBind();


        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                txtKilo.Enabled = false;
                txtKasa.Enabled = false;
                int gelenton = int.Parse(txtTon.Text);
                txtKilo.Text = (gelenton * 1000).ToString();
                int kasa = int.Parse(txtKilo.Text) / 10;
                txtKasa.Text = kasa.ToString();
            }
            else
            {
                txtKilo.Enabled = true;
                txtKasa.Enabled = true;
                txtKilo.Text = "";
                txtKasa.Text = "";
            }
        }
    }
}