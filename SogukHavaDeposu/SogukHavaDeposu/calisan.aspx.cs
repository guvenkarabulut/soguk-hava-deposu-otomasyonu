using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SQLite;
using System.Data;

namespace SogukHavaDeposu
{
    public partial class calisan : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM calisanTablo where aktifMi='true'", baglan);
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
            if (!Page.IsPostBack)
            {
                GvBind();
            }
        }
        public void temizle()
        {
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtTc.Text = "";
            txtCepTel.Text = "";
            txtIl.Text = "";
            txtIlce.Text = "";
            txtAdres.Text = "";
            dLGun.SelectedIndex = 0;
            dLAy.SelectedIndex = 0;
            dLYil.SelectedIndex = 0;
            dLCinsiyet.SelectedIndex = 0;
            dLPozisyon.SelectedIndex = 0;
            dLEgitim.SelectedIndex = 0;

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtAdres.Text != "" && txtMail.Text != "" && txtIl.Text != "" && txtIlce.Text != "" && txtAd.Text != "" && txtSoyad.Text != "" && txtTc.Text != "" && txtCepTel.Text != "" && dLGun.SelectedValue != "Seçiniz" && dLAy.SelectedValue != "Seçiniz" && dLYil.SelectedValue != "Seçiniz" && dLCinsiyet.SelectedValue != "Seçiniz" && dLPozisyon.SelectedValue != "Seçiniz" && dLEgitim.SelectedValue != "Seçiniz")
            {
                string ad = txtAd.Text;
                string soyad = txtSoyad.Text;
                string tc = txtTc.Text;
                string tel = txtCepTel.Text;
                string mail = txtMail.Text;
                string dogumTarihi = dLGun.SelectedValue + "-" + dLAy.SelectedValue + "-" + dLYil.SelectedValue;
                string cinsiyet = dLCinsiyet.SelectedValue;
                string calisanPoisyon = dLPozisyon.SelectedValue;
                string EgitimDurumu = dLEgitim.SelectedValue;
                string calisanIL = txtIl.Text;
                string calisanIlce = txtIlce.Text;
                string calisanAdres = txtAdres.Text;
                string aktifMi = "true";
                SQLiteConnection baglan = new SQLiteConnection(db_path);
                baglan.Open();

                SQLiteCommand komut = new SQLiteCommand("insert into calisanTablo (calisanAd,calisanSoyad,calisanTCNo,calisanTel,calisanMail,calisanDogumTarihi,calisanCinsiyet,calisanPozisyon,calisanEgitimDurumu,calisanIl,calisanIlce,calisanAdres,aktifMi) values ('" +ad +"','"+soyad + "','" + tc + "','" + tel + "','" + mail + "','" + dogumTarihi + "','" + cinsiyet + "','" + calisanPoisyon + "','" + EgitimDurumu + "','" + calisanIL + "','" + calisanIlce + "','" + calisanAdres + "','" + aktifMi + "'); ", baglan);
                komut.ExecuteNonQuery();

                temizle();
                GvBind();

            }
            else
            {
                Response.Write("<script>confirm('Lütfen Boş Alan Bırakmayınız')</script>");
                GvBind();

            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GvBind();

        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string ad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string soyad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string tc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string tel = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string mail = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string dogumTarihi = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string cinsiyet = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string calisanPoisyon = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string EgitimDurumu = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            string calisanIL = ((TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0]).Text;
            string calisanIlce = ((TextBox)GridView1.Rows[e.RowIndex].Cells[11].Controls[0]).Text;
            string calisanAdres = ((TextBox)GridView1.Rows[e.RowIndex].Cells[12].Controls[0]).Text;
            using (SQLiteConnection con = new SQLiteConnection(db_path))
            {
                con.Open();
                SQLiteCommand cmd = new SQLiteCommand("update calisanTablo set calisanAd='" + ad + "',calisanSoyad='" + soyad + "',calisanTCNo='" + tc + "',calisanTel='" + tel + "',calisanMail='" + mail + "',calisanDogumTarihi='" + dogumTarihi + "',calisanCinsiyet='" + cinsiyet + "',calisanPozisyon='" + calisanPoisyon + "',calisanEgitimDurumu='" + EgitimDurumu + "',calisanIl='" + calisanIL + "',calisanIlce='" + calisanIlce + "',calisanAdres='" + calisanAdres + "' where calisanID='" + id + "'", con);
                cmd.ExecuteNonQuery();

                GridView1.EditIndex = -1;
                GvBind();

            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GvBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                        using (SQLiteConnection con = new SQLiteConnection(db_path))
            {
                con.Open();
                SQLiteCommand cmd = new SQLiteCommand("update calisanTablo set aktifMi='false'  where calisanID='" + id + "'", con);
                cmd.ExecuteNonQuery();

                GridView1.EditIndex = -1;
                GvBind();

            }

        }
    }
}