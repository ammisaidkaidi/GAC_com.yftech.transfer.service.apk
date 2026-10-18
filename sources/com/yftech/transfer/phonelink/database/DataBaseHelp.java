package com.yftech.transfer.phonelink.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.support.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes.dex */
public class DataBaseHelp extends SQLiteOpenHelper {
    private static final String DBNAME = "yftransfer.db";
    public static final String TABLE_CARLINKDEVICE = "carlinkdevice";
    private final String SQL_CREATE_TABLE_PL_CARLINKDEVICE;

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public DataBaseHelp(@Nullable Context context, int i) {
        super(context, DBNAME, (SQLiteDatabase.CursorFactory) null, i);
        this.SQL_CREATE_TABLE_PL_CARLINKDEVICE = "create table carlinkdevice(deviceid text PRIMARY KEY,deviceName text,phoneType text,connectedStatus int,connectedType int)";
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table carlinkdevice(deviceid text PRIMARY KEY,deviceName text,phoneType text,connectedStatus int,connectedType int)");
    }
}
