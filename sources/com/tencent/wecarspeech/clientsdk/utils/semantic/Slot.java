package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class Slot<T> {
    private static final String TAG = "Slot";

    @SerializedName("name")
    private String mName;

    @SerializedName("selectResult")
    private Slot<T>.SelectResult mSelectResult;

    @SerializedName("slot_struct")
    private int mSlotStruct;

    @SerializedName("type")
    private String mType;

    @SerializedName("values")
    private List<T> mValues;

    public String getName() {
        return this.mName;
    }

    public String getType() {
        return this.mType;
    }

    public String getOriginalText() {
        Slot<T>.SlotValue value = getValue();
        if (value != null) {
            return value.getOriginalText();
        }
        LogUtils.d(TAG, "can't find original text");
        return "";
    }

    public String getEntityText() {
        Slot<T>.Entity entity = getEntity();
        if (entity != null) {
            return entity.getText();
        }
        LogUtils.d(TAG, "can't find entity text");
        return "";
    }

    public List<String> getAllEntityText() {
        if (!hasValue()) {
            LogUtils.d(TAG, "can't find entity text");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.mValues.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(((Entity) it.next()).getText());
            } catch (Exception e) {
                LogUtils.e(TAG, "getEntity Exception : " + e.getMessage());
                return null;
            }
        }
        return arrayList;
    }

    public String getCity() {
        Slot<T>.Location location = getLocation();
        if (location != null) {
            return location.getCity();
        }
        LogUtils.d(TAG, "can't find city");
        return "";
    }

    public String getDate() {
        Slot<T>.Date dateValue = getDateValue();
        if (dateValue != null) {
            return dateValue.getDate();
        }
        LogUtils.d(TAG, "can't find date");
        return "";
    }

    public String getInteger() {
        Slot<T>.Number number = getNumber();
        if (number != null) {
            return number.getInteger();
        }
        LogUtils.d(TAG, "can't find integer");
        return "";
    }

    public boolean hasValue(String str) {
        return hasValue() && str.equals(this.mName);
    }

    public boolean isEntity() {
        return hasValue() && 1 == this.mSlotStruct;
    }

    public boolean isLocation() {
        return hasValue() && 2 == this.mSlotStruct;
    }

    public boolean isDate() {
        return hasValue() && this.mSlotStruct == 0;
    }

    public boolean isNumber() {
        return hasValue() && 3 == this.mSlotStruct;
    }

    public boolean isUnit() {
        return hasValue() && 4 == this.mSlotStruct;
    }

    public Slot<T>.SlotValue getValue() {
        try {
            return (SlotValue) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getValue Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.SelectResult getSelectResult() {
        return this.mSelectResult;
    }

    public Slot<T>.Entity getEntity() {
        try {
            return (Entity) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getEntity Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.Location getLocation() {
        try {
            return (Location) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getLocation Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.Date getDateValue() {
        try {
            return (Date) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getDate Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.Number getNumber() {
        try {
            return (Number) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getNumber Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.Unit getUnit() {
        try {
            return (Unit) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getUnit Exception : " + e.getMessage());
            return null;
        }
    }

    public Slot<T>.Confirm getConfirm() {
        try {
            return (Confirm) this.mValues.get(0);
        } catch (Exception e) {
            LogUtils.e(TAG, "getUnit Exception : " + e.getMessage());
            return null;
        }
    }

    public boolean hasValue() {
        return this.mValues != null && this.mValues.size() > 0;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class SelectResult {

        @SerializedName("all_no")
        private boolean all_no;

        @SerializedName("index")
        private int index;

        @SerializedName("indexes")
        private int[] indexes;

        @SerializedName("type")
        private int type;

        @SerializedName("value")
        private String value;

        public SelectResult() {
        }

        public boolean getAllNo() {
            return this.all_no;
        }

        public int getIndex() {
            return this.index;
        }

        public int[] getIndexes() {
            return this.indexes;
        }

        public int getType() {
            return this.type;
        }

        public String getValue() {
            return this.value;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class SlotValue {

        @SerializedName("original_text")
        private String mOriginalText;

        public SlotValue() {
        }

        public String getOriginalText() {
            return this.mOriginalText;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Entity extends Slot<T>.SlotValue {

        @SerializedName("text")
        private String mText;

        public Entity() {
            super();
        }

        public String getText() {
            return this.mText;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Location extends Slot<T>.SlotValue {

        @SerializedName("city")
        private String mCity;

        @SerializedName("country")
        private String mCountry;

        @SerializedName("district")
        private String mDistrict;

        @SerializedName("latitude")
        private int mLatitude;

        @SerializedName("longitude")
        private int mLongitude;

        @SerializedName("province")
        private String mProvince;

        @SerializedName("residual")
        private String mResidual;

        @SerializedName("source")
        private int mSource;

        @SerializedName("street")
        private String mStreet;

        @SerializedName("text")
        private String mText;

        @SerializedName(FeedBackConstants.PROP_BUG_TITLE)
        private String mTitle;

        @SerializedName("town")
        private String mTown;

        @SerializedName("village")
        private String mVillage;

        public Location() {
            super();
        }

        public String getCity() {
            return this.mCity;
        }

        public String getCountry() {
            return this.mCountry;
        }

        public String getDistrict() {
            return this.mDistrict;
        }

        public int getLatitude() {
            return this.mLatitude;
        }

        public int getLongitude() {
            return this.mLongitude;
        }

        public String getProvince() {
            return this.mProvince;
        }

        public String getResidual() {
            return this.mResidual;
        }

        public int getSource() {
            return this.mSource;
        }

        public String getStreet() {
            return this.mStreet;
        }

        public String getTitle() {
            return this.mTitle;
        }

        public String getTown() {
            return this.mTown;
        }

        public String getVillage() {
            return this.mVillage;
        }

        public String getText() {
            return this.mText;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Number extends Slot<T>.SlotValue {

        @SerializedName("decimal")
        private String mDecimal;

        @SerializedName("fraction")
        private String mFraction;

        @SerializedName("integer")
        private String mInteger;

        @SerializedName("number_type")
        private int mNumberType;

        @SerializedName("ordinal")
        private String mOrdinal;

        public Number() {
            super();
            this.mNumberType = 0;
            this.mFraction = "";
            this.mDecimal = "";
            this.mInteger = "";
            this.mOrdinal = "";
        }

        public String getInteger() {
            return this.mInteger;
        }

        public String getDecimal() {
            return this.mDecimal;
        }

        public int getNumberType() {
            return this.mNumberType;
        }

        public String getFraction() {
            return this.mFraction;
        }

        public String getOrdinal() {
            return this.mOrdinal;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Date extends Slot<T>.SlotValue {

        @SerializedName("datetime")
        private DateTime mDatetime;

        @SerializedName("interval")
        private Interval mInterval;

        @SerializedName("is_valid")
        private boolean mIsValid;

        @SerializedName("original_offset")
        private int mOriginalOffset;

        @SerializedName("type")
        private int mType;

        public Date() {
            super();
        }

        public String getDate() {
            return this.mDatetime.getDate();
        }

        public int getType() {
            return this.mType;
        }

        public DateTime getDatetime() {
            return this.mDatetime;
        }

        public Interval getInterval() {
            return this.mInterval;
        }

        public boolean isValid() {
            return this.mIsValid;
        }

        public int getOriginalOffset() {
            return this.mOriginalOffset;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Interval {

        @SerializedName("end")
        private DateTime mEnd;

        @SerializedName("start")
        private DateTime mStart;

        public DateTime getStart() {
            return this.mStart;
        }

        public DateTime getEnd() {
            return this.mEnd;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class DateTime {

        @SerializedName("date")
        private String mDate;

        @SerializedName("time")
        private String mTime = "";

        @SerializedName("year")
        private int mYear = -1;

        @SerializedName("mon")
        private int mMon = -1;

        @SerializedName("day")
        private int mDay = -1;

        @SerializedName("week")
        private int mWeek = -1;

        @SerializedName("hour")
        private int mHour = -1;

        @SerializedName("min")
        private int mMin = -1;

        @SerializedName("sec")
        private int mSec = -1;

        @SerializedName("period_of_day")
        private int mPeriodOfDay = 0;

        @SerializedName("calendar_type_of_text")
        private int mCalendarTypeOfText = 0;

        @SerializedName("express_type")
        private int mExpressType = 0;

        public String getDate() {
            return this.mDate;
        }

        public String getTime() {
            return this.mTime;
        }

        public int getYear() {
            return this.mYear;
        }

        public int getMon() {
            return this.mMon;
        }

        public int getDay() {
            return this.mDay;
        }

        public int getWeek() {
            return this.mWeek;
        }

        public int getHour() {
            return this.mHour;
        }

        public int getMin() {
            return this.mMin;
        }

        public int getSec() {
            return this.mSec;
        }

        public int getPeriodOfDay() {
            return this.mPeriodOfDay;
        }

        public int getCalendarTypeOfText() {
            return this.mCalendarTypeOfText;
        }

        public int getExpressType() {
            return this.mExpressType;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Unit extends Slot<T>.SlotValue {

        @SerializedName("amount")
        private Slot<T>.Unit.AmountBean mAmount;

        @SerializedName("lower_amount")
        private Slot<T>.Unit.LowerAmountBean mLowerAmount;

        @SerializedName("original_offset")
        private int mOriginalOffset;

        @SerializedName("unit")
        private String mUnit;

        @SerializedName("unit_number_type")
        private int mUnitNumberType;

        @SerializedName("upper_amount")
        private Slot<T>.Unit.UpperAmountBean mUpperAmount;

        public Unit() {
            super();
        }

        public Slot<T>.Unit.AmountBean getAmount() {
            return this.mAmount;
        }

        public String getAmountInteger() {
            return this.mAmount.getInteger();
        }

        public Slot<T>.Unit.LowerAmountBean getLowerAmount() {
            return this.mLowerAmount;
        }

        public int getOriginalOffset() {
            return this.mOriginalOffset;
        }

        public String getUnit() {
            return this.mUnit;
        }

        public int getUnitNumberType() {
            return this.mUnitNumberType;
        }

        public Slot<T>.Unit.UpperAmountBean getUpperAmount() {
            return this.mUpperAmount;
        }

        @Keep
        /* loaded from: /home/user/work/dex/classes.dex */
        public class AmountBean {

            @SerializedName("decimal")
            private String mDecimal;

            @SerializedName("fraction")
            private String mFraction;

            @SerializedName("integer")
            private String mInteger;

            @SerializedName("number_type")
            private int mNumberType;

            @SerializedName("ordinal")
            private String mOrdinal;

            @SerializedName("original_offset")
            private int mOriginalOffset;

            @SerializedName("original_text")
            private String mOriginalText;

            public AmountBean() {
            }

            public String getDecimal() {
                return this.mDecimal;
            }

            public String getFraction() {
                return this.mFraction;
            }

            public String getInteger() {
                return this.mInteger;
            }

            public int getNumberType() {
                return this.mNumberType;
            }

            public String getOrdinal() {
                return this.mOrdinal;
            }

            public int getOriginalOffset() {
                return this.mOriginalOffset;
            }

            public String getOriginalText() {
                return this.mOriginalText;
            }
        }

        @Keep
        /* loaded from: /home/user/work/dex/classes.dex */
        public class LowerAmountBean {

            @SerializedName("decimal")
            private String mDecimal;

            @SerializedName("fraction")
            private String mFraction;

            @SerializedName("integer")
            private String mInteger;

            @SerializedName("number_type")
            private int mNumberType;

            @SerializedName("ordinal")
            private String mOrdinal;

            @SerializedName("original_offset")
            private int mOriginalOffset;

            @SerializedName("original_text")
            private String mOriginalText;

            public LowerAmountBean() {
            }

            public String getDecimal() {
                return this.mDecimal;
            }

            public String getFraction() {
                return this.mFraction;
            }

            public String getInteger() {
                return this.mInteger;
            }

            public int getNumberType() {
                return this.mNumberType;
            }

            public String getOrdinal() {
                return this.mOrdinal;
            }

            public int getOriginalOffset() {
                return this.mOriginalOffset;
            }

            public String getOriginalText() {
                return this.mOriginalText;
            }
        }

        @Keep
        /* loaded from: /home/user/work/dex/classes.dex */
        public class UpperAmountBean {

            @SerializedName("decimal")
            private String mDecimal;

            @SerializedName("fraction")
            private String mFraction;

            @SerializedName("integer")
            private String mInteger;

            @SerializedName("number_type")
            private int mNumberType;

            @SerializedName("ordinal")
            private String mOrdinal;

            @SerializedName("original_offset")
            private int mOriginalOffset;

            @SerializedName("original_text")
            private String mOriginalText;

            public UpperAmountBean() {
            }

            public String getDecimal() {
                return this.mDecimal;
            }

            public String getFraction() {
                return this.mFraction;
            }

            public String getInteger() {
                return this.mInteger;
            }

            public int getNumberType() {
                return this.mNumberType;
            }

            public String getOrdinal() {
                return this.mOrdinal;
            }

            public int getOriginalOffset() {
                return this.mOriginalOffset;
            }

            public String getOriginalText() {
                return this.mOriginalText;
            }
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Confirm extends Slot<T>.SlotValue {

        @SerializedName("confirm")
        private int mValue;

        public Confirm() {
            super();
        }

        public int getValue() {
            return this.mValue;
        }
    }
}
