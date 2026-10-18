package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.enums.DomainType;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class Domain {
    protected String domainType;
    protected boolean keepSessionDM;
    protected Set<Skill> skills;

    public Domain(String str) {
        this.domainType = str;
    }

    public Domain(DomainType domainType, HashSet<Skill> hashSet) {
        this(domainType.name(), hashSet);
    }

    public Domain(String str, HashSet<Skill> hashSet) {
        this.domainType = str;
        this.skills = Collections.newSetFromMap(new ConcurrentHashMap());
        this.skills.addAll(hashSet);
    }

    public synchronized void addSkill(Skill skill) {
        if (skill != null) {
            if (this.skills == null) {
                this.skills = Collections.newSetFromMap(new ConcurrentHashMap());
            }
            this.skills.add(skill);
        }
    }

    public synchronized String getDomainType() {
        return this.domainType;
    }

    @Deprecated
    public synchronized HashSet<Skill> getSkills() {
        HashSet<Skill> hashSet;
        hashSet = new HashSet<>();
        hashSet.addAll(this.skills);
        return hashSet;
    }

    public synchronized Set<Skill> getSkillSet() {
        return this.skills;
    }

    public synchronized void setSkills(HashSet<Skill> hashSet) {
        if (hashSet != null) {
            if (this.skills == null) {
                this.skills = Collections.newSetFromMap(new ConcurrentHashMap());
            } else if (this.skills.size() != 0) {
                this.skills.clear();
            } else if (hashSet.contains(null)) {
                hashSet.remove(null);
            }
            this.skills.addAll(hashSet);
        }
    }

    public boolean isKeepSessionDM() {
        return this.keepSessionDM;
    }

    public void setKeepSessionDM(boolean z) {
        this.keepSessionDM = z;
    }

    public synchronized Skill getSkill(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.skills == null) {
            return null;
        }
        for (Skill skill : this.skills) {
            if (str.equals(skill.getSkillType())) {
                return skill;
            }
        }
        if (Skill.UNIVERSAL_SKILL.equals(str)) {
            return null;
        }
        return getSkill(Skill.UNIVERSAL_SKILL);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.domainType != null && this.domainType.equals(((Domain) obj).domainType);
    }

    public int hashCode() {
        return 527 + (this.domainType == null ? 0 : this.domainType.hashCode());
    }
}
