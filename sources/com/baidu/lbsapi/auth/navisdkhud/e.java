package com.baidu.lbsapi.auth.navisdkhud;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    private Context f31a;
    private List b = null;
    private a c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(Context context) {
        this.f31a = context;
    }

    private List a(HashMap hashMap, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        if (strArr == null || strArr.length <= 0) {
            HashMap hashMap2 = new HashMap();
            Iterator it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                String str = ((String) it.next()).toString();
                hashMap2.put(str, hashMap.get(str));
            }
            arrayList.add(hashMap2);
        } else {
            for (String str2 : strArr) {
                HashMap hashMap3 = new HashMap();
                Iterator it2 = hashMap.keySet().iterator();
                while (it2.hasNext()) {
                    String str3 = ((String) it2.next()).toString();
                    hashMap3.put(str3, hashMap.get(str3));
                }
                hashMap3.put("mcode", str2);
                arrayList.add(hashMap3);
            }
        }
        return arrayList;
    }

    private void a(String str) {
        JSONObject jSONObject;
        if (str == null) {
            str = "";
        }
        try {
            jSONObject = new JSONObject(str);
            if (!jSONObject.has(NotificationCompat.CATEGORY_STATUS)) {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, -1);
            }
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, -1);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        if (this.c != null) {
            this.c.a(jSONObject != null ? jSONObject.toString() : new JSONObject().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List list) {
        int i;
        com.baidu.lbsapi.auth.navisdkhud.a.a("syncConnect start Thread id = " + String.valueOf(Thread.currentThread().getId()));
        if (list == null || list.size() == 0) {
            com.baidu.lbsapi.auth.navisdkhud.a.b("syncConnect failed,params list is null or size is 0");
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < list.size()) {
            com.baidu.lbsapi.auth.navisdkhud.a.a("syncConnect resuest " + i2 + "  start!!!");
            HashMap hashMap = (HashMap) list.get(i2);
            g gVar = new g(this.f31a);
            if (gVar.a()) {
                String a2 = gVar.a(hashMap);
                if (a2 == null) {
                    a2 = "";
                }
                com.baidu.lbsapi.auth.navisdkhud.a.a("syncConnect resuest " + i2 + "  result:" + a2);
                arrayList.add(a2);
                try {
                    JSONObject jSONObject = new JSONObject(a2);
                    if (jSONObject.has(NotificationCompat.CATEGORY_STATUS) && jSONObject.getInt(NotificationCompat.CATEGORY_STATUS) == 0) {
                        com.baidu.lbsapi.auth.navisdkhud.a.a("auth end and break");
                        a(a2);
                        return;
                    }
                } catch (JSONException unused) {
                    com.baidu.lbsapi.auth.navisdkhud.a.a("continue-------------------------------");
                }
            } else {
                com.baidu.lbsapi.auth.navisdkhud.a.a("Current network is not available.");
                arrayList.add(ErrorMessage.a("Current network is not available."));
            }
            com.baidu.lbsapi.auth.navisdkhud.a.a("syncConnect end");
            i2++;
        }
        com.baidu.lbsapi.auth.navisdkhud.a.a("--iiiiii:" + i2 + "<><>paramList.size():" + list.size() + "<><>authResults.size():" + arrayList.size());
        if (list.size() <= 0 || i2 != list.size() || arrayList.size() <= 0 || i2 != arrayList.size() || i2 - 1 <= 0) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject((String) arrayList.get(i));
            if (!jSONObject2.has(NotificationCompat.CATEGORY_STATUS) || jSONObject2.getInt(NotificationCompat.CATEGORY_STATUS) == 0) {
                return;
            }
            com.baidu.lbsapi.auth.navisdkhud.a.a("i-1 result is not 0,return first result");
            a((String) arrayList.get(0));
        } catch (JSONException e) {
            a(ErrorMessage.a("JSONException:" + e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(HashMap hashMap, String[] strArr, a aVar) {
        this.b = a(hashMap, strArr);
        this.c = aVar;
        new Thread(new f(this)).start();
    }
}
