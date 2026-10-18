package com.tencent.wecarspeech.sdk.manager;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.ITelClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.constants.CallRecordType;
import com.tencent.wecarspeech.sdk.model.PhoneContact;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class SSATelManager extends b {
    private static volatile SSATelManager b;
    private ITelClient<ActionRet> c;
    private Boolean d;
    private Boolean e;
    private Boolean f;
    private ArrayList<PhoneContact> g;

    private SSATelManager() {
    }

    private byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.c == null) {
            LogUtils.w(this.f207a, "handlerTelCallFocus return, mITelClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerTelCallFocus");
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString("e_contact_name");
            try {
                str3 = jSONObject.optString("e_contact_number");
            } catch (JSONException e) {
                e = e;
                LogUtils.e(this.f207a, e.toString());
                str3 = null;
                if (TextUtils.isEmpty(str2)) {
                    LogUtils.w(this.f207a, "handlerTelCallFocus return, name and  number all is null");
                }
                LogUtils.t(this.f207a, "==+call(), name:" + str2 + ", number:" + str3);
                ActionRet call = this.c.call(new PhoneContact(str2, str3));
                LogUtils.t(this.f207a, "==-call(), name:" + str2 + ", number:" + str3);
                LogUtils.t(this.f207a, "-handlerTelCallFocus");
                return a(call);
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            LogUtils.w(this.f207a, "handlerTelCallFocus return, name and  number all is null");
        }
        LogUtils.t(this.f207a, "==+call(), name:" + str2 + ", number:" + str3);
        ActionRet call2 = this.c.call(new PhoneContact(str2, str3));
        LogUtils.t(this.f207a, "==-call(), name:" + str2 + ", number:" + str3);
        LogUtils.t(this.f207a, "-handlerTelCallFocus");
        return a(call2);
    }

    private byte[] a(byte[] bArr) {
        String str;
        if (this.c == null) {
            LogUtils.w(this.f207a, "handleGetRecentCall return, mITelClient == null");
            return null;
        }
        LogUtils.t(this.f207a, "+handleGetRecentCall");
        try {
            str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_PHONEBOOK_RECORD_TYPE);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
            str = "";
        }
        char c = 65535;
        int hashCode = str.hashCode();
        int i = 1;
        if (hashCode != 770870) {
            if (hashCode != 771059) {
                if (hashCode == 844219 && str.equals(CallRecordType.TYPE_CALL_RECORD_MISS)) {
                    c = 1;
                }
            } else if (str.equals(CallRecordType.TYPE_CALL_RECORD_ANSWER)) {
                c = 0;
            }
        } else if (str.equals(CallRecordType.TYPE_CALL_RECORD_DIAL)) {
            c = 2;
        }
        switch (c) {
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
        LogUtils.t(this.f207a, "==+getRecentContact(),callType:" + i);
        PhoneContact recentContact = this.c.getRecentContact(i);
        LogUtils.t(this.f207a, "==-getRecentContact(),callType:" + i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_contact_name", recentContact.getName());
            jSONObject.put("e_contact_number", recentContact.getNumber());
        } catch (JSONException e2) {
            LogUtils.e(this.f207a, e2.toString());
        }
        LogUtils.t(this.f207a, "-handleGetRecentCall");
        return jSONObject.toString().getBytes();
    }

    private byte[] b(byte[] bArr) {
        String str;
        if (this.c == null) {
            LogUtils.w(this.f207a, "handlerCallRecord return, mITelClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerCallRecord");
        try {
            str = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_PHONEBOOK_RECORD_TYPE);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
            str = "";
        }
        char c = 65535;
        int hashCode = str.hashCode();
        int i = 1;
        if (hashCode != 770870) {
            if (hashCode != 771059) {
                if (hashCode == 844219 && str.equals(CallRecordType.TYPE_CALL_RECORD_MISS)) {
                    c = 1;
                }
            } else if (str.equals(CallRecordType.TYPE_CALL_RECORD_ANSWER)) {
                c = 0;
            }
        } else if (str.equals(CallRecordType.TYPE_CALL_RECORD_DIAL)) {
            c = 2;
        }
        switch (c) {
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
        LogUtils.t(this.f207a, "==+viewCallRecord(), calltype:" + i);
        ActionRet viewCallRecord = this.c.viewCallRecord(i);
        LogUtils.t(this.f207a, "==-viewCallRecord(), calltype:" + i);
        LogUtils.t(this.f207a, "-handlerCallRecord");
        return a(viewCallRecord);
    }

    public static SSATelManager getInstance() {
        if (b == null) {
            synchronized (SSATelManager.class) {
                if (b == null) {
                    b = new SSATelManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+uploadThirdAppList, connected:" + z);
        if (this.c != null) {
            a.a().a(ActionCallbackDef.ACTION_TEL_SET_ENABLED, new byte[0]);
        }
        if (this.d != null && this.e != null) {
            setIncomingCallStrategy(this.d.booleanValue(), this.e.booleanValue());
        }
        if (this.f != null) {
            notifyBluetoothStatus(this.f.booleanValue());
        }
        uploadTelContacts(this.g);
        LogUtils.t(this.f207a, "-uploadThirdAppList, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3;
        String str4;
        byte[] bArr2 = null;
        if (this.c == null) {
            LogUtils.w(this.f207a, "callback return, mITelClient == null");
            return null;
        }
        String str5 = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+callback, caller:");
        sb.append(str);
        sb.append(", callback:");
        sb.append(str2);
        sb.append(", data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str5, sb.toString());
        if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_CALL)) {
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_ANSWER)) {
                LogUtils.t(this.f207a, "==+answerInComingCall()");
                bArr2 = a(this.c.answerInComingCall());
                str3 = this.f207a;
                str4 = "==-answerInComingCall()";
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_REFUSE)) {
                LogUtils.t(this.f207a, "==+refuseInComingCall()");
                bArr2 = a(this.c.refuseInComingCall());
                str3 = this.f207a;
                str4 = "==-refuseInComingCall()";
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_PHONEBOOK_VIEW)) {
                LogUtils.t(this.f207a, "==+viewPhonebook()");
                bArr2 = a(this.c.viewPhonebook());
                str3 = this.f207a;
                str4 = "==-viewPhonebook()";
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_PHONEBOOK_RECORD)) {
                if (bArr != null) {
                    bArr2 = b(bArr);
                }
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_TEL_RECENT_CALL)) {
                String str6 = this.f207a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("-callback, caller:");
                sb2.append(str);
                sb2.append(", callback:");
                sb2.append(str2);
                sb2.append(", data:");
                sb2.append(bArr == null ? "null" : new String(bArr));
                LogUtils.t(str6, sb2.toString());
                if (bArr != null) {
                    bArr2 = a(bArr);
                }
            }
            LogUtils.t(str3, str4);
        } else if (bArr != null) {
            bArr2 = a(str, bArr);
        }
        String str7 = this.f207a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("-callback, caller:");
        sb3.append(str);
        sb3.append(", callback:");
        sb3.append(str2);
        sb3.append(", data:");
        sb3.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str7, sb3.toString());
        return bArr2;
    }

    public void notifyBluetoothStatus(boolean z) {
        LogUtils.t(this.f207a, "+notifyBluetoothStatus, isConnected:" + z);
        this.f = Boolean.valueOf(z);
        a(ActionCallbackDef.EXTRA_K_TEL_BT_STATUS, z);
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_BT_STATUS, a());
        LogUtils.t(this.f207a, "-notifyBluetoothStatus, isConnected:" + z);
    }

    public void notifyTelCallStatus(int i, PhoneContact phoneContact) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+notifyTelCallStatus, status:");
        sb.append(i);
        sb.append(", contact:");
        sb.append(phoneContact == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        a("e_status_id", i);
        if (phoneContact != null) {
            if (phoneContact.getName() != null) {
                a("e_contact_name", phoneContact.getName());
            }
            if (phoneContact.getNumber() != null) {
                a("e_contact_number", phoneContact.getNumber());
            }
        }
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_STATUS, a());
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyTelCallStatus, status:");
        sb2.append(i);
        sb2.append(", contact:");
        sb2.append(phoneContact == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void setIncomingCallStrategy(boolean z, boolean z2) {
        LogUtils.t(this.f207a, "+setIncomingCallStrategy, startTtsTip:" + z + ", startSpeechRecognition:" + z2);
        this.e = Boolean.valueOf(z2);
        this.d = Boolean.valueOf(z);
        a(ActionCallbackDef.EXTRA_K_INCOMING_STRATEGY_TTS, z);
        a(ActionCallbackDef.EXTRA_K_INCOMING_STRATEGY_ASR, z2);
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_INCOMING_STRATEGY, a());
        LogUtils.t(this.f207a, "-setIncomingCallStrategy, startTtsTip:" + z + ", startSpeechRecognition:" + z2);
    }

    public void setTelClient(ITelClient<ActionRet> iTelClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setTelClient, telClient:");
        sb.append(iTelClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iTelClient;
        a.a().a(ActionCallbackDef.ACTION_TEL_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setTelClient, telClient:");
        sb2.append(iTelClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public int uploadTelContacts(ArrayList<PhoneContact> arrayList) {
        this.g = arrayList;
        LogUtils.t(this.f207a, "+uploadTelContacts, contacts");
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null) {
            try {
                if (!arrayList.isEmpty()) {
                    Iterator<PhoneContact> it = arrayList.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        PhoneContact next = it.next();
                        if (!TextUtils.isEmpty(next.getName())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("e_contact_name", next.getName());
                            jSONObject.put("e_contact_number", next.getNumber());
                            jSONArray.put(jSONObject);
                            i++;
                            if (i >= 2000) {
                                break;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                LogUtils.e(this.f207a, e.toString());
            }
        }
        byte[] bytes = jSONArray.toString().getBytes();
        int i2 = this.g.size() > 2000 ? -2 : 0;
        if (bytes.length <= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            a.a().a(ActionCallbackDef.ACTION_TEL_SET_CONTACT_LIST, bytes);
        } else {
            i2 = -1;
        }
        LogUtils.t(this.f207a, "-uploadTelContacts, contacts");
        return i2;
    }
}
