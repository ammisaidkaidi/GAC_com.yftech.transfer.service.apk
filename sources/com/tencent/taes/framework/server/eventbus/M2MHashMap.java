package com.tencent.taes.framework.server.eventbus;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class M2MHashMap<K, V> {
    private static final boolean DUMP = false;
    private HashMap<K, Object> map = new HashMap<>();

    public void put(K k, V v) {
        Object obj = this.map.get(k);
        if (obj == null) {
            this.map.put(k, v);
            return;
        }
        if (obj instanceof HashSet) {
            ((HashSet) obj).add(v);
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(obj);
        hashSet.add(v);
        this.map.put(k, hashSet);
    }

    public void remove(K k, V v) {
        Object obj = this.map.get(k);
        if (obj != null) {
            if (!(obj instanceof HashSet)) {
                if (obj == v) {
                    this.map.remove(k);
                }
            } else {
                HashSet hashSet = (HashSet) obj;
                hashSet.remove(v);
                if (hashSet.size() == 0) {
                    this.map.remove(k);
                }
            }
        }
    }

    public void remove(K k) {
        this.map.remove(k);
    }

    public List<K> removeValue(V v) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<K, Object>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, Object> next = it.next();
            K key = next.getKey();
            Object value = next.getValue();
            if (value != null) {
                if (value instanceof HashSet) {
                    HashSet hashSet = (HashSet) value;
                    if (hashSet.remove(v)) {
                        arrayList.add(key);
                    }
                    if (hashSet.size() == 0) {
                        it.remove();
                    }
                } else if (value.equals(v)) {
                    it.remove();
                    arrayList.add(key);
                }
            }
        }
        return arrayList;
    }

    public Set<V> getValueSet(K k) {
        Object obj = this.map.get(k);
        if (obj == null) {
            return null;
        }
        if (obj instanceof HashSet) {
            return (HashSet) obj;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(obj);
        return hashSet;
    }

    public Set<K> keySet() {
        return this.map.keySet();
    }

    public Collection<V> values() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.map.values()) {
            if (obj instanceof HashSet) {
                arrayList.addAll((HashSet) obj);
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public V get(K k) {
        Set<V> valueSet = getValueSet(k);
        if (valueSet == null) {
            return null;
        }
        Iterator<V> it = valueSet.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public boolean contains(K k, V v) {
        Object obj = this.map.get(k);
        if (obj == null) {
            return false;
        }
        if (obj instanceof HashSet) {
            return ((HashSet) obj).contains(v);
        }
        return obj.equals(v);
    }

    public boolean containsKey(K k) {
        return this.map.containsKey(k);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public int size() {
        return this.map.size();
    }

    public void clear() {
        this.map.clear();
    }

    public void dump(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\n");
        for (Map.Entry<K, Object> entry : this.map.entrySet()) {
            sb.append("--");
            sb.append(entry.getKey());
            sb.append("\n");
            Object value = entry.getValue();
            if (value instanceof HashSet) {
                for (Object obj : (HashSet) value) {
                    sb.append("----");
                    sb.append(obj.getClass().getSimpleName());
                    sb.append("|");
                    sb.append(obj.hashCode());
                    sb.append("\n");
                }
            } else {
                sb.append("----");
                sb.append(value.getClass().getSimpleName());
                sb.append("|");
                sb.append(value.hashCode());
                sb.append("\n");
            }
        }
    }
}
