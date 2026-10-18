package com.tencent.tai.pal.telephone;

import com.tencent.tai.pal.INoProguardClass;

/* loaded from: /home/user/work/dex/classes.dex */
public class TelephoneConstants implements INoProguardClass {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CallRecordType implements INoProguardClass {
        public static final int CALL_RECORD_ALL = 0;
        public static final int CALL_RECORD_ANSWER = 3;
        public static final int CALL_RECORD_DIAL = 1;
        public static final int CALL_RECORD_MISS = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class JsonKeyDef implements INoProguardClass {
        public static final String KEY_CONTACT_NAME = "e_contact_name";
        public static final String KEY_CONTACT_NUMBER = "e_contact_number";
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PhoneStatus implements INoProguardClass {
        public static final int PHONE_STATUS_END_CALL = 3;
        public static final int PHONE_STATUS_INCOMING_CALL = 0;
        public static final int PHONE_STATUS_IN_CALL = 2;
        public static final int PHONE_STATUS_OUTCOMING_CALL = 1;
    }
}
