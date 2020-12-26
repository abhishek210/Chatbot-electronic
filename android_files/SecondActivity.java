package com.example.chatbotapp;
//importing libraries
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;

class SendMessage extends AsyncTask<String,Void,Void> {
    private Exception exception;
    public String string ="";
    //server code working in background
    @Override
    protected Void doInBackground(String... params){
        try{
            try {
                Socket socket = new Socket("192.168.52.41", 8888);
                PrintWriter outToServer = new PrintWriter(
                        new OutputStreamWriter(
                                socket.getOutputStream()));
                outToServer.print(params[0]);
                outToServer.flush();
                DataInputStream dis2 = new DataInputStream(socket.getInputStream());
                InputStreamReader disR2 = new InputStreamReader(dis2);
                BufferedReader br = new BufferedReader(disR2);
                string = br.readLine();
            }
            catch (IOException e){
                e.printStackTrace();
            }

        }catch (Exception e){
            this.exception = e;
        }
        return null;

    }

}
public class SecondActivity extends AppCompatActivity {

    private int count=1;

    private SendMessage sendMessage = new SendMessage();   //send message instance to send message

    private Button mostimpbtn;  //main button to set sizes of children buttons accordingly

    ArrayList<Integer> giveLevel = new ArrayList<Integer>();    //arraylist that holds level of buttons

    @Override
    protected void onCreate(Bundle savedInstanceState){

        super.onCreate(savedInstanceState);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);      //screen orientation restricted to portrait mode
        setContentView(R.layout.activity_second);
        View view=this.getWindow().getDecorView();
        view.setBackgroundResource(R.color.White);      //set background color of chat screen
        Rect windowRect = new Rect();
        view.getWindowVisibleDisplayFrame(windowRect);
        giveLevel.add(1) ;
        final ScrollView scrollview = (ScrollView) findViewById(R.id.scroll) ;
        scrollview.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                scrollview.post(new Runnable() {
                    public void run() {
                        scrollview.fullScroll(View.FOCUS_DOWN);     //making the screen scrollable
                    }
                });
            }
        });

        //greetings text from the chat bot
        TextView starttext=(TextView) findViewById(R.id.starttext);
        starttext.setText("Hi,"+MainActivity.fname+" "+MainActivity.lname+", here's what I can help you with. Try clicking the button below");
        starttext.setTextColor(Color.BLACK);
        mostimpbtn=(Button)findViewById(R.id.someButton);
    }


    //send user message to chat bot
    @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN)
    protected void SEND_ONCLICK(View view) {
        EditText editText = (EditText) findViewById(R.id.typeMessage) ;
        if (editText.getText().toString().equals("")) {
            return;
        }
        String string = editText.getText().toString() ;
        TextView textView = new TextView(SecondActivity.this);
        textView.setText("   "+editText.getText());
        editText.setText("");
        RelativeLayout relativeLayout =(RelativeLayout)findViewById(R.id.rl2);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
                RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
        CREATESPACE();
        if (count > 1) {
            params.addRule(RelativeLayout.BELOW, count - 1);
        }
        else {
            params.addRule(RelativeLayout.BELOW, R.id.someButton);
        }
        params.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        giveLevel.add(0) ;
        textView.setLayoutParams(params);
        textView.setTextSize(20);
        textView.setId((int) count);
        textView.setGravity(Gravity.CENTER);
        textView.setCompoundDrawablesWithIntrinsicBounds(0,0,R.drawable.usericonbot,0);
        textView.setBackgroundResource(R.drawable.userbubble);
        relativeLayout.addView(textView);
        count++ ;

        SendMessage sendMessage = new SendMessage() ;
        sendMessage.execute( "5#"+ string) ;
        while (sendMessage.string.equals("")){}
        sendMessage.cancel(true) ;

        String input = sendMessage.string ;

        Display display = getWindowManager().getDefaultDisplay();
        Point size=new Point();
        display.getSize(size);

        String[] arr = input.split("#");

        int level = Integer.parseInt( arr[0] ) ;

//        if (level == 7)
        if (level == 7) {
            // DEFAULT LEVEL
            RelativeLayout.LayoutParams params2 = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
            CREATESPACE();
            if (count > 1)
                params2.addRule(RelativeLayout.BELOW, count - 1);
            else {
                params2.addRule(RelativeLayout.BELOW, R.id.someButton);
            }
            TextView label = new TextView(SecondActivity.this);
            label.setLayoutParams(params2);
            label.setId(count);
            giveLevel.add(1);
            label.setText("I don't have information regarding this.");
            params2.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            label.setLayoutParams(params2);
            label.setBackgroundResource(R.drawable.botbubble);
            label.setMaxWidth(size.x-(size.x-mostimpbtn.getMaxWidth()));
            label.setTextSize(15);
            label.setCompoundDrawablesWithIntrinsicBounds(R.drawable.boticon,0,0,0);
            label.setTextColor(Color.BLACK);
            relativeLayout.addView(label);
            count++;

            RelativeLayout.LayoutParams params3 = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);

            CREATESPACE();
            if (count > 1)
                params3.addRule(RelativeLayout.BELOW, count - 1);
            else {
                params3.addRule(RelativeLayout.BELOW, R.id.someButton);
            }

            Button newBtn= new Button(SecondActivity.this);
            newBtn.setLayoutParams(params3);
            newBtn.setId((int) count);
            giveLevel.add(1) ;
            newBtn.setText("What are the different types of categories?");
            newBtn.setCompoundDrawablesWithIntrinsicBounds(R.drawable.alicenew,0,0,0);
            newBtn.setBackgroundResource(R.drawable.botbuttons);
            newBtn.setMaxWidth(size.x-(size.x-mostimpbtn.getMaxWidth()));
            newBtn.setGravity(Gravity.CENTER_VERTICAL);
            newBtn.setCompoundDrawablePadding(10);
            newBtn.setPadding(0,0,10,0);
            newBtn.setTag(((Button) view).getText()) ;
            relativeLayout.addView(newBtn);

            newBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    CLICKME(v);
                }
            });
            count ++ ;
            return;
        }
        System.out.println("SEE ME ");

        for (int i =1 ; i < arr.length ; i++) {
            RelativeLayout.LayoutParams params1 = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);

            CREATESPACE();
            if (count > 1)
                params1.addRule(RelativeLayout.BELOW, count - 1);
            else {
                params1.addRule(RelativeLayout.BELOW, R.id.someButton);
            }
            Button newBtn;
            newBtn = new Button(SecondActivity.this);
            newBtn.setLayoutParams(params1);
            newBtn.setId((int) count);
            giveLevel.add(level) ;
            newBtn.setText(arr[i]);
            newBtn.setCompoundDrawablesWithIntrinsicBounds(R.drawable.alicenew,0,0,0);
            newBtn.setBackgroundResource(R.drawable.botbuttons);
            newBtn.setMaxWidth(size.x-(size.x-mostimpbtn.getMaxWidth()));
            newBtn.setGravity(Gravity.CENTER_VERTICAL);
            newBtn.setCompoundDrawablePadding(10);
            newBtn.setPadding(0,0,10,0);
            newBtn.setTag(arr[1]) ;
            relativeLayout.addView(newBtn);

            newBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    CLICKME(v);
                }
            });
            count++;

        }
        CREATESPACE();
        CREATESPACE();
    }

    //function to create spaces between different levels of messages to bifurcate
    protected void CREATESPACE() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl2);

        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
                RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
        TextView line = new TextView(SecondActivity.this);
        line.setText("");
        line.setTextSize(5);
        line.setLayoutParams(params);
        if (count > 1)
            params.addRule(RelativeLayout.BELOW, count - 1);
        else {
            params.addRule(RelativeLayout.BELOW, R.id.someButton);
        }
        giveLevel.add(0);
        line.setId((int) count);
        count++;
        relativeLayout.addView(line);
    }

    //clickable buttons function
    @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN)
    protected void CLICKME(View view ) {
        System.out.println("Hello "+view.getId());
        Button imp = (Button) view ;
        Display display = getWindowManager().getDefaultDisplay();
        Point size=new Point();
        display.getSize(size);

        sendMessage = new SendMessage();
        String tosend ;
        Integer idd = (int)view.getId() ;
        if (String.valueOf(idd).equals("2131165311")){
            tosend="1#" + imp.getTag() + "#" + imp.getText();
        }
        else {
            tosend=giveLevel.get(view.getId()).toString() + "#" + imp.getTag() + "#" + imp.getText();
        }
        sendMessage.execute(tosend) ;
        int counter = 0 ;
        //while loop to wait for the reply from server
        while (sendMessage.string=="" && counter < 1000000000) {
        }
        String input = sendMessage.string ;
        sendMessage.cancel(true);
        String[] arr = input.split("#") ;
        int level = Integer.parseInt( arr[0] ) ;
        //level = 4 implies description, tools, link etc. that would be displayed as bot messages and not buttons
        if (level == 5)
        {
            for (int i = 1 ; i < arr.length; i ++) {
                RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl2);
                RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
                        RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
                CREATESPACE();
                if (count > 1)
                    params.addRule(RelativeLayout.BELOW, count - 1);
                else {
                    params.addRule(RelativeLayout.BELOW, R.id.someButton);
                }
                TextView label;
                label = new TextView(SecondActivity.this);
                label.setLayoutParams(params);
                label.setId(count);
                giveLevel.add(0);
                label.setText(arr[i]);
                params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
                label.setLayoutParams(params);
                label.setBackgroundResource(R.drawable.botbubble);
                label.setMaxWidth(size.x-(size.x-imp.getMaxWidth()));
                label.setTextSize(15);
                label.setPadding(0,0,10,0);
                label.setCompoundDrawablesWithIntrinsicBounds(R.drawable.boticon,0,0,0);
                label.setTextColor(Color.BLACK);
                relativeLayout.addView(label);
                count++;
            }
            CREATESPACE();
            CREATESPACE();
            return;
        }
        for (int i = 1 ; i < arr.length ; i++) {

            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl2);

            RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.WRAP_CONTENT, RelativeLayout.LayoutParams.WRAP_CONTENT);

            CREATESPACE();
            if (count > 1)
                params.addRule(RelativeLayout.BELOW, count - 1);
            else {
                params.addRule(RelativeLayout.BELOW, R.id.someButton);
            }
            Button newBtn;
            newBtn = new Button(SecondActivity.this);
            newBtn.setLayoutParams(params);
            newBtn.setId((int) count);
            giveLevel.add(level) ;
            newBtn.setText(arr[i]);
            newBtn.setCompoundDrawablesWithIntrinsicBounds(R.drawable.alicenew,0,0,0);
            newBtn.setBackgroundResource(R.drawable.botbuttons);
            newBtn.setMaxWidth(size.x-(size.x-imp.getMaxWidth()));
            newBtn.setGravity(Gravity.CENTER_VERTICAL);
            newBtn.setCompoundDrawablePadding(10);
            newBtn.setPadding(0,0,10,0);
            newBtn.setTag(((Button) view).getText()) ;
            relativeLayout.addView(newBtn);
            newBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    CLICKME(v);
                }
            });
            count++;
        }
        CREATESPACE();
        CREATESPACE();
    }
}
