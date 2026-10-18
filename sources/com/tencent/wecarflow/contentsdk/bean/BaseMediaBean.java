package com.tencent.wecarflow.contentsdk.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseMediaBean {
    public static final String TYPE_BOOK = "book";
    public static final String TYPE_NEWS = "news";
    public static final String TYPE_RADIO = "radio";
    public static final String TYPE_SONG = "song";
    private String itemAuthor;
    private String itemId;
    private String itemImageUrl;
    private int itemIndex;
    private int itemNextUid;
    private boolean itemRead;
    private String itemTitle;
    private int itemTotal;
    protected String itemType;

    public boolean isItemOver() {
        return false;
    }

    public void setItemOver(boolean z) {
    }

    public boolean isItemRead() {
        return this.itemRead;
    }

    public void setItemRead(boolean z) {
        this.itemRead = z;
    }

    public int getItemNextUid() {
        return this.itemNextUid;
    }

    public void setItemNextUid(int i) {
        this.itemNextUid = i;
    }

    public int getItemTotal() {
        return this.itemTotal;
    }

    public void setItemTotal(int i) {
        this.itemTotal = i;
    }

    public String getItemImageUrl() {
        return this.itemImageUrl;
    }

    public void setItemImageUrl(String str) {
        this.itemImageUrl = str;
    }

    public void setItemType(String str) {
        this.itemType = str;
    }

    public void setItemTitle(String str) {
        this.itemTitle = str;
    }

    public void setItemAuthor(String str) {
        this.itemAuthor = str;
    }

    public void setItemId(String str) {
        this.itemId = str;
    }

    public void setItemIndex(int i) {
        this.itemIndex = i;
    }

    public String getItemType() {
        return this.itemType;
    }

    public String getItemTitle() {
        return this.itemTitle;
    }

    public String getItemAuthor() {
        return this.itemAuthor;
    }

    public String getItemId() {
        return this.itemId;
    }

    public int getItemIndex() {
        return this.itemIndex;
    }
}
