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
    public class PhanPhoisController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: PhanPhois
        public ActionResult Index(string searchString,int? page)
        {
            var phanPhois = from d in db.PhanPhois where d.TinhTrang == true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    phanPhois = phanPhois.Where(x=>x.NgayPhanPhoi.Value == dateTime).Where(x=>x.TinhTrang==true);
                }
                catch
                {
                    phanPhois = phanPhois.Where(x => x.MaDaiLy.Contains(searchString) || x.MaLoaiVeSo.Contains(searchString) || x.MaPhanPhoi.Contains(searchString) || x.DaiLy.Ten.Contains(searchString) || x.LoaiVeSo.Tinh.Contains(searchString)||x.SoLuongGiao.ToString()==searchString).Where(x=>x.TinhTrang==true);
                }

            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(phanPhois.OrderBy(i=>i.MaPhanPhoi).ToPagedList(pageNumber, pageSize));
        }

        // GET: PhanPhois/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhanPhoi phanPhoi = db.PhanPhois.Find(id);
            if (phanPhoi == null)
            {
                return HttpNotFound();
            }
            return View(phanPhoi);
        }
        public int? getsldk(PhanPhoi phanPhoi)
        {
            int? soluonggiao=0;
            var result = db.PhanPhois.Count(s => s.MaDaiLy == phanPhoi.MaDaiLy && s.SoLuongBan != null&&s.TinhTrang==true);
            if (result > 3) result = 3;
            if (result == 3)
            {
                var result1 = db.PhanPhois.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy && s.SoLuongBan != null).OrderByDescending(s => s.NgayPhanPhoi).Select(s => s.TiLe).Take(3).Sum();/*.Select(s => s.TiLe).Take(3).Sum();*/
                var result2 = db.DangKies.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy).Where(s => s.MaLoaiVeSo == phanPhoi.MaLoaiVeSo).Where(s => s.NgayPhanPhoi == phanPhoi.NgayPhanPhoi && s.TinhTrang == true&&s.Status==true).Select(s => s.SoLuong * 1.0).Take(1).Sum();
                var sl = (result1 / result) * result2;
                soluonggiao = Convert.ToInt32(sl);
            }
            if (result == 2)
            {
                var result1 = db.PhanPhois.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy && s.SoLuongBan != null).OrderByDescending(s => s.NgayPhanPhoi).Select(s => s.TiLe).Take(2).Sum();
                var result2 = db.DangKies.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy).Where(s => s.MaLoaiVeSo == phanPhoi.MaLoaiVeSo).Where(s => s.NgayPhanPhoi == phanPhoi.NgayPhanPhoi && s.TinhTrang == true && s.Status == true).Select(s => s.SoLuong * 1.0).Take(1).Sum();
                var sl = result1 / result * result2;
                soluonggiao = Convert.ToInt32(sl);
            }
            if (result == 1)
            {
                var result1 = db.PhanPhois.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy  && s.SoLuongBan != null).OrderByDescending(s => s.NgayPhanPhoi).Select(s => s.TiLe).Take(1).Sum();
                var result2 = db.DangKies.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy).Where(s => s.MaLoaiVeSo == phanPhoi.MaLoaiVeSo).Where(s => s.NgayPhanPhoi == phanPhoi.NgayPhanPhoi && s.TinhTrang == true && s.Status == true).Select(s => s.SoLuong * 1.0).Take(1).Sum();
                var sl = result1 / result * result2;
                soluonggiao = Convert.ToInt32(sl);
            }
            if (result == 0)
            {
                var result2 = db.DangKies.Where(s => s.MaDaiLy == phanPhoi.MaDaiLy).Where(s => s.MaLoaiVeSo == phanPhoi.MaLoaiVeSo).Where(s => s.NgayPhanPhoi == phanPhoi.NgayPhanPhoi && s.TinhTrang == true && s.Status == true).Select(s => s.SoLuong * 1.0).Take(1).Sum();
                soluonggiao = Convert.ToInt32(result2);
            }
            return soluonggiao;
        }
        // GET: PhanPhois/Create
        [HttpGet]
        public ActionResult Create(string searchString,int? page)
        {
            
            string datetime = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime dateTime = DateTime.ParseExact(datetime, "dd/MM/yyyy", null);
            var model = db.DangKies.Where(x => x.NgayPhanPhoi==dateTime/*.Value.Day ==dateTime.Day && x.NgayPhanPhoi.Value.Month == dateTime.Month && x.NgayPhanPhoi.Value.Year == dateTime.Year*/ && x.TinhTrang == true && x.Status==true).ToList();
            List<PhanPhoi> l = new List<PhanPhoi>();
            var count = db.PhanPhois.Count()+1;
            foreach(var item in model)
            {
                
                string x = "PP";
                if (count < 10)
                {
                    x += "0" + count;
                }
                if (count > 10)
                {
                    x += count;
                }
                PhanPhoi phanPhoi = new PhanPhoi();
                phanPhoi.khoitao(x, item.MaDaiLy, item.DaiLy, item.LoaiVeSo, item.MaLoaiVeSo, item.NgayPhanPhoi, true);
                count++;
                phanPhoi.SoLuongGiao = this.getsldk(phanPhoi);
                l.Add(phanPhoi);
                db.PhanPhois.Add(phanPhoi);
                var model2 = db.DangKies.Find(item.MaDangKy);
                model2.TinhTrang = false;
                db.SaveChanges();
            }
            if(searchString!=null)
            {
                page = 1;
                l = l.Where(x => x.DaiLy.Ten.Contains(searchString) || x.LoaiVeSo.Tinh.Contains(searchString) || x.MaPhanPhoi.Contains(searchString)).ToList();
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(l.OrderBy(i => i.MaPhanPhoi).ToPagedList(pageNumber, pageSize));
        }
        public bool kiemTraHopLe(List<PhanPhoi> phanPhois)
        {
            foreach (var item in phanPhois)
            {
                if (item.SoLuongGiao == null)
                    return false;

            }
            return true;
        }
        // POST: PhanPhois/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost,ActionName("Create")]
        [ValidateAntiForgeryToken]
        public ActionResult Create(List<PhanPhoi> id)
        {

                foreach (var item in id)
                {
                    var model = db.PhanPhois.FirstOrDefault(x=>x.MaPhanPhoi==item.MaPhanPhoi);
                    if(model!=null)
                    {
                        model.SoLuongGiao = item.SoLuongGiao;
                        db.SaveChanges();
                    }
                    
                }
                
                return RedirectToAction("Index");
            //ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phanPhoi.MaDaiLy);
            //ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes, "MaLoaiVeSo", "Tinh", phanPhoi.MaLoaiVeSo);
        }
        public ActionResult ThemSLBan(string searchString,int? page)
        {
            var phanPhois = from d in db.PhanPhois where d.TinhTrang == true  && d.SoLuongBan==null select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    phanPhois = phanPhois.Where(x => x.NgayPhanPhoi.Value == dateTime&&x.SoLuongBan==null&&x.TinhTrang==true);
                }
                catch
                {
                    phanPhois = phanPhois.Where(x => x.MaDaiLy.Contains(searchString) || x.MaLoaiVeSo.Contains(searchString) || x.MaPhanPhoi.Contains(searchString) || x.DaiLy.Ten.Contains(searchString) || x.LoaiVeSo.Tinh.Contains(searchString) || x.SoLuongGiao.ToString() == searchString).Where(x=> x.SoLuongBan == null && x.TinhTrang == true);
                }

            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(phanPhois.OrderBy(i => i.MaPhanPhoi).ToPagedList(pageNumber, pageSize));
        }
        public bool kiemtratile(List<PhanPhoi> phanPhois)
        {
            foreach(var item in phanPhois)
            {
                if (item.SoLuongBan > item.SoLuongGiao) return false;
            }
            return true;
        }
        [HttpPost, ActionName("ThemSLBan")]
        [ValidateAntiForgeryToken]
        public ActionResult ThemSLBan(List<PhanPhoi> id)
        {
            if(kiemtratile(id)==false)
            {
                SetAlert("Số Lượng Bán Nhập Sai", "warning");
                return RedirectToAction("ThemSLBan");
            }
            else
            {
                foreach (var item in id)
                {
                    var model = db.PhanPhois.FirstOrDefault(x => x.MaPhanPhoi == item.MaPhanPhoi);
                    if (model != null)
                    {
                        model.SoLuongBan = item.SoLuongBan;
                        model.TiLe = item.SoLuongBan * 1.0 / item.SoLuongGiao * 1.0;
                        db.SaveChanges();
                    }

                }
                return RedirectToAction("Index");
            }
            

            
            //ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phanPhoi.MaDaiLy);
            //ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes, "MaLoaiVeSo", "Tinh", phanPhoi.MaLoaiVeSo);
        }
        //GET: PhanPhois/Edit/5
        public ActionResult EditSoLuongBan(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhanPhoi phanPhoi = db.PhanPhois.Find(id);
            if (phanPhoi == null)
            {
                return HttpNotFound();
            }
            return View(phanPhoi);
        }

        //POST: PhanPhois/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditSoLuongBan([Bind(Include = "MaPhanPhoi,MaDaiLy,MaLoaiVeSo,NgayPhanPhoi,SoLuongGiao,SoLuongBan,TiLe,TinhTrang")] PhanPhoi phanPhoi)
        {
            if(phanPhoi.SoLuongBan>phanPhoi.SoLuongGiao)
            {
                SetAlert("Số Lượng Bán Nhập Sai", "warning");
                return RedirectToAction("Edit");
            }
            else
            {
                phanPhoi.TiLe = phanPhoi.SoLuongBan*1.0 / phanPhoi.SoLuongGiao * 1.0;
                db.Entry(phanPhoi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ThemSLBan");
            }
                
        }

        private void SetAlert(string message, string type)
        {
            TempData["AlertMessage"] = message;
            if (type == "success")
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";

            }
            else if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";

            }
        }

        //// GET: PhanPhois/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhanPhoi phanPhoi = db.PhanPhois.Find(id);
            if (phanPhoi == null)
            {
                return HttpNotFound();
            }
            return View(phanPhoi);
        }

        // POST: PhanPhois/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            PhanPhoi phanPhoi = db.PhanPhois.Find(id);
            phanPhoi.TinhTrang = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhanPhoi phanPhoi = db.PhanPhois.Find(id);
            
            if (phanPhoi == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phanPhoi.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes, "MaLoaiVeSo", "Tinh", phanPhoi.MaLoaiVeSo);
            return View(phanPhoi);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaPhanPhoi,MaDaiLy,MaLoaiVeSo,NgayPhanPhoi,SoLuongGiao,SoLuongBan,TiLe,TinhTrang")] PhanPhoi phanPhoi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(phanPhoi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phanPhoi.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes, "MaLoaiVeSo", "Tinh", phanPhoi.MaLoaiVeSo);
            return View(phanPhoi);
        }
    }
}
