package com.example.storagedata;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText editText;
    TextView textView;
    Button button;
    SharedPreferences sharedPreferences;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editText  = (EditText)findViewById(R.id.editText);
        textView = (TextView)findViewById(R.id.textView);
        button= (Button)findViewById(R.id.button);

        sharedPreferences = this.getSharedPreferences("com.example.storagedata",Context.MODE_PRIVATE);

        int storedAge = sharedPreferences.getInt("storedAge",0);
        if(storedAge == 0){
            textView.setText("Your Age: ");
        }
        else{
            textView.setText("Your Age: " + storedAge);
        }








    }

    public void save(View view){
        if(!editText.getText().toString().matches("")){
            int userAge = Integer.parseInt(editText.getText().toString());
            textView.setText("Your Age: " + userAge);

            sharedPreferences.edit().putInt("storedAge",userAge).apply();

        }
    }

}
