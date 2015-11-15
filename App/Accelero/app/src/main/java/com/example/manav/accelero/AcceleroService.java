package com.example.manav.accelero;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import android.widget.Toast;

import com.opencsv.CSVWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by manav on 20/10/15.
 */
public class AcceleroService extends Service implements SensorEventListener {

    private SensorManager mSensorManager;
    private Sensor mAcceleroSenSor;
    private File fileAccelero;
    private ArrayList<String> list;
    private CSVWriter writer;

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Toast.makeText(this,"Service Started",Toast.LENGTH_SHORT).show();

        mSensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        mAcceleroSenSor = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        list = new ArrayList<>();

        if(mAcceleroSenSor!=null){
            mSensorManager.registerListener(this,mAcceleroSenSor,33334);
            Toast.makeText(this,mAcceleroSenSor.getMaximumRange()+"",Toast.LENGTH_SHORT).show();
            Log.d("Sensor ", "Registered");
            createFile();
            initializeWriter();
        }

    }

    private void initializeWriter() {
        try {
            writer = new CSVWriter(new FileWriter(fileAccelero,true), '\n');
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createFile() {
        Date d = new Date();
        String filename="file"+d.getDate()+d.getMonth()+d.getHours()+d.getMinutes()+d.getSeconds()+".csv";
        MainActivity.fileName= "Accelero"+filename;
        Log.d("FileName",MainActivity.fileName);
        fileAccelero = new File(Environment.getExternalStorageDirectory(),"Accelero"+filename);
    }

    @Override
    public void onSensorChanged(SensorEvent event) {

        String time = String.valueOf(System.currentTimeMillis());
        String x = String.valueOf(event.values[0])+"\t"+
                        String.valueOf(event.values[1])+"\t"+
                        String.valueOf(event.values[2])+"\t"+
                        time;
        MainActivity.updateUI(x);
        list.add(x);
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }

    @Override
    public void onDestroy() {
        mSensorManager.unregisterListener(this, mAcceleroSenSor);
        writeToCSV(list);
        Toast.makeText(this,"Service Stopped",Toast.LENGTH_SHORT).show();
        super.onDestroy();
       }

    private void writeToCSV(ArrayList<String> l) {
        String[] values = l.toArray(new String[l.size()]);
        try {
            writer.writeNext(values,false);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
