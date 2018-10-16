using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;

namespace QLXS.Controllers
{
    public class LoaiVesoesController : Controller
    {
        private QLVESOEntities db = new QLVESOEntities();

        // GET: LoaiVesoes
        public ActionResult Index()
        {
            return View(db.LoaiVesoes.Where(s=>s.Flag==true).ToList());
        }

        // GET: LoaiVesoes/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeso loaiVeso = db.LoaiVesoes.Find(id);
            if (loaiVeso == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeso);
        }

        // GET: LoaiVesoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LoaiVesoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaLoaiVeSo,Tinh,GiaVe,Flag")] LoaiVeso loaiVeso)
        {
            if (ModelState.IsValid)
            {
                loaiVeso.Flag = true;
                db.LoaiVesoes.Add(loaiVeso);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiVeso);
        }

        // GET: LoaiVesoes/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeso loaiVeso = db.LoaiVesoes.Find(id);
            if (loaiVeso == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeso);
        }

        // POST: LoaiVesoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaLoaiVeSo,Tinh,GiaVe,Flag")] LoaiVeso loaiVeso)
        {
            if (ModelState.IsValid)
            {
                loaiVeso.Flag = true;
                db.Entry(loaiVeso).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiVeso);
        }

        // GET: LoaiVesoes/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiVeso loaiVeso = db.LoaiVesoes.Find(id);
            if (loaiVeso == null)
            {
                return HttpNotFound();
            }
            return View(loaiVeso);
        }

        // POST: LoaiVesoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            LoaiVeso loaiVeso = db.LoaiVesoes.Find(id);
            loaiVeso.Flag = false;
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
