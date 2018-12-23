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
    public class DangKiesController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: DangKies
        public ActionResult Index(string searchString,int? page)
        {
            var dangKies = from d in db.DangKies where d.Status==true select d;
            if(!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    dangKies = dangKies.Where(x=> x.NgayDangKy.Value == dateTime || x.NgayPhanPhoi.Value == dateTime).Where(x=>x.Status==true);
                }
                catch
                {
                    dangKies = dangKies.Where(x => x.MaDaiLy.Contains(searchString) || x.MaLoaiVeSo.Contains(searchString) || x.MaDangKy.Contains(searchString)||x.DaiLy.Ten.Contains(searchString)||x.LoaiVeSo.Tinh.Contains(searchString)).Where(x=>x.Status==true);
                }
                
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(dangKies.OrderBy(i => i.MaDangKy).ToPagedList(pageNumber, pageSize));
        }

        // GET: DangKies/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DangKy dangKy = db.DangKies.Find(id);
            if (dangKy == null)
            {
                return HttpNotFound();
            }
            return View(dangKy);
        }

        // GET: DangKies/Create
        public ActionResult Create()
        {
            ViewBag.MaDaiLy = new SelectList(db.DaiLies.Where(x=>x.TinhTrang==true), "MaDaiLy", "Ten");
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh");
            return View();
        }

        // POST: DangKies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDangKy,MaDaiLy,MaLoaiVeSo,NgayDangKy,NgayPhanPhoi,SoLuong,TinhTrang,Status")] DangKy dangKy)
        {
            if (ModelState.IsValid)
            {
                var result = db.DangKies.Count() + 1;
                string x = "DK";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                dangKy.MaDangKy = x;
                dangKy.TinhTrang = true;
                dangKy.Status = true;
                db.DangKies.Add(dangKy);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDaiLy = new SelectList(db.DaiLies.Where(x => x.TinhTrang == true), "MaDaiLy", "Ten", dangKy.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", dangKy.MaLoaiVeSo);
            return View(dangKy);
        }

        // GET: DangKies/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DangKy dangKy = db.DangKies.Find(id);
            if (dangKy == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies.Where(x => x.TinhTrang == true), "MaDaiLy", "Ten", dangKy.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", dangKy.MaLoaiVeSo);
            return View(dangKy);
        }

        // POST: DangKies/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDangKy,MaDaiLy,MaLoaiVeSo,NgayDangKy,NgayPhanPhoi,SoLuong,TinhTrang,Status")] DangKy dangKy)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dangKy).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies.Where(x => x.TinhTrang == true), "MaDaiLy", "Ten", dangKy.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVeSoes.Where(x => x.TinhTrang == true), "MaLoaiVeSo", "Tinh", dangKy.MaLoaiVeSo);
            return View(dangKy);
        }
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DangKy dangKy = db.DangKies.Find(id);
            //DaiLy daiLy = db.DaiLies.Find(id);
            if (dangKy == null)
            {
                return HttpNotFound();
            }
            return View(dangKy);
        }

        // POST: DaiLies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            DangKy dangKy = db.DangKies.Find(id);
            //DaiLy daiLy = db.DaiLies.Find(id);
            //daiLy.TinhTrang = false;
            dangKy.Status = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        // GET: DangKies/Delete/5
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
