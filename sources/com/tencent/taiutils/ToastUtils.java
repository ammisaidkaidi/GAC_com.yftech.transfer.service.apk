package com.tencent.taiutils;

import android.content.Context;
import android.widget.Toast;

/* loaded from: /home/user/work/dex/classes.dex */
public class ToastUtils {
    public ToastUtils() {
        throw new AssertionError();
    }

    public static void show(Context context, int i) {
        Toast.makeText(context, context.getResources().getText(i), 0).show();
    }

    public static void show(Context context, CharSequence charSequence, int i) {
        Toast.makeText(context, charSequence, i).show();
    }

    public static void show(Context context, int i, int i2) {
        Toast.makeText(context, context.getResources().getText(i), i2).show();
    }

    public static void show(Context context, int i, int i2, Object... objArr) {
        Toast.makeText(context, String.format(context.getResources().getString(i), objArr), i2).show();
    }

    public static void show(Context context, int i, Object... objArr) {
        Toast.makeText(context, String.format(context.getResources().getString(i), objArr), 0).show();
    }

    public static void show(Context context, CharSequence charSequence) {
        Toast.makeText(context, charSequence, 0).show();
    }

    public static void show(Context context, String str, int i, Object... objArr) {
        Toast.makeText(context, String.format(str, objArr), i).show();
    }

    public static void show(Context context, String str, Object... objArr) {
        Toast.makeText(context, String.format(str, objArr), 0).show();
    }
}
