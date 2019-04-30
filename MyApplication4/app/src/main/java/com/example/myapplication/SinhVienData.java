package com.example.myapplication;

import java.util.Date;
import java.util.List;

public class SinhVienData {
    String MaSV;
    String MaVach;
    String HoTen;
    Date date;
    String email;

    public String getMaSV() {
        return MaSV;
    }

    public void setMaSV(String maSV) {
        MaSV = maSV;
    }

    public String getMaVach() {
        return MaVach;
    }

    public void setMaVach(String maVach) {
        MaVach = maVach;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String hoTen) {
        HoTen = hoTen;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public SinhVienData findSvData(String MaSV, List<SinhVienData> l) {
        for (int i = 0; i < l.size(); i++)
        {
            SinhVienData sv = l.get(i);
            if (MaSV.equals(sv.getMaSV()))
            {
                return sv;
            }
        }
        return null;
    }

}
