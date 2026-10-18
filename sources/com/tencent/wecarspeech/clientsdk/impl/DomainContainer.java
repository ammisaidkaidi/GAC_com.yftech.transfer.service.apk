package com.tencent.wecarspeech.clientsdk.impl;

import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.enums.DomainType;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;
import com.tencent.wecarspeech.clientsdk.model.Domain;
import com.tencent.wecarspeech.clientsdk.model.Skill;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class DomainContainer {
    private static final String TAG = "DomainContainer";
    private volatile Set<Domain> mSystemDomainSet = Collections.newSetFromMap(new ConcurrentHashMap());
    private volatile Set<Domain> mAppDomainSet = Collections.newSetFromMap(new ConcurrentHashMap());

    public void registerAppDomain(Domain domain) {
        if (domain == null) {
            return;
        }
        this.mAppDomainSet.add(domain);
    }

    public void unregisterAppDomain(String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("domainType or skill cannot be empty"));
            return;
        }
        Iterator<Domain> it = this.mAppDomainSet.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().getDomainType())) {
                it.remove();
            }
        }
    }

    public void registerAppSkill(String str, Skill skill) {
        if (TextUtils.isEmpty(str) || skill == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("domainType or skill cannot be empty"));
            return;
        }
        Domain appDomain = getAppDomain(str);
        if (appDomain == null) {
            appDomain = new Domain(str);
        }
        appDomain.addSkill(skill);
        this.mAppDomainSet.add(appDomain);
    }

    public void unregisterAppSkill(String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("skillId cannot be empty"));
        } else {
            unregisterSkillFromDomainSet(str, this.mAppDomainSet);
        }
    }

    public void registerSystemSkill(DomainType domainType, Skill skill) {
        if (domainType == null) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("type cannot be null"));
        } else {
            registerSystemSkill(domainType.name(), skill);
        }
    }

    public synchronized void registerSystemSkill(String str, Skill skill) {
        if (!TextUtils.isEmpty(str) && skill != null) {
            Domain systemDomain = getSystemDomain(str);
            if (systemDomain == null) {
                systemDomain = new Domain(str);
            }
            systemDomain.addSkill(skill);
            this.mSystemDomainSet.add(systemDomain);
            return;
        }
        ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("domainType or skill cannot be empty"));
    }

    public synchronized void unregisterSystemSkill(String str) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("skillId cannot be empty"));
            return;
        }
        LogUtils.d(TAG, "DomainContainer unregisterSystemSkill: " + str + "  this: " + this);
        unregisterSkillFromDomainSet(str, this.mSystemDomainSet);
    }

    private void unregisterSkillFromDomainSet(String str, Set<Domain> set) {
        if (set != null) {
            boolean z = false;
            Iterator<Domain> it = set.iterator();
            while (it.hasNext()) {
                Set<Skill> skillSet = it.next().getSkillSet();
                if (skillSet != null) {
                    Iterator<Skill> it2 = skillSet.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (str.equals(it2.next().getSkillId())) {
                            it2.remove();
                            z = true;
                            break;
                        }
                    }
                }
                if (z) {
                    return;
                }
            }
        }
    }

    private Domain getAppDomain(String str) {
        LogUtils.d(TAG, "DomainContainer getAppDomain: " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        LogUtils.d(TAG, "DomainContainer getAppDomain mAppDomainSet: " + this.mAppDomainSet.toString() + "  size: " + this.mAppDomainSet.size() + "  this: " + this);
        for (Domain domain : this.mAppDomainSet) {
            if (str.equals(domain.getDomainType())) {
                return domain;
            }
        }
        return null;
    }

    public Skill getAppSkill(String str, String str2) {
        Domain appDomain = getAppDomain(str);
        if (appDomain != null) {
            return appDomain.getSkill(str2);
        }
        return null;
    }

    public Skill getSystemSkill(String str, String str2) {
        Domain systemDomain = getSystemDomain(str);
        if (systemDomain != null) {
            return systemDomain.getSkill(str2);
        }
        return null;
    }

    public synchronized Domain getSystemDomain(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Domain domain : this.mSystemDomainSet) {
            if (str.equals(domain.getDomainType())) {
                return domain;
            }
        }
        return null;
    }

    public synchronized Set<Domain> getSystemDomainSet() {
        return this.mSystemDomainSet;
    }

    public Set<Domain> getAppDomainSet() {
        return this.mAppDomainSet;
    }
}
