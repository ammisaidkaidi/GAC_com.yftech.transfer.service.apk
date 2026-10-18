package com.tencent.taes.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ListUtils {
    public static final String DEFAULT_JOIN_SEPARATOR = ",";

    private ListUtils() {
        throw new AssertionError();
    }

    public static <V> int getSize(List<V> list) {
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public static <V> boolean isEmpty(List<V> list) {
        return list == null || list.size() == 0;
    }

    public static <V> boolean isEquals(ArrayList<V> arrayList, ArrayList<V> arrayList2) {
        if (arrayList == null) {
            return arrayList2 == null;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (!ObjectUtils.isEquals(arrayList.get(i), arrayList2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static String join(List<String> list) {
        return join(list, ",");
    }

    public static String join(List<String> list, char c) {
        return join(list, new String(new char[]{c}));
    }

    public static String join(List<String> list, String str) {
        return list == null ? "" : TextUtils.join(str, list);
    }

    public static <V> boolean addDistinctEntry(List<V> list, V v) {
        if (list == null || list.contains(v)) {
            return false;
        }
        return list.add(v);
    }

    public static <V> int addDistinctList(List<V> list, List<V> list2) {
        if (list == null || isEmpty(list2)) {
            return 0;
        }
        int size = list.size();
        for (V v : list2) {
            if (!list.contains(v)) {
                list.add(v);
            }
        }
        return list.size() - size;
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static <V> int distinctList(java.util.List<V> r7) {
        /*
            boolean r0 = isEmpty(r7)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            int r0 = r7.size()
            int r2 = r7.size()
        L10:
            if (r1 >= r2) goto L35
            int r3 = r1 + 1
            r4 = r2
            r2 = r3
        L16:
            if (r2 >= r4) goto L32
            java.lang.Object r5 = r7.get(r1)
            java.lang.Object r6 = r7.get(r2)
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L2f
            r7.remove(r2)
            int r4 = r7.size()
            int r2 = r2 + (-1)
        L2f:
            int r2 = r2 + 1
            goto L16
        L32:
            r1 = r3
            r2 = r4
            goto L10
        L35:
            int r7 = r7.size()
            int r0 = r0 - r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.taes.util.ListUtils.distinctList(java.util.List):int");
    }

    public static <V> boolean addListNotNullValue(List<V> list, V v) {
        if (list == null || v == null) {
            return false;
        }
        return list.add(v);
    }

    public static <V> V getLast(List<V> list, V v) {
        if (list == null) {
            return null;
        }
        return (V) ArrayUtils.getLast(list.toArray(), v, true);
    }

    public static <V> V getNext(List<V> list, V v) {
        if (list == null) {
            return null;
        }
        return (V) ArrayUtils.getNext(list.toArray(), v, true);
    }

    public static <V> List<V> invertList(List<V> list) {
        if (isEmpty(list)) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int size = list.size() - 1; size >= 0; size--) {
            arrayList.add(list.get(size));
        }
        return arrayList;
    }
}
