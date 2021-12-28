package kr.semicolon1.smalidebug;

import android.app.Activity;
import android.os.Bundle;
import kr.semicolon1.smalidebug.R;

import kr.semicolon1.smalidebug.SmaliDebug;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        SmaliDebug.saveFile("ㅋㅋㅋ123");
        //startTest();
    }
    
    private void startTest(){
        SmaliDebug.printErrorLog("SmaliDebug", "This is Error");
        SmaliDebug.printWarningLog("SmaliDebug", "This is Warning");
        SmaliDebug.printInfoLog("SmaliDebug", "This is Info");
        SmaliDebug.printDebugLog("SmaliDebug", "This is Debug");
        SmaliDebug.printVerboseLog("SmaliDebug", "This is Verbose");
        
        SmaliDebug.printSys("This is System.out.println");
        
        SmaliDebug.stackTrace();
        
        MyClass mc = new MyClass();
        SmaliDebug.printFields(mc);
        
        SmaliDebug.setUncaughtException();
        int i = 3/0;
    }
}