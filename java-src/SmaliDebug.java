package kr.semicolon1.smalidebug;

import java.lang.Thread;
import java.lang.Thread.UncaughtExceptionHandler;
import java.lang.StringBuilder;
import java.lang.reflect.Field;

public class SmaliDebug {
    // Print Log
    public static void printErrorLog(String tag, Object value) {
        android.util.Log.e(tag, value.toString());
    }

    public static void printWarningLog(String tag, Object value) {
        android.util.Log.w(tag, value.toString());
    }

    public static void printInfoLog(String tag, Object value) {
        android.util.Log.i(tag, value.toString());
    }

    public static void printDebugLog(String tag, Object value) {
        android.util.Log.d(tag, value.toString());
    }

    public static void printVerboseLog(String tag, Object value) {
        android.util.Log.v(tag, value.toString());
    }



    // System.out.println
    public static void printSys(Object value) {
        System.out.println(value.toString());
    }



    // printStackTrace
    public static void stackTrace() {
        (new java.lang.Throwable()).printStackTrace();
    }
    
    
    
    // Set UncaughtExceptionHandler
    public static void setUncaughtException() {
        UncaughtExceptionHandler uncaughtExceptionHandler =
            new UncaughtExceptionHandler() {
            @Override
            public void uncaughtException(Thread t, Throwable th) {
                th.printStackTrace();
            }
        };
        Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        printDebugLog("SmaliDebug", "UncaughtExceptionHandler was setted.");
    }
    
    
    
    // Print all fields in Object
    public static void printFields(Object object) {
        StringBuilder result = new StringBuilder();
        String newLine = System.getProperty("line.separator");

        result.append(object.getClass().getName());
        result.append(" Object {");
        result.append(newLine);

        Field[] fields = object.getClass().getDeclaredFields();

        for (Field field : fields) {
            result.append("  ");
            try {
                field.setAccessible(true);
                result.append(field.getName());
                result.append(": ");
                result.append(field.get(object));
            } catch (IllegalAccessException e) {
                printErrorLog("SmaliDebug", e);
            }
            result.append(newLine);
        }
        result.append("}");
        printDebugLog("SmaliDebugField", result.toString());
    }
}