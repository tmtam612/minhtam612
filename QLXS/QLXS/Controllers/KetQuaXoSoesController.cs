using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;
using PagedList;
namespace QLXS.Controllers
{
    public class KetQuaXoSoesController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: KetQuaXoSoes
        public ActionResult Index(string searchString, int? page)
        {
            var model = from d in db.KetQuaXoSoes where d.TinhTrang == true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    model = model.Where(x => x.Ngay.Value == dateTime).Where(x => x.TinhTrang == true);
                }
                catch
                {
                    model = model.Where(x => x.MaKetQua.Contains(searchString) || x.MaLoaiVeSo.Contains(searchString) || x.LoaiVeSo.Tinh.Contains(searchString) || x.SoTrung.Contains(searchString)).Where(x => x.TinhTrang == true);
                }
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(model.OrderBy(i => i.MaKetQua).ToPagedList(pageNumber, pageSize));
        }

        // GET: KetQuaXoSoes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KetQuaXoSo ketQuaXoSo = db.KetQuaXoSoes.Find(id);
            if (ketQuaXoSo == null)
            {
                return HttpNotFound();
            }
            return View(ketQuaXoSo);
        }

        // GET: KetQuaXoSoes/Create
        public ActionResult Create()
        {
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh");
            return View();
        }

        // POST: KetQuaXoSoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaKetQua,MaLoaiVeSo,Ngay,SoTrung,TinhTrang")] KetQuaXoSo ketQuaXoSo)
        {
            if (ModelState.IsValid)
            {
                var result = db.KetQuaXoSoes.Count() + 1;
                string x = "KQ";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                ketQuaXoSo.MaKetQua= x;
                ketQuaXoSo.TinhTrang = true;
                db.KetQuaXoSoes.Add(ketQuaXoSo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", ketQuaXoSo.MaLoaiVeSo);
            return View(ketQuaXoSo);
        }

        // GET: KetQuaXoSoes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KetQuaXoSo ketQuaXoSo = db.KetQuaXoSoes.Find(id);
            if (ketQuaXoSo == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", ketQuaXoSo.MaLoaiVeSo);
            return View(ketQuaXoSo);
        }

        // POST: KetQuaXoSoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaKetQua,MaLoaiVeSo,Ngay,SoTrung,TinhTrang")] KetQuaXoSo ketQuaXoSo)
        {
            if (ModelState.IsValid)
            {
                ketQuaXoSo.TinhTrang = true;
                db.Entry(ketQuaXoSo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", ketQuaXoSo.MaLoaiVeSo);
            return View(ketQuaXoSo);
        }

        // GET: KetQuaXoSoes/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            KetQuaXoSo ketQuaXoSo = db.KetQuaXoSoes.Find(id);
            if (ketQuaXoSo == null)
            {
                return HttpNotFound();
            }
            return View(ketQuaXoSo);
        }

        // POST: KetQuaXoSoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            KetQuaXoSo ketQuaXoSo = db.KetQuaXoSoes.Find(id);
            ketQuaXoSo.TinhTrang = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult DoSo()
        {
            var GenreLst1 = new List<DateTime?>();
            var GenreLst2 = new List<string>();
            var GenreQry1 = from d in db.KetQuaXoSoes
                            where d.TinhTrang == true
                            orderby d.Ngay
                           select d.Ngay;
            var GenreQry2 = from d in db.KetQuaXoSoes
                            where d.TinhTrang==true
                            orderby d.LoaiVeSo.Tinh
                           select d.LoaiVeSo.Tinh;
            GenreLst1.AddRange(GenreQry1.Distinct());
            GenreLst2.AddRange(GenreQry2.Distinct());
            IEnumerable<SelectListItem> items = GenreLst1.Select(c => new SelectListItem
            {
                Value = c.ToString(),
                Text = string.Format("{0:dd/MM/yyyy}", c)
            });
            ViewBag.KetQuaGenre1 = items;
            ViewBag.KetQuaGenre2 = new SelectList(GenreLst2);
            return View();
        }
        public ActionResult TrungVeSo(Giai giai)
        {
            return View(giai);
        }
        [HttpPost,ActionName("DoSo")]
        [ValidateAntiForgeryToken]
        public ActionResult DoSo(string KetQuaGenre1, string KetQuaGenre2, string VeSo)
        {
            if (ModelState.IsValid)
            {
                DateTime dateTime = Convert.ToDateTime(KetQuaGenre1);
                string temp=VeSo.Trim();
                string searchString = temp[temp.Length - 2] +""+ temp[temp.Length - 1] ;
                var model = db.KetQuaXoSoes.FirstOrDefault(x => x.Ngay.Value == dateTime && x.LoaiVeSo.Tinh== KetQuaGenre2 && x.SoTrung.Contains(searchString) && x.TinhTrang == true);
                if (model != null)
                {
                    if (sosanhdatetime(dateTime, DateTime.Now) == true)
                    {
                        if (SoSanhChuoi(temp, model.SoTrung) == 6)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "GDB");
                            return RedirectToAction("TrungVeSo", giaithuong);
                        }
                        else if (SoSanhChuoi(temp, model.SoTrung) == 5)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "G01");
                            return RedirectToAction("TrungVeSo", giaithuong);
                        }
                        else if (SoSanhChuoi(temp, model.SoTrung) == 4)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "G02");
                            return RedirectToAction("TrungVeSo", giaithuong);
                        }
                        else if (SoSanhChuoi(temp, model.SoTrung) == 3)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "G03");
                            return RedirectToAction("TrungVeSo", giaithuong);
                        }
                        else if (SoSanhChuoi(temp, model.SoTrung) == 2)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "G04");
                            return RedirectToAction("TrungVeSo", giaithuong);
                        }
                        else if (SoSanhGiaiKhuyenKhich(temp, model.SoTrung) == false && SoSanhGiaiKhuyenKhich2(temp, model.SoTrung) == 5)
                        {
                            var giaithuong = db.Giais.FirstOrDefault(x => x.MaGiai == "GKK");
                            return View(giaithuong);
                        }
                        else
                        {
                            return RedirectToAction("GoodLuckNextTime");
                        }
                    }
                    else
                    {
                        return RedirectToAction("HetHanSuDung");
                    }
                }
                else
                {
                    return RedirectToAction("GoodLuckNextTime");
                }
            }
            return RedirectToAction("DoSo");
        }
        public bool SoSanhGiaiKhuyenKhich(string VeSo,string SoTrung)
        {
            for(int i=0;i<SoTrung.Length;i++)
            {
                if (VeSo[i] != SoTrung[i]) return false;
            }
            return true;
        }
        public int SoSanhGiaiKhuyenKhich2(string VeSo,string SoTrung)
        {
            int count = 0;
            for (int i = 0; i < SoTrung.Length; i++)
            {
                if (VeSo[i] == SoTrung[i]) count++;
            }
            return count;
        }
        public bool SoSanhChuoiLienTuc(char VeSo, char SoTrung)
        {
                if (VeSo != SoTrung) return false;
            return true;
        }
        public int SoSanhChuoi(string VeSo,string SoTrung)
        {
            int count = 0;
            for(int i=0;i<SoTrung.Length;i++)
            {
                if (SoSanhChuoiLienTuc(VeSo[i],SoTrung[i])==true&&VeSo[i] == SoTrung[i]) count++;
            }
            return count;
        }
        public ActionResult GoodLuckNextTime()
        {
            return View();
        }
        public ActionResult HetHanSuDung()
        {
            return View();
        }
        public bool sosanhdatetime(DateTime a,DateTime b)
        {
            DateTime dateTime=a.AddMonths(1);
            if(DateTime.Compare(a,b)<=0&&DateTime.Compare(b,dateTime)<=0)
            {
                return true;
            }
            return false;
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
