using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class calisanbilgi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SogukHavaEntities vt = new SogukHavaEntities();

        public List<calisanTablo> Listele()
        {

            return vt.calisanTablo.Where(p => p.aktifMi == true).ToList();

        }

        public bool calisanSil(calisanTablo Entity)
        {
            var scalisan = vt.calisanTablo.Where(p => p.calisanID == Entity.calisanID).FirstOrDefault();
            scalisan.aktifMi = false;
            vt.SaveChanges();
            return true;
        }
        public bool calisanGuncelle(calisanTablo Entity)
        {
            var calisan = vt.calisanTablo.Where(p => p.calisanID == Entity.calisanID).SingleOrDefault();
            calisan.calisanAd = Entity.calisanAd;
            calisan.calisanAdres = Entity.calisanAdres;
            calisan.calisanCinsiyet = Entity.calisanCinsiyet;
            calisan.calisanDogumTarihi = Entity.calisanDogumTarihi;
            calisan.calisanEgitimDurumu = Entity.calisanEgitimDurumu;
            calisan.calisanIl = Entity.calisanIl;
            calisan.calisanIlce = Entity.calisanIlce;
            calisan.calisanMail = Entity.calisanMail;
            calisan.calisanPozisyon = Entity.calisanPozisyon;
            calisan.calisanSoyad = Entity.calisanSoyad;
            calisan.calisanTCNo = Entity.calisanTCNo;
            calisan.calisanTel = Entity.calisanTel;

            vt.SaveChanges();
            return true;
        }
    }
}