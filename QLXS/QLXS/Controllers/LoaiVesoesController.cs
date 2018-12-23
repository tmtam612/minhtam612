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
    public class LoaiVeSoesController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: LoaiVeSoes
        public ActionResult Index(string searchString,int? page)
        {
            var model =from d in db.LoaiVeSoes where d.TinhTrang==true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                model= model.Where(x => x.Tinh.Contains(searchString)||x.MaLoaiVeSo.Contains(searchString)).Where(x => x.TinhTrang == true);
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(model.OrderBy(i => i.MaLoaiVeSo).ToPagedList(pageNumber, pageSize));
        }

        // GET: LoaiVeSoes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeSo loaiVeSo = db.LoaiVeSoes.Find(id);
            if (loaiVeSo == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeSo);
        }

        // GET: LoaiVeSoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LoaiVeSoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaLoaiVeSo,Tinh,TinhTrang")] LoaiVeSo loaiVeSo)
        {
            if (ModelState.IsValid)
            {
                var result = db.LoaiVeSoes.Count() + 1;
                string x = "VS";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                loaiVeSo.MaLoaiVeSo = x;
                loaiVeSo.TinhTrang = true;
                db.LoaiVeSoes.Add(loaiVeSo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiVeSo);
        }

        // GET: LoaiVeSoes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeSo loaiVeSo = db.LoaiVeSoes.Find(id);
            if (loaiVeSo == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeSo);
        }

        // POST: LoaiVeSoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaLoaiVeSo,Tinh,TinhTrang")] LoaiVeSo loaiVeSo)
        {
            if (ModelState.IsValid)
            {
                loaiVeSo.TinhTrang = true;
                db.Entry(loaiVeSo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiVeSo);
        }

        // GET: LoaiVeSoes/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeSo loaiVeSo = db.LoaiVeSoes.Find(id);
            if (loaiVeSo == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeSo);
        }

        // POST: LoaiVeSoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            LoaiVeSo loaiVeSo = db.LoaiVeSoes.Find(id);
            loaiVeSo.TinhTrang = false;
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
    }
}
