package com.tencent.taiutils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ReflectUtils {
    public static <T> T constructorNewInstance(String str, Class[] clsArr, Object[] objArr) {
        Constructor<?> declaredConstructor = Class.forName(str).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }

    public static <T> T getFieldValue(Object obj, Class cls, String str) {
        Class<?> cls2 = obj.getClass();
        while (cls2 != null && !cls2.equals(cls)) {
            cls2 = cls2.getSuperclass();
        }
        if (cls2 == null) {
            return null;
        }
        Field declaredField = cls2.getDeclaredField(str);
        declaredField.setAccessible(true);
        return (T) declaredField.get(obj);
    }

    public static <T> T getFieldValue(Object obj, String str) {
        return (T) getFieldValue(obj, obj.getClass(), str);
    }

    public static <T> T methodInvoke(Object obj, Class cls, String str, Class[] clsArr, Object[] objArr) {
        Class<?> cls2 = obj.getClass();
        while (cls2 != null && !cls2.equals(cls)) {
            cls2 = cls2.getSuperclass();
        }
        if (cls2 == null) {
            throw new IllegalArgumentException("The target is not a super class of obj");
        }
        Method declaredMethod = cls2.getDeclaredMethod(str, clsArr);
        declaredMethod.setAccessible(true);
        return (T) declaredMethod.invoke(obj, objArr);
    }

    public static <T> T methodInvoke(Object obj, String str, Class[] clsArr, Object[] objArr) {
        return (T) methodInvoke(obj, obj.getClass(), str, clsArr, objArr);
    }

    public static void setFieldValue(Object obj, String str, Object obj2) {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }
}
