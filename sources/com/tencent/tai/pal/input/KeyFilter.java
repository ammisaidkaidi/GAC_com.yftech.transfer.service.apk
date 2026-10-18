package com.tencent.tai.pal.input;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class KeyFilter implements Parcelable {
    public static final Parcelable.Creator<KeyFilter> CREATOR = new Parcelable.Creator<KeyFilter>() { // from class: com.tencent.tai.pal.input.KeyFilter.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public KeyFilter createFromParcel(Parcel parcel) {
            return new KeyFilter(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public KeyFilter[] newArray(int i) {
            return new KeyFilter[i];
        }
    };
    private List<Integer> mBindingKeys;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public KeyFilter() {
        this.mBindingKeys = new ArrayList();
    }

    protected KeyFilter(Parcel parcel) {
        this.mBindingKeys = parcel.readArrayList(Integer.class.getClassLoader());
    }

    public void addFilter(int i) {
        this.mBindingKeys.add(Integer.valueOf(i));
    }

    public void addFilter(List<Integer> list) {
        if (list != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                addFilter(it.next().intValue());
            }
        }
    }

    public List<Integer> getBindingKeys() {
        return this.mBindingKeys;
    }

    public boolean match(int i) {
        return this.mBindingKeys.contains(Integer.valueOf(i));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.mBindingKeys);
    }
}
