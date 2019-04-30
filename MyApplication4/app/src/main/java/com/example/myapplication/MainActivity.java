package com.example.myapplication;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import static com.example.myapplication.R.layout.info_layout;
public class MainActivity extends AppCompatActivity {
    private List<SinhVienData> list = new ArrayList<>();
    public static EditText textMaSV;
    private Button bt1;
    private Button bt2;
    LayoutInflater inflater;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textMaSV = findViewById(R.id.editText1);
        bt1 = findViewById(R.id.button1);
        bt2 = findViewById(R.id.button2);
        inflater = LayoutInflater.from(MainActivity.this);
        readCsvData();
        bt1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SinhVienData svInstance = new SinhVienData();
                SinhVienData sv = svInstance.findSvData(textMaSV.getText().toString(),list);
                if( sv == null) {
                    Toast.makeText(MainActivity.this,"Mã Sinh Viên Không Tồn Tại",Toast.LENGTH_SHORT).show();
                }
                else {
                    Dialog dialog = new Dialog(MainActivity.this);
                    Window window = dialog.getWindow();
                    window.setLayout(RelativeLayout.LayoutParams.FILL_PARENT, RelativeLayout.LayoutParams.FILL_PARENT);
                    View view = getView(sv,null);
                    dialog.setContentView(view);
                    dialog.show();
                }
            }
        });
        bt2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(getApplicationContext(),ScanCodeActivity.class));
            }
        });

    }
    static class ViewHolder {
        ImageView flagView;
        TextView MaSV;
        TextView MaVach;
        TextView HoTen;
        TextView Time;
        TextView Email;
    }
    public View getView(SinhVienData sv, View convertView) {
        ViewHolder holder;
        if (convertView == null) {
            convertView = inflater.inflate(info_layout, null);
            holder = new ViewHolder();
            holder.flagView = (ImageView) convertView.findViewById(R.id.imageView_flag);
            holder.MaSV = (TextView) convertView.findViewById(R.id.textView_MaSV);
            holder.MaVach = (TextView) convertView.findViewById(R.id.textView_MaVach);
            holder.HoTen = (TextView) convertView.findViewById(R.id.textView_HoTen);
            holder.Time = (TextView) convertView.findViewById(R.id.textView_Time);
            holder.Email = (TextView) convertView.findViewById(R.id.textView_email);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        holder.MaSV.setText(sv.getMaSV());
        holder.MaVach.setText(sv.getMaVach());
        holder.HoTen.setText(sv.getHoTen());
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String date = formatter.format(sv.getDate());
        holder.Time.setText(date);
        holder.Email.setText(sv.getEmail());
        int imageId = getMipmapResIdByName("mssv_"+sv.getMaSV());
        holder.flagView.setImageResource(imageId);
        return convertView;
    }
    public int getMipmapResIdByName(String resName)  {
        String pkgName = getPackageName();
        // Trả về 0 nếu không tìm thấy.
        int resID = getResources().getIdentifier(resName , "mipmap", pkgName);
        Log.i("CustomListView", "Res Name: "+ resName+"==> Res ID = "+ resID);
        return resID;
    }
    private void readCsvData() {
        String line = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open("dssv1.csv"),"UTF-8"));
            bufferedReader.readLine();
            while ( (line = bufferedReader.readLine()) != null) {
                Log.d("MyActivity","Line " + line);
                String[] tokens = line.split(",");
                SinhVienData sv =new SinhVienData();
                sv.setMaSV(tokens[0]);
                sv.setMaVach(tokens[1]);
                sv.setHoTen(tokens[2]);
                Date date = new SimpleDateFormat("MM/dd/yyyy").parse(tokens[3]);
                sv.setDate(date);
                sv.setEmail(tokens[4]);
                list.add(sv);
                Log.d("MyActivity","Created " + sv);
            }
        } catch (Exception ex) {
            Log.wtf("MyActivity","Error reading dssv file on line " + line,ex);
        }

    }
}
