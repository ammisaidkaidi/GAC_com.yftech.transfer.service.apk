package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlyContact implements Parcelable, Serializable {
    public static final Parcelable.Creator<FlyContact> CREATOR = new Parcelable.Creator<FlyContact>() { // from class: com.iflytek.autofly.custom.bluetooth.aidl.FlyContact.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyContact[] newArray(int i) {
            return new FlyContact[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyContact createFromParcel(Parcel parcel) {
            return new FlyContact(parcel.readString(), parcel.readHashMap(HashMap.class.getClassLoader()));
        }
    };
    private static String NUMBER_TYPE_BBS = "NUMBER_TYPE_BBS";
    private static String NUMBER_TYPE_CAR = "NUMBER_TYPE_CAR";
    public static String NUMBER_TYPE_CELL = "NUMBER_TYPE_CELL";
    private static String NUMBER_TYPE_FAX = "NUMBER_TYPE_FAX";
    public static String NUMBER_TYPE_HOME = "NUMBER_TYPE_HOME";
    private static String NUMBER_TYPE_ISDN = "NUMBER_TYPE_ISDN";
    private static String NUMBER_TYPE_MODEM = "NUMBER_TYPE_MODEM";
    private static String NUMBER_TYPE_MSG = "NUMBER_TYPE_MSG";
    public static String NUMBER_TYPE_OTHER = "NUMBER_TYPE_OTHER";
    private static String NUMBER_TYPE_PAGER = "NUMBER_TYPE_PAGER";
    private static String NUMBER_TYPE_PCS = "NUMBER_TYPE_PCS";
    private static String NUMBER_TYPE_PREF = "NUMBER_TYPE_PREF";
    private static String NUMBER_TYPE_VIDEO = "NUMBER_TYPE_VIDEO";
    private static String NUMBER_TYPE_VOICE = "NUMBER_TYPE_VOICE";
    public static String NUMBER_TYPE_WORK = "NUMBER_TYPE_WORK";
    private static final long serialVersionUID = 5679642961596420469L;
    private String name;
    private HashMap<String, List<String>> numberList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FlyContact() {
        this.name = "";
        this.numberList = null;
    }

    public FlyContact(String str, HashMap<String, List<String>> hashMap) {
        this.name = str;
        this.numberList = hashMap;
    }

    public FlyContact(Parcel parcel) {
        this.name = parcel.readString();
        this.numberList = parcel.readHashMap(HashMap.class.getClassLoader());
    }

    public List<String> getCellNumbers() {
        if (this.numberList != null) {
            return this.numberList.get(NUMBER_TYPE_CELL);
        }
        return null;
    }

    public List<String> getWorkNumbers() {
        if (this.numberList != null) {
            return this.numberList.get(NUMBER_TYPE_WORK);
        }
        return null;
    }

    public List<String> getHomeNumbers() {
        if (this.numberList != null) {
            return this.numberList.get(NUMBER_TYPE_HOME);
        }
        return null;
    }

    public List<String> getOtherNumbers() {
        if (this.numberList != null) {
            return this.numberList.get(NUMBER_TYPE_OTHER);
        }
        return null;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public HashMap<String, List<String>> getNumberList() {
        return this.numberList;
    }

    public void setNumberList(HashMap<String, List<String>> hashMap) {
        this.numberList = hashMap;
    }

    public String toString() {
        if (this.numberList == null) {
            return "number is null";
        }
        List<String> list = this.numberList.get(NUMBER_TYPE_CELL);
        List<String> list2 = this.numberList.get(NUMBER_TYPE_HOME);
        List<String> list3 = this.numberList.get(NUMBER_TYPE_WORK);
        List<String> list4 = this.numberList.get(NUMBER_TYPE_OTHER);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(" ");
            }
        }
        if (list2 != null) {
            Iterator<String> it2 = list2.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
                sb2.append(" ");
            }
        }
        if (list3 != null) {
            Iterator<String> it3 = list3.iterator();
            while (it3.hasNext()) {
                sb3.append(it3.next());
                sb3.append(" ");
            }
        }
        if (list4 != null) {
            Iterator<String> it4 = list4.iterator();
            while (it4.hasNext()) {
                sb4.append(it4.next());
                sb4.append(" ");
            }
        }
        return "FlyContact   >>   Contact : name = " + this.name + " || cellNumber = " + ((Object) sb) + " || homeNumber = " + ((Object) sb2) + " || workNumber = " + ((Object) sb3) + " || otherNumber = " + ((Object) sb4);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeMap(this.numberList);
    }
}
