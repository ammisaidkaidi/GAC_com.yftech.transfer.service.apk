package com.tencent.taes.remote.api.search.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class PoiSearchResult implements Parcelable {
    public static final Parcelable.Creator<PoiSearchResult> CREATOR = new Parcelable.Creator<PoiSearchResult>() { // from class: com.tencent.taes.remote.api.search.bean.PoiSearchResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PoiSearchResult createFromParcel(Parcel parcel) {
            return new PoiSearchResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PoiSearchResult[] newArray(int i) {
            return new PoiSearchResult[i];
        }
    };
    public static final int SEARCH_RESULT_CODE_INVALID = -1;
    public static final int SEARCH_RESULT_CODE_NET_ERR = 1;
    public static final int SEARCH_RESULT_CODE_OK = 0;
    public ArrayList<SearchCity> mCityList;
    public ArrayList<SearchPoi> mPoiList;
    public int searchErrorCode;
    public String searchKeyword;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PoiSearchResult() {
        this.searchErrorCode = -1;
        this.mPoiList = new ArrayList<>();
        this.mCityList = new ArrayList<>();
    }

    protected PoiSearchResult(Parcel parcel) {
        this.searchErrorCode = -1;
        this.mPoiList = new ArrayList<>();
        this.mCityList = new ArrayList<>();
        this.searchErrorCode = parcel.readInt();
        this.mPoiList = parcel.createTypedArrayList(SearchPoi.CREATOR);
        this.mCityList = parcel.createTypedArrayList(SearchCity.CREATOR);
        this.searchKeyword = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.searchErrorCode);
        parcel.writeTypedList(this.mPoiList);
        parcel.writeTypedList(this.mCityList);
        parcel.writeString(this.searchKeyword);
    }
}
