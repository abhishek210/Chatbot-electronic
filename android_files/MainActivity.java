package com.example.chatbotapp;
import android.content.pm.ActivityInfo;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {

    private EditText FirstName;
    private EditText LastName;
    private TextView alicequote;
    private ImageView Aliceimg;
    private Button Loginbutton;
    static String fname;
    static String lname;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);  //restricting screen orientation to portrait
        setContentView(R.layout.activity_main);
        View view;
        view=this.getWindow().getDecorView();
        view.setBackgroundResource(R.drawable.goodbackground);  //setting background image in the first screen

        FirstName=findViewById(R.id.etfirstname);
        LastName=findViewById(R.id.etsecondname);
        alicequote=findViewById(R.id.alicetext);
        Aliceimg=findViewById(R.id.aliceavatar);
        Loginbutton=findViewById(R.id.askdoubtbtn);

        Loginbutton.setBackgroundResource(R.drawable.rounded);
        Loginbutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                fname=FirstName.getText().toString();
                lname=LastName.getText().toString();

                //explicit check to verify that the entries aren't empty
                if(!fname.equals("") && !lname.equals("")){
                Intent intent=new Intent(MainActivity.this,SecondActivity.class);
                startActivity(intent);}
                else
                {
                    //fading notification will be displayed when entries are empty
                    Toast toast = Toast.makeText(getApplicationContext(), "Entries can't be empty!", Toast.LENGTH_SHORT);
                    toast.setGravity(Gravity.CENTER_VERTICAL, 0, 0);
                    toast.show();
                }
            }
        });
    }
}
