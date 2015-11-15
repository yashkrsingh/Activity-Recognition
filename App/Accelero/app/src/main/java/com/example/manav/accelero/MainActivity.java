package com.example.manav.accelero;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class MainActivity extends AppCompatActivity{

    public static String fileName="";
    Button start,stop,upload;
    static TextView textX,textY,textZ;
    ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        start=(Button)findViewById(R.id.buttonStart);
        stop=(Button)findViewById(R.id.buttonStop);
        upload=(Button)findViewById(R.id.buttonUpload);

        progressDialog= new ProgressDialog(this);
        progressDialog.setMessage("Uploading file");
        progressDialog.setCancelable(false);

        textX=(TextView)findViewById(R.id.textViewX);
        textY=(TextView)findViewById(R.id.textViewY);
        textZ=(TextView)findViewById(R.id.textViewZ);

        start.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startService(new Intent(MainActivity.this,AcceleroService.class));
            }
        });
        stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                stopService(new Intent(MainActivity.this, AcceleroService.class));
            }
        });

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                progressDialog.show();
                new FileSender().execute();
            }
        });
    }

    private class FileSender extends AsyncTask<Void,Void,Void>{

        private Socket sock;
        private BufferedReader reader;
        private PrintWriter writer;

        @Override
        protected Void doInBackground(Void... params) {
            setUpNetworking();
            sendTheData();
            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            progressDialog.hide();
        }

        private void sendTheData() {
            String csvFile = Environment.getExternalStorageDirectory()+"/"+fileName;

            Log.d("FileName", csvFile);
            BufferedReader br = null;
            String line = "";
            try
            {
                br = new BufferedReader(new FileReader(csvFile));
                while ((line = br.readLine()) != null)
                {
                    writer.println(line);
                    writer.flush();
                }
            }catch(Exception ex)
            {
                ex.printStackTrace();
            }

        }

        private void setUpNetworking() {
            try
            {
                sock = new Socket("10.6.12.171",5000);
                InputStreamReader streamReader = new InputStreamReader(sock.getInputStream());
                reader = new BufferedReader(streamReader);
                writer = new PrintWriter(sock.getOutputStream());
            }catch(IOException ex)
            {
                ex.printStackTrace();
            }
        }
    }
    public static void updateUI(String x) {
        String[] p =x.split("\t");
        textX.setText(p[0]);
        textY.setText(p[1]);
        textZ.setText(p[2]);
    }
}
