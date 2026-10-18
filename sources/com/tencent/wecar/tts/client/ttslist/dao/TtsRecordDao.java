package com.tencent.wecar.tts.client.ttslist.dao;

import android.util.Log;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.tencent.wecar.tts.client.ttslist.beans.DatabaseHelper;
import com.tencent.wecar.tts.client.ttslist.beans.TtsData;
import com.tencent.wecar.tts.larklite.utils.ContextHolder;
import java.sql.SQLException;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsRecordDao {
    private static final String TAG = "TtsRecordDao";
    private Dao<TtsData, Integer> dao;

    public TtsRecordDao() {
        try {
            this.dao = DatabaseHelper.getInstance(ContextHolder.getContext()).getDao(TtsData.class);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertOrUpdate(TtsData ttsData) {
        try {
            Log.d(TAG, "insertOrUpdate==" + ttsData.toString());
            if (this.dao.queryBuilder().where().eq(TtsData.COLUMNNAME_TASKID, ttsData.getTaskid()).query().size() > 0) {
                this.dao.update(ttsData);
            } else {
                this.dao.create(ttsData);
            }
        } catch (SQLException e) {
            Log.e("SQLException", e.getMessage());
            e.printStackTrace();
        }
    }

    public void deleteByUser(String str) {
        try {
            DeleteBuilder deleteBuilder = this.dao.deleteBuilder();
            deleteBuilder.where().eq(TtsData.COLUMNNAME_USER, str);
            deleteBuilder.delete();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(TtsData ttsData) {
        try {
            this.dao.delete(ttsData);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(TtsData ttsData) {
        try {
            this.dao.update(ttsData);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public TtsData queryById(int i) {
        try {
            return (TtsData) this.dao.queryForId(Integer.valueOf(i));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<TtsData> queryByInUse(boolean z, String str) {
        ArrayList<TtsData> arrayList = new ArrayList<>();
        try {
            arrayList.addAll(this.dao.queryBuilder().where().eq(TtsData.COLUMNNAME_INUSE, Boolean.valueOf(z)).and().eq(TtsData.COLUMNNAME_USER, str).query());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public TtsData queryByInChose(boolean z, String str) {
        try {
            return (TtsData) this.dao.queryBuilder().where().eq(TtsData.COLUMNNAME_INCHOSE, Boolean.valueOf(z)).and().eq(TtsData.COLUMNNAME_USER, str).query().get(0);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage() + ",queryByInChose ,TtsData =" + ((Object) null));
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<TtsData> queryByUserId(String str) {
        ArrayList<TtsData> arrayList = new ArrayList<>();
        try {
            arrayList.addAll(this.dao.queryBuilder().where().eq(TtsData.COLUMNNAME_USER, str).query());
            Log.d(TAG, "queryByUserId ,TtsData List size =" + arrayList.size());
            return arrayList;
        } catch (SQLException e) {
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            return arrayList;
        }
    }

    public ArrayList<TtsData> selectAll() {
        ArrayList<TtsData> arrayList = new ArrayList<>();
        try {
            arrayList.addAll(this.dao.queryForAll());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
