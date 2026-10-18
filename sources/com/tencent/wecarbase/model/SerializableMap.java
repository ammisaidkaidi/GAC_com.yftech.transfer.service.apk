package com.tencent.wecarbase.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class SerializableMap implements Serializable {
    private Map<String, String> map;

    public SerializableMap() {
    }

    public SerializableMap(Map<String, String> map) {
        this.map = map;
    }

    public Map<String, String> getMap() {
        return this.map;
    }

    public void setMap(Map<String, String> map) {
        if (this.map == null) {
            this.map = new HashMap();
        }
        this.map.clear();
        this.map.putAll(map);
    }
}
