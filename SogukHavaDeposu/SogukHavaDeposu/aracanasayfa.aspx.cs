using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class aracanasayfa : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM arac ", baglan);
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
            string plaka = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string marka = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string model = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string ton = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string kg = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string kasa = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            int calisanno = int.Parse(((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text);

            using (SQLiteConnection con = new SQLiteConnection(db_path))
            {
                con.Open();
                SQLiteCommand cmd = new SQLiteCommand("update arac set aracPlaka='" + plaka + "',aracMarka='" + marka + "',aracModel='" + model + "',aracKapasiteTon='" + ton + "',aracKapasiteKg='" + kg + "',aracKapasiteKasa='" + kasa + "',calisanNo='" + calisanno + "' where aracNo='" + id + "'", con);
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
            //silme
        }
    }
}