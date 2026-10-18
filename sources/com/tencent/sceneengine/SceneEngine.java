package com.tencent.sceneengine;

import a.b.b.a;
import a.b.b.a.g;
import a.b.b.c;
import a.b.b.d;
import a.b.b.f;
import a.b.b.h;
import a.b.b.i;
import a.b.b.k;
import a.b.b.m;
import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.sceneengine.model.SceneMessage;
import com.tencent.sceneengine.model.StopCond;
import com.tencent.sceneengine.model.TriggerCond;
import com.tencent.sceneengine.tai.AppInfo;
import com.tencent.taiutils.GsonUtils;
import com.tencent.taiutils.ThreadPool;
import com.tencent.taiutils.log.LogUtils;
import com.tencent.taiutils.network.HttpRequestMgr;
import com.tencent.wecarbase.cloud.IPushService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SceneEngine {

    /* renamed from: a, reason: collision with root package name */
    public static final String f42a = "SceneEngine";
    public static final String b = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/log";
    public static volatile SceneEngine c;
    public Context d;
    public IPushService i;
    public String j;
    public String k;
    public String l;
    public Timer o;
    public boolean p;
    public String q;
    public String r;
    public String n = "";
    public Runnable s = new f(this);
    public List<a> e = new CopyOnWriteArrayList();
    public List<a> f = new CopyOnWriteArrayList();
    public g h = new g();
    public Handler m = new Handler(Looper.getMainLooper());
    public Map<String, IMessageValidator> g = new ConcurrentHashMap();

    public static SceneEngine a() {
        if (c == null) {
            synchronized (SceneEngine.class) {
                if (c == null) {
                    c = new SceneEngine();
                }
            }
        }
        return c;
    }

    public IMessageValidator a(int i) {
        return this.g.get(String.valueOf(i));
    }

    public String a(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            LogUtils.e(f42a, "getAppName : ", e);
            return "";
        }
    }

    public final void a(long j) {
        LogUtils.d(f42a, "connectService");
        this.m.removeCallbacks(this.s);
        this.m.postDelayed(this.s, j);
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        this.e.add(aVar);
        c();
    }

    public boolean a(SceneMessage sceneMessage, List<StopCond> list) {
        boolean z;
        if (list == null || list.size() <= 0) {
            LogUtils.d(f42a, "stopCondList is empty");
        } else {
            for (StopCond stopCond : list) {
                if (stopCond != null) {
                    IMessageValidator a2 = a(stopCond.stopCondType);
                    if (a2 != null) {
                        if (!a2.isValid(sceneMessage, stopCond)) {
                            z = false;
                            break;
                        }
                    } else {
                        String str = f42a;
                        StringBuilder a3 = a.a.a.a.a.a("cannot find validator for stopCondType=");
                        a3.append(stopCond.stopCondType);
                        LogUtils.d(str, a3.toString());
                    }
                } else {
                    LogUtils.d(f42a, "stopCond is null");
                }
            }
        }
        z = true;
        LogUtils.d(f42a, "finalValid=" + z);
        return z;
    }

    public void b(a aVar) {
        if (aVar == null) {
            return;
        }
        this.e.remove(aVar);
    }

    public boolean b(int i) {
        return this.g.get(String.valueOf(i)) != null;
    }

    public boolean b(SceneMessage sceneMessage) {
        String str;
        String str2;
        String sb;
        if (sceneMessage == null) {
            str = f42a;
            sb = "isValid message is null";
        } else {
            String str3 = f42a;
            StringBuilder a2 = a.a.a.a.a.a("isValid msgLabel = ");
            a2.append(sceneMessage.getMsgLabel());
            a2.append(", msgId=");
            a2.append(sceneMessage.getMsgId());
            LogUtils.d(str3, a2.toString());
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            long msgExpTime = sceneMessage.getMsgExpTime();
            long eventTime = sceneMessage.getEventTime();
            if (msgExpTime < currentTimeMillis) {
                str = f42a;
                StringBuilder a3 = a.a.a.a.a.a("isValid msg expired!  msgId=");
                a3.append(sceneMessage.getMsgId());
                a3.append(" current = ");
                a3.append(currentTimeMillis);
                a3.append(", msgEventTime=");
                a3.append(eventTime);
                a3.append(", msgExpTime = ");
                a3.append(msgExpTime);
                sb = a3.toString();
            } else {
                if (b(sceneMessage.getTriggerCond())) {
                    str = f42a;
                    str2 = "isValid   hasUnknownTriggerConditionType=true  msgLabel = ";
                } else {
                    if (!a(sceneMessage.getStoppedCond())) {
                        List<List<StopCond>> stoppedCond = sceneMessage.getStoppedCond();
                        boolean z = true;
                        if (stoppedCond != null && stoppedCond.size() > 0) {
                            Iterator<List<StopCond>> it = stoppedCond.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (a(sceneMessage, it.next())) {
                                    break;
                                }
                            }
                        } else {
                            String str4 = f42a;
                            StringBuilder a4 = a.a.a.a.a.a("isValid stoppedCond list is null msgId = ");
                            a4.append(sceneMessage.getMsgId());
                            LogUtils.d(str4, a4.toString());
                        }
                        if (!z) {
                            String str5 = f42a;
                            StringBuilder a5 = a.a.a.a.a.a("isValid msg is invalid msgId = ");
                            a5.append(sceneMessage.getMsgId());
                            LogUtils.d(str5, a5.toString());
                        }
                        return z;
                    }
                    str = f42a;
                    str2 = "isValid   hasUnKnownStopConditionType=true  msgLabel = ";
                }
                StringBuilder a6 = a.a.a.a.a.a(str2);
                a6.append(sceneMessage.getMsgLabel());
                a6.append(", msgId=");
                a6.append(sceneMessage.getMsgId());
                sb = a6.toString();
            }
        }
        LogUtils.d(str, sb);
        return false;
    }

    public void c(int i) {
        this.g.remove(String.valueOf(i));
    }

    @Keep
    public void queryMiniProgramsAlongRoute(Category category, String str, String str2, String str3, IQueryCallback iQueryCallback) {
        String str4 = category.ordinal() != 2 ? "" : "加油站";
        if (TextUtils.isEmpty(str4)) {
            if (iQueryCallback != null) {
                StringBuilder a2 = a.a.a.a.a.a("invalid request params,category ");
                a2.append(category.name());
                a2.append(" not supported yet");
                iQueryCallback.onFailed(103, a2.toString());
                return;
            }
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("keyword", str4);
            jSONObject.put("pageSize", 10);
            jSONObject.put("pageIndex", 1);
            jSONObject.put("lat", str);
            jSONObject.put("lon", str2);
            jSONObject.put("routeid", str3);
            HttpRequestMgr.getInstance().post("http://wecar.sparta.html5.qq.com/appletapi/yantu/search/", (Map<String, String>) null, jSONObject, new m(this, iQueryCallback));
        } catch (JSONException e) {
            LogUtils.e(f42a, "queryMiniProgramsAlongRoute JSONException e = ", e);
            if (iQueryCallback != null) {
                iQueryCallback.onFailed(103, "invalid request params");
            }
        }
    }

    @Keep
    public void queryMiniProgramsNearby(Category category, String str, String str2, float f, IQueryCallback iQueryCallback) {
        String str3 = category.ordinal() != 2 ? "" : "加油站";
        if (TextUtils.isEmpty(str3)) {
            if (iQueryCallback != null) {
                StringBuilder a2 = a.a.a.a.a.a("invalid request params,category ");
                a2.append(category.name());
                a2.append(" not supported yet");
                iQueryCallback.onFailed(103, a2.toString());
                return;
            }
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("keyword", str3);
            jSONObject.put("ratio", f);
            jSONObject.put("pageSize", 10);
            jSONObject.put("pageIndex", 1);
            jSONObject.put("lat", str);
            jSONObject.put("lon", str2);
            HttpRequestMgr.getInstance().post("http://wecar.sparta.html5.qq.com/appletapi/tag/search/", (Map<String, String>) null, jSONObject, new k(this, iQueryCallback));
        } catch (JSONException e) {
            LogUtils.e(f42a, "queryMiniProgramsNearby JSONException e = ", e);
            if (iQueryCallback != null) {
                iQueryCallback.onFailed(103, "invalid request params");
            }
        }
    }

    public boolean a(List<List<StopCond>> list) {
        String str = f42a;
        StringBuilder a2 = a.a.a.a.a.a("hasUnKnownStopConditionType oldAllList=");
        a2.append(GsonUtils.mGson.toJson(list));
        LogUtils.i(str, a2.toString());
        if (list != null && list.size() > 0) {
            for (List<StopCond> list2 : list) {
                if (list2 != null && list2.size() > 0) {
                    for (StopCond stopCond : list2) {
                        if (stopCond != null && !b(stopCond.stopCondType)) {
                            String str2 = f42a;
                            StringBuilder a3 = a.a.a.a.a.a("cannot find validator for stopCondType=");
                            a3.append(stopCond.stopCondType);
                            LogUtils.e(str2, a3.toString());
                            return true;
                        }
                    }
                }
            }
        }
        LogUtils.i(f42a, "hasUnKnownStopConditionType end false");
        return false;
    }

    public boolean b(List<List<TriggerCond>> list) {
        String str = f42a;
        StringBuilder a2 = a.a.a.a.a.a("hasUnKnownTriggerConditionType oldAllList=");
        a2.append(GsonUtils.mGson.toJson(list));
        LogUtils.i(str, a2.toString());
        if (list != null && list.size() > 0) {
            for (List<TriggerCond> list2 : list) {
                if (list2 != null && list2.size() > 0) {
                    for (TriggerCond triggerCond : list2) {
                        if (triggerCond != null && !b(triggerCond.triggerCondType)) {
                            String str2 = f42a;
                            StringBuilder a3 = a.a.a.a.a.a("cannot find validator for triggerCondType=");
                            a3.append(triggerCond.triggerCondType);
                            LogUtils.e(str2, a3.toString());
                            return true;
                        }
                    }
                }
            }
        }
        LogUtils.i(f42a, "hasUnKnownTriggerConditionType end false");
        return false;
    }

    public void c() {
        c a2 = c.a();
        StringBuilder a3 = a.a.a.a.a.a("MetaMsgManager begin validate mMessageList.size=");
        List<SceneMessage> list = a2.c;
        a3.append(list != null ? Integer.valueOf(list.size()) : "null");
        LogUtils.d("MetaMsgManager", a3.toString());
        ArrayList arrayList = null;
        boolean z = false;
        for (SceneMessage sceneMessage : a2.c) {
            if (!a().b(sceneMessage)) {
                StringBuilder a4 = a.a.a.a.a.a("MetaMsgManager validate message is inValid, will remove message = ");
                a4.append(GsonUtils.mGson.toJson(sceneMessage));
                LogUtils.d("MetaMsgManager", a4.toString());
                a2.c.remove(sceneMessage);
            } else if (a().a(sceneMessage)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(sceneMessage);
                if (a2.b(sceneMessage)) {
                    a2.c.remove(sceneMessage);
                    LogUtils.d("MetaMsgManager", "MetaMsgManager validate message is isTriggered and shouldDeleteMsgFromCache=true, will remove. message = " + sceneMessage.toString());
                }
            } else {
                StringBuilder a5 = a.a.a.a.a.a("MetaMsgManager isValid but not triggered message = ");
                a5.append(GsonUtils.mGson.toJson(sceneMessage));
                LogUtils.d("MetaMsgManager", a5.toString());
            }
            z = true;
        }
        if (z) {
            a2.b();
        }
        if (arrayList != null) {
            StringBuilder a6 = a.a.a.a.a.a("MetaMsgManager validate message triggeredMsg.size = ");
            a6.append(arrayList.size());
            LogUtils.d("MetaMsgManager", a6.toString());
        }
        StringBuilder a7 = a.a.a.a.a.a("MetaMsgManager end validate mMessageList.size=");
        List<SceneMessage> list2 = a2.c;
        a7.append(list2 != null ? Integer.valueOf(list2.size()) : "null");
        LogUtils.d("MetaMsgManager", a7.toString());
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        String str = f42a;
        StringBuilder a8 = a.a.a.a.a.a("message list ");
        a8.append(String.valueOf(arrayList.size()));
        LogUtils.d(str, a8.toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((SceneMessage) it.next(), false);
        }
    }

    public void a(Context context, String str, String str2, String str3, String str4) {
        LogUtils.d(f42a, "appId=" + str + ", target=" + str2 + ", hostPkg=" + str3 + ", serviceAction=" + str4 + ", accountEnvType=0");
        this.n = str;
        this.j = context.getPackageName();
        this.k = a(context);
        this.q = str3;
        this.r = str4;
        if (TextUtils.isEmpty(str2)) {
            this.l = this.j;
        } else {
            this.l = str2;
        }
        this.d = context.getApplicationContext();
        LogUtils.sOpenLog = true;
        LogUtils.initXlog(b, f42a, "_SceneEngine_");
        String str5 = f42a;
        StringBuilder a2 = a.a.a.a.a.a("TaiSceneMsg init mAppId = ");
        a2.append(this.n);
        a2.append(" mPkgName = ");
        a2.append(this.j);
        a2.append(" mAppName = ");
        a2.append(this.k);
        a2.append(" mTarget = ");
        a2.append(this.l);
        LogUtils.d(str5, a2.toString());
        c.a().a(context, 0);
        a(0L);
        this.o = new Timer();
        this.o.schedule(new d(this), 100L, 10000L);
    }

    public final void b() {
        LogUtils.d(f42a, "registerClient");
        if (this.i == null) {
            return;
        }
        String str = f42a;
        StringBuilder a2 = a.a.a.a.a.a("mAppName = ");
        a2.append(this.k);
        a2.append(" mPkgName = ");
        a2.append(this.j);
        a2.append(" mTarget = ");
        a2.append(this.l);
        a2.append(" mIsReceiveSysMSg = ");
        a2.append(this.p);
        LogUtils.d(str, a2.toString());
        this.i.registerClient(this.n, GsonUtils.mGson.toJson(new AppInfo(this.k, this.j, this.l, this.p)), new a.b.b.g(this));
        this.i.registerMessageListener(this.n, new h(this));
    }

    public boolean a(SceneMessage sceneMessage) {
        boolean z;
        String str;
        String str2;
        String sb;
        if (sceneMessage == null) {
            str = f42a;
            sb = "isTriggered message is null";
        } else {
            String str3 = f42a;
            StringBuilder a2 = a.a.a.a.a.a("isTriggered msgLabel = ");
            a2.append(sceneMessage.getMsgLabel());
            a2.append(", msgId=");
            a2.append(sceneMessage.getMsgId());
            LogUtils.d(str3, a2.toString());
            if (b(sceneMessage.getTriggerCond())) {
                str = f42a;
                str2 = "isTriggered   hasUnknownTriggerConditionType=true  msgLabel = ";
            } else {
                if (!a(sceneMessage.getStoppedCond())) {
                    List<List<TriggerCond>> triggerCond = sceneMessage.getTriggerCond();
                    boolean z2 = true;
                    if (triggerCond != null && triggerCond.size() > 0) {
                        Iterator<List<TriggerCond>> it = triggerCond.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z2 = false;
                                break;
                            }
                            List<TriggerCond> next = it.next();
                            if (next == null || next.size() <= 0) {
                                LogUtils.d(f42a, "triggerCondList is empty");
                            } else {
                                for (TriggerCond triggerCond2 : next) {
                                    if (triggerCond2 != null) {
                                        IMessageValidator a3 = a(triggerCond2.triggerCondType);
                                        if (a3 != null) {
                                            if (!a3.isTriggered(sceneMessage, triggerCond2)) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            String str4 = f42a;
                                            StringBuilder a4 = a.a.a.a.a.a("cannot find validator for triggerCondType=");
                                            a4.append(triggerCond2.triggerCondType);
                                            LogUtils.d(str4, a4.toString());
                                        }
                                    } else {
                                        LogUtils.d(f42a, "triggerCond is null");
                                    }
                                }
                            }
                            z = true;
                            LogUtils.d(f42a, "finalTriggered=" + z);
                            if (z) {
                                break;
                            }
                        }
                    } else {
                        String str5 = f42a;
                        StringBuilder a5 = a.a.a.a.a.a("isTriggered triggerCond list is null  msgId = ");
                        a5.append(sceneMessage.getMsgId());
                        LogUtils.d(str5, a5.toString());
                    }
                    if (!z2) {
                        String str6 = f42a;
                        StringBuilder a6 = a.a.a.a.a.a("isTriggered msg is not triggered now  msgId = ");
                        a6.append(sceneMessage.getMsgId());
                        LogUtils.d(str6, a6.toString());
                    }
                    return z2;
                }
                str = f42a;
                str2 = "isTriggered   hasUnKnownStopConditionType=true  msgLabel = ";
            }
            StringBuilder a7 = a.a.a.a.a.a(str2);
            a7.append(sceneMessage.getMsgLabel());
            a7.append(", msgId=");
            a7.append(sceneMessage.getMsgId());
            sb = a7.toString();
        }
        LogUtils.d(str, sb);
        return false;
    }

    public final void a(SceneMessage sceneMessage, boolean z) {
        if (sceneMessage == null) {
            LogUtils.d(f42a, "no message");
            return;
        }
        List<a> list = this.e;
        if (z) {
            list = this.f;
        }
        String str = f42a;
        StringBuilder a2 = a.a.a.a.a.a("notifyMessage thread=");
        a2.append(Thread.currentThread());
        LogUtils.d(str, a2.toString());
        for (a aVar : list) {
            if (aVar != null) {
                String str2 = f42a;
                StringBuilder a3 = a.a.a.a.a.a("listener ");
                a3.append(aVar.toString());
                LogUtils.d(str2, a3.toString());
                ThreadPool.EXECUTOR.execute(new i(this, aVar, sceneMessage));
            } else {
                LogUtils.e(f42a, "ISceneMessageListener listener is null");
            }
        }
    }

    public void a(String str, boolean z) {
        LogUtils.d(f42a, "TaiSceneMsg onMessageReceived msg = " + str);
        try {
            SceneMessage sceneMessage = (SceneMessage) GsonUtils.mGson.fromJson(str, SceneMessage.class);
            if (sceneMessage == null) {
                return;
            }
            if (!b(sceneMessage)) {
                LogUtils.d(f42a, "TaiSceneMsg onMessageReceived msg is invalid now, discard it.");
                return;
            }
            LogUtils.d(f42a, "TaiSceneMsg onMessageReceived isValid is true");
            if (sceneMessage.getTriggerCond() != null && sceneMessage.getTriggerCond().size() > 0) {
                LogUtils.d(f42a, "TaiSceneMsg onMessageReceived triggerCond not empty ,will store!");
                c a2 = c.a();
                if (a2.a(sceneMessage)) {
                    a2.b();
                }
            }
            if (!a(sceneMessage)) {
                LogUtils.d(f42a, "TaiSceneMsg onMessageReceived msg is not triggered now.");
                return;
            }
            LogUtils.d(f42a, "TaiSceneMsg onMessageReceived isTriggered is true");
            String str2 = f42a;
            StringBuilder a3 = a.a.a.a.a.a("message show ");
            a3.append(sceneMessage.getPayload());
            LogUtils.d(str2, a3.toString());
            a(sceneMessage, z);
            if (c.a().b(sceneMessage)) {
                LogUtils.d(f42a, "TaiSceneMsg onMessageReceived shouldDeleteMsgFromCache is true will remove");
                c a4 = c.a();
                a4.c.remove(sceneMessage);
                a4.b();
            }
        } catch (Exception e) {
            String str3 = f42a;
            StringBuilder a5 = a.a.a.a.a.a("parse json failed: ");
            a5.append(e.getMessage());
            LogUtils.e(str3, a5.toString());
        }
    }

    public void a(int i, IMessageValidator iMessageValidator) {
        if (iMessageValidator != null) {
            this.g.put(String.valueOf(i), iMessageValidator);
        }
    }
}
