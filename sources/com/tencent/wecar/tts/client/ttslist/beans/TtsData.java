package com.tencent.wecar.tts.client.ttslist.beans;

import android.support.v4.app.NotificationCompat;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.tencent.wecarbase.config.MqttConfig;

@DatabaseTable(tableName = "record")
/* loaded from: /home/user/work/dex/classes.dex */
public class TtsData {
    public static final String COLUMNNAME_ID = "id";
    public static final String COLUMNNAME_INCHOSE = "inChose";
    public static final String COLUMNNAME_INUSE = "inUse";
    public static final String COLUMNNAME_NAME = "modelname";
    public static final String COLUMNNAME_TASKID = "taskid";
    public static final String COLUMNNAME_USER = "userId";

    @DatabaseField(columnName = "demoWavPath", useGetSet = MqttConfig.AUTO_RECONNECT)
    private String demoWavPath;

    @DatabaseField(columnName = "id", generatedId = MqttConfig.AUTO_RECONNECT, useGetSet = MqttConfig.AUTO_RECONNECT)
    private int id;

    @DatabaseField(columnName = "localPath", useGetSet = MqttConfig.AUTO_RECONNECT)
    private String localPath;

    @DatabaseField(columnName = "modelPath", useGetSet = MqttConfig.AUTO_RECONNECT)
    private String modelPath;

    @DatabaseField(columnName = "modelSize", useGetSet = MqttConfig.AUTO_RECONNECT)
    private long modelSize;

    @DatabaseField(columnName = COLUMNNAME_NAME, useGetSet = MqttConfig.AUTO_RECONNECT)
    private String modelname;

    @DatabaseField(columnName = "nickname", useGetSet = MqttConfig.AUTO_RECONNECT)
    private String nickname;

    @DatabaseField(columnName = NotificationCompat.CATEGORY_STATUS, useGetSet = MqttConfig.AUTO_RECONNECT)
    private String status;

    @DatabaseField(columnName = COLUMNNAME_TASKID, useGetSet = MqttConfig.AUTO_RECONNECT)
    private String taskid;

    @DatabaseField(columnName = "trainProgress", useGetSet = MqttConfig.AUTO_RECONNECT)
    private int trainProgress;

    @DatabaseField(columnName = COLUMNNAME_USER, useGetSet = MqttConfig.AUTO_RECONNECT)
    private String userId;

    @DatabaseField(columnName = "voiceType", useGetSet = MqttConfig.AUTO_RECONNECT)
    private int voiceType;
    public volatile boolean mIsDownLoading = false;
    public boolean mIsShowDelete = false;

    @DatabaseField(columnName = NotificationCompat.CATEGORY_PROGRESS, useGetSet = MqttConfig.AUTO_RECONNECT)
    private int progress = 0;

    @DatabaseField(columnName = COLUMNNAME_INUSE, useGetSet = MqttConfig.AUTO_RECONNECT)
    private boolean inUse = false;

    @DatabaseField(columnName = COLUMNNAME_INCHOSE, useGetSet = MqttConfig.AUTO_RECONNECT)
    private boolean inChose = false;

    public String getDemoWavPath() {
        return this.demoWavPath;
    }

    public void setDemoWavPath(String str) {
        this.demoWavPath = str;
    }

    public int getProgress() {
        return this.progress;
    }

    public void setProgress(int i) {
        this.progress = i;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public TtsData(String str, String str2, int i, String str3, String str4, String str5, String str6, int i2, int i3, String str7) {
        this.demoWavPath = str;
        this.modelPath = str2;
        this.modelSize = i;
        this.modelname = str3;
        this.nickname = str4;
        this.status = str5;
        this.taskid = str6;
        this.trainProgress = i2;
        this.voiceType = i3;
        this.userId = str7;
    }

    public String getModelPath() {
        return this.modelPath;
    }

    public void setModelPath(String str) {
        this.modelPath = str;
    }

    public long getModelSize() {
        return this.modelSize;
    }

    public void setModelSize(long j) {
        this.modelSize = j;
    }

    public String getModelname() {
        return this.modelname;
    }

    public void setModelname(String str) {
        this.modelname = str;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String getTaskid() {
        return this.taskid;
    }

    public void setTaskid(String str) {
        this.taskid = str;
    }

    public int getTrainProgress() {
        return this.trainProgress;
    }

    public void setTrainProgress(int i) {
        this.trainProgress = i;
    }

    public int getVoiceType() {
        return this.voiceType;
    }

    public boolean getInChose() {
        return this.inChose;
    }

    public void setInChose(boolean z) {
        this.inChose = z;
    }

    public boolean getInUse() {
        return this.inUse;
    }

    public void setInUse(boolean z) {
        this.inUse = z;
    }

    public void setVoiceType(int i) {
        this.voiceType = i;
    }

    public TtsData() {
    }

    public String getNo() {
        return this.taskid;
    }

    public void setNo(String str) {
        this.taskid = str;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String toString() {
        return "TtsData{mIsDownLoading=" + this.mIsDownLoading + ", demoWavPath='" + this.demoWavPath + "', progress=" + this.progress + ", inUse=" + this.inUse + ", inChose=" + this.inChose + ", localPath='" + this.localPath + "', userId='" + this.userId + "', modelname='" + this.modelname + "', id=" + this.id + ", taskid='" + this.taskid + "', modelPath='" + this.modelPath + "', modelSize=" + this.modelSize + ", nickname='" + this.nickname + "', status='" + this.status + "', trainProgress=" + this.trainProgress + ", voiceType=" + this.voiceType + '}';
    }
}
