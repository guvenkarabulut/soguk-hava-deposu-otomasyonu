using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class stok : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";
        public DataTable sorgucalistir(string sorgu)
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand(sorgu, baglan);
            SQLiteDataAdapter adapter = new SQLiteDataAdapter(komut);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        protected void GvBind()
        {

            string sorgu = "SELECT* FROM stokGiris where aktifMi = 'true'";

                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
    
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

        protected void btnAra_Click(object sender, EventArgs e)
        {
            if (rbİsim.Checked == true)
            {
                string sorgu = "SELECT * FROM stokGiris where stokAd = '"+txtAra.Text+"' AND aktifMi='true'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
            }
            else if (rBKod.Checked == true)
            {
                string sorgu = "SELECT * FROM stokGiris where stokUrunKodu = '" + txtAra.Text + "' AND aktifMi='true'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>confirm('Lütfen Arama Türünü Seçiniz')</script>");

            }
        }

        protected void btnAna_Click(object sender, EventArgs e)
        {
            GvBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SQLiteConnection con = new SQLiteConnection(db_path))
            {
                con.Open();
                SQLiteCommand cmd = new SQLiteCommand("update stokGiris set aktifMi='false'  where stokGirisID='" + id + "'", con);
                cmd.ExecuteNonQuery();
                GridView1.EditIndex = -1;
                GvBind();

            }
        }
    }
}