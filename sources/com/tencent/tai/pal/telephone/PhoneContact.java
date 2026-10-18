package com.tencent.tai.pal.telephone;

import com.tencent.tai.pal.INoProguardClass;

/* loaded from: /home/user/work/dex/classes.dex */
public class PhoneContact implements INoProguardClass {

    /* renamed from: a, reason: collision with root package name */
    private String f148a;
    private String b;

    public PhoneContact(String str, String str2) {
        this.f148a = str;
        this.b = str2;
    }

    public String getName() {
        return this.f148a;
    }

    public String getNumber() {
        return this.b;
    }

    public String toString() {
        return "name" + this.f148a + ",mNumber" + this.b + "," + super.toString();
    }
}
