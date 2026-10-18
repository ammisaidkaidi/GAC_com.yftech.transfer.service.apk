package com.tencent.wecar.tts.client.ttslist.beans;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class DatabaseHelper extends OrmLiteSqliteOpenHelper {
    public static final String DATABASE_NAME = "ttsinfo.db";
    private static volatile DatabaseHelper instance;
    private Map<String, Dao> daos;

    public static DatabaseHelper getInstance(Context context) {
        if (instance == null) {
            synchronized (DatabaseHelper.class) {
                if (instance == null) {
                    instance = new DatabaseHelper(context);
                }
            }
        }
        return instance;
    }

    private DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.daos = new HashMap();
    }

    public synchronized Dao getDao(Class cls) throws SQLException {
        Dao dao;
        String simpleName = cls.getSimpleName();
        dao = this.daos.containsKey(simpleName) ? this.daos.get(simpleName) : null;
        if (dao == null) {
            dao = super.getDao(cls);
            this.daos.put(simpleName, dao);
        }
        return dao;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource) {
        try {
            TableUtils.createTable(connectionSource, TtsData.class);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i, int i2) {
        onCreate(sQLiteDatabase, connectionSource);
    }

    public void close() {
        super.close();
        Iterator<String> it = this.daos.keySet().iterator();
        while (it.hasNext()) {
            this.daos.get(it.next());
        }
    }
}
