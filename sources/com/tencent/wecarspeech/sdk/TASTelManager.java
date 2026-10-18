package com.tencent.wecarspeech.sdk;

import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASTelManager extends b {
    private static final String b = LogUtils.GLOBAL_LOG_TAG + TASTelManager.class.getSimpleName();
    private static volatile TASTelManager c;
    private ITelClient d;
    private Boolean e;
    private Boolean f;
    private Boolean g;
    private ArrayList<PhoneContact> h;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CallRecordType {
        public static final int CALL_RECORD_ALL = 0;
        public static final int CALL_RECORD_ANSWER = 3;
        public static final int CALL_RECORD_DIAL = 1;
        public static final int CALL_RECORD_MISS = 2;
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ITelClient {
        void answerInComingCall();

        void call(PhoneContact phoneContact);

        PhoneContact getRecentContact(int i);

        @Deprecated
        int getTelCallStatus();

        @Deprecated
        void ignoreInComingCall();

        void refuseInComingCall();

        void viewCallRecord(int i);

        void viewPhonebook();
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PhoneContact {

        /* renamed from: a, reason: collision with root package name */
        private String f203a;
        private String b;

        public PhoneContact(String str, String str2) {
            this.f203a = str;
            this.b = str2;
        }

        public String getName() {
            return this.f203a;
        }

        public String getNumber() {
            return this.b;
        }
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PhoneStatus {
        public static final int PHONE_STATUS_END_CALL = 3;
        public static final int PHONE_STATUS_INCOMING_CALL = 0;
        public static final int PHONE_STATUS_IN_CALL = 2;
        public static final int PHONE_STATUS_OUTCOMING_CALL = 1;
    }

    private TASTelManager() {
    }

    private byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.d == null) {
            LogUtils.w(b, "handlerTelCallFocus return, mITelClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerTelCallFocus");
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString("e_contact_name");
            try {
                str3 = jSONObject.optString("e_contact_number");
            } catch (JSONException e) {
                e = e;
                LogUtils.e(b, e.toString());
                str3 = null;
                if (TextUtils.isEmpty(str2)) {
                    LogUtils.w(b, "handlerTelCallFocus return, name and  number all is null");
                }
                LogUtils.t(b, "==+call(), name:" + str2 + ", number:" + str3);
                this.d.call(new PhoneContact(str2, str3));
                LogUtils.t(b, "==-call(), name:" + str2 + ", number:" + str3);
                LogUtils.t(b, "-handlerTelCallFocus");
                return null;
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            LogUtils.w(b, "handlerTelCallFocus return, name and  number all is null");
        }
        LogUtils.t(b, "==+call(), name:" + str2 + ", number:" + str3);
        this.d.call(new PhoneContact(str2, str3));
        LogUtils.t(b, "==-call(), name:" + str2 + ", number:" + str3);
        LogUtils.t(b, "-handlerTelCallFocus");
        return null;
    }

    private byte[] a(byte[] bArr) {
        String str;
        if (this.d == null) {
            LogUtils.w(b, "handleGetRecentCall return, mITelClient == null");
            return null;
        }
        LogUtils.t(b, "+handleGetRecentCall");
        try {
            str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_PHONEBOOK_RECORD_TYPE);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
            str = "";
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        int i = 1;
        if (hashCode != 770870) {
            if (hashCode != 771059) {
                if (hashCode == 844219 && str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_MISS)) {
                    c2 = 1;
                }
            } else if (str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_ANSWER)) {
                c2 = 0;
            }
        } else if (str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_DIAL)) {
            c2 = 2;
        }
        switch (c2) {
            case 0:
                i = 3;
                break;
            case 1:
                i = 2;
                break;
            case 2:
                break;
            default:
                i = 0;
                break;
        }
        LogUtils.t(b, "==+getRecentContact(),callType:" + i);
        PhoneContact recentContact = this.d.getRecentContact(i);
        LogUtils.t(b, "==-getRecentContact(),callType:" + i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_contact_name", recentContact.f203a);
            jSONObject.put("e_contact_number", recentContact.b);
        } catch (JSONException e2) {
            LogUtils.e(b, e2.toString());
        }
        LogUtils.t(b, "-handleGetRecentCall");
        return jSONObject.toString().getBytes();
    }

    private byte[] b(String str, byte[] bArr) {
        if (this.d == null) {
            LogUtils.w(b, "handlerTelCallFocus return, mITelClient == null");
            return null;
        }
        LogUtils.t(b, "+handlerGetTelStatusFocus");
        LogUtils.t(b, "==+getTelCallStatus()");
        int telCallStatus = this.d.getTelCallStatus();
        LogUtils.t(b, "==-getTelCallStatus()");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_status_id", telCallStatus);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        LogUtils.t(b, "-handlerGetTelStatusFocus");
        return jSONObject.toString().getBytes();
    }

    private byte[] b(byte[] bArr) {
        String str;
        if (this.d == null) {
            LogUtils.w(b, "handlerCallRecord return, mITelClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerCallRecord");
        try {
            str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_PHONEBOOK_RECORD_TYPE);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
            str = "";
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        int i = 1;
        if (hashCode != 770870) {
            if (hashCode != 771059) {
                if (hashCode == 844219 && str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_MISS)) {
                    c2 = 1;
                }
            } else if (str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_ANSWER)) {
                c2 = 0;
            }
        } else if (str.equals(com.tencent.wecarspeech.sdk.constants.CallRecordType.TYPE_CALL_RECORD_DIAL)) {
            c2 = 2;
        }
        switch (c2) {
            case 0:
                i = 3;
                break;
            case 1:
                i = 2;
                break;
            case 2:
                break;
            default:
                i = 0;
                break;
        }
        LogUtils.t(b, "==+viewCallRecord(), calltype:" + i);
        this.d.viewCallRecord(i);
        LogUtils.t(b, "==-viewCallRecord(), calltype:" + i);
        LogUtils.t(b, "-handlerCallRecord");
        return null;
    }

    public static TASTelManager getInstance() {
        if (c == null) {
            synchronized (TASTelManager.class) {
                if (c == null) {
                    c = new TASTelManager();
                }
            }
        }
        return c;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(b, "+uploadThirdAppList, connected:" + z);
        if (this.d != null) {
            a.a().a(ActionCallbackDef.ACTION_TEL_SET_ENABLED, new byte[0]);
        }
        if (this.e != null && this.f != null) {
            setIncomingCallStrategy(this.e.booleanValue(), this.f.booleanValue());
        }
        if (this.g != null) {
            notifyBluetoothStatus(this.g.booleanValue());
        }
        uploadTelContacts(this.h);
        LogUtils.t(b, "-uploadThirdAppList, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3;
        String str4;
        if (this.d == null) {
            LogUtils.w(b, "callback return, mITelClient == null");
            return null;
        }
        String str5 = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+callback, caller:");
        sb.append(str);
        sb.append(", callback:");
        sb.append(str2);
        sb.append(", data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str5, sb.toString());
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_CALL)) {
            a(str, bArr);
        } else {
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_ANSWER)) {
                LogUtils.t(b, "==+answerInComingCall()");
                this.d.answerInComingCall();
                str3 = b;
                str4 = "==-answerInComingCall()";
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_REFUSE)) {
                LogUtils.t(b, "==+refuseInComingCall()");
                this.d.refuseInComingCall();
                str3 = b;
                str4 = "==-refuseInComingCall()";
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_IGNORE)) {
                LogUtils.t(b, "==+ignoreInComingCall()");
                this.d.ignoreInComingCall();
                str3 = b;
                str4 = "==-ignoreInComingCall()";
            } else {
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_GET_STATUS)) {
                    String str6 = b;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("-callback, caller:");
                    sb2.append(str);
                    sb2.append(", callback:");
                    sb2.append(str2);
                    sb2.append(", data:");
                    sb2.append(bArr == null ? "null" : new String(bArr));
                    LogUtils.t(str6, sb2.toString());
                    return b(str, bArr);
                }
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_PHONEBOOK_VIEW)) {
                    LogUtils.t(b, "==+viewPhonebook()");
                    this.d.viewPhonebook();
                    str3 = b;
                    str4 = "==-viewPhonebook()";
                } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_PHONEBOOK_RECORD)) {
                    if (bArr != null) {
                        b(bArr);
                    }
                } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_RECENT_CALL)) {
                    String str7 = b;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("-callback, caller:");
                    sb3.append(str);
                    sb3.append(", callback:");
                    sb3.append(str2);
                    sb3.append(", data:");
                    sb3.append(bArr == null ? "null" : new String(bArr));
                    LogUtils.t(str7, sb3.toString());
                    if (bArr != null) {
                        return a(bArr);
                    }
                }
            }
            LogUtils.t(str3, str4);
        }
        String str8 = b;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("-callback, caller:");
        sb4.append(str);
        sb4.append(", callback:");
        sb4.append(str2);
        sb4.append(", data:");
        sb4.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str8, sb4.toString());
        return null;
    }

    public void notifyBluetoothStatus(boolean z) {
        LogUtils.t(b, "+notifyBluetoothStatus, isConnected:" + z);
        this.g = Boolean.valueOf(z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_TEL_BT_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_BT_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(b, "-notifyBluetoothStatus, isConnected:" + z);
    }

    public void notifyTelCallStatus(int i, PhoneContact phoneContact) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+notifyTelCallStatus, status:");
        sb.append(i);
        sb.append(", contact:");
        sb.append(phoneContact == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_status_id", i);
            if (phoneContact != null) {
                if (phoneContact.getName() != null) {
                    jSONObject.put("e_contact_name", phoneContact.getName());
                }
                if (phoneContact.getNumber() != null) {
                    jSONObject.put("e_contact_number", phoneContact.getNumber());
                }
            }
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_STATUS, jSONObject.toString().getBytes());
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyTelCallStatus, status:");
        sb2.append(i);
        sb2.append(", contact:");
        sb2.append(phoneContact == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void setIncomingCallStrategy(boolean z, boolean z2) {
        LogUtils.t(b, "+setIncomingCallStrategy, startTtsTip:" + z + ", startSpeechRecognition:" + z2);
        this.f = Boolean.valueOf(z2);
        this.e = Boolean.valueOf(z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_INCOMING_STRATEGY_TTS, z);
            jSONObject.put(ActionCallbackDef.EXTRA_K_INCOMING_STRATEGY_ASR, z2);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_INCOMING_STRATEGY, jSONObject.toString().getBytes());
        LogUtils.t(b, "-setIncomingCallStrategy, startTtsTip:" + z + ", startSpeechRecognition:" + z2);
    }

    @Deprecated
    public void setTelClient(ITelClient iTelClient) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+setTelClient, telClient:");
        sb.append(iTelClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.d = iTelClient;
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_ENABLED, new byte[0]);
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setTelClient, telClient:");
        sb2.append(iTelClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void uploadDeviceBluetoothInfo(String str, String str2) {
        LogUtils.t(b, "+uploadDeviceBluetoothInfo, name:" + str + ", mac:" + str2);
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(ActionCallbackDef.EXTRA_K_BT_NAME, str);
            } catch (JSONException e) {
                LogUtils.e(b, e.toString());
            }
        }
        if (str2 != null) {
            jSONObject.put(ActionCallbackDef.EXTRA_K_BT_MAC, str2);
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_DEVICE_BT_INFO, jSONObject.toString().getBytes());
        LogUtils.t(b, "-uploadDeviceBluetoothInfo, name:" + str + ", mac:" + str2);
    }

    @Deprecated
    public void uploadMobileBluetoothInfo(String str, String str2) {
        LogUtils.t(b, "+uploadMobileBluetoothInfo, name:" + str + ", mac:" + str2);
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(ActionCallbackDef.EXTRA_K_BT_NAME, str);
            } catch (JSONException e) {
                LogUtils.e(b, e.toString());
            }
        }
        if (str2 != null) {
            jSONObject.put(ActionCallbackDef.EXTRA_K_BT_MAC, str2);
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_MOBILE_BT_INFO, jSONObject.toString().getBytes());
        LogUtils.t(b, "-uploadMobileBluetoothInfo, name:" + str + ", mac:" + str2);
    }

    public void uploadTelContacts(ArrayList<PhoneContact> arrayList) {
        this.h = arrayList;
        LogUtils.t(b, "+uploadTelContacts, contacts");
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null) {
            try {
                if (!arrayList.isEmpty()) {
                    Iterator<PhoneContact> it = arrayList.iterator();
                    while (it.hasNext()) {
                        PhoneContact next = it.next();
                        if (!TextUtils.isEmpty(next.getName())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("e_contact_name", next.getName());
                            jSONObject.put("e_contact_number", next.getNumber());
                            jSONArray.put(jSONObject);
                        }
                    }
                }
            } catch (JSONException e) {
                LogUtils.e(b, e.toString());
            }
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_CONTACT_LIST, jSONArray.toString().getBytes());
        LogUtils.t(b, "-uploadTelContacts, contacts");
    }
}
