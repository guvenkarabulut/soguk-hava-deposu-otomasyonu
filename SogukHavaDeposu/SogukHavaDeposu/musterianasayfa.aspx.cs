using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class musterianasayfa : System.Web.UI.Page
    {

        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";
        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM musteri where aktifMi='true'", baglan);
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
            string musteriAd = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string musteriSoyad = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string musteriTC = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string musteriCinsiyet = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            string musteriCepTel = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string musteriEPosta = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string musterikayitTarihi = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string aktifMi = "true";
            using (SQLiteConnection con = new SQLiteConnection(db_path))
            {
                con.Open();
                SQLiteCommand cmd = new SQLiteCommand("update musteri set musteriAd='" + musteriAd + "',musteriSoyad='" + musteriSoyad + "',musteriTC='" + musteriTC + "',musteriCepTel='" + musteriCepTel + "',musteriEPosta='" + musteriEPosta + "',musterikayitTarihi='" + musterikayitTarihi + "',musteriCinsiyet='" + musteriCinsiyet + "',aktifMi='" + aktifMi + "' where musteriID='" + id + "'", con);
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
                SQLiteCommand cmd = new SQLiteCommand("update musteri set aktifMi='false'  where musteriID='" + id + "'", con);
                cmd.ExecuteNonQuery();

                GridView1.EditIndex = -1;
                GvBind();

            }
        }
    }
}