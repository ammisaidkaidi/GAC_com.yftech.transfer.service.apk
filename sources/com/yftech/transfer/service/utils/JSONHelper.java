package com.yftech.transfer.service.utils;

import com.google.gson.internal.LinkedTreeMap;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: /home/user/work/dex/classes.dex */
public class JSONHelper {
    public static String toJSON(Object obj) {
        JSONStringer jSONStringer = new JSONStringer();
        serialize(jSONStringer, obj);
        return jSONStringer.toString();
    }

    private static void serialize(JSONStringer jSONStringer, Object obj) {
        if (isNull(obj)) {
            try {
                jSONStringer.value((Object) null);
                return;
            } catch (JSONException e) {
                e.printStackTrace();
                return;
            }
        }
        Class<?> cls = obj.getClass();
        if (isObject(cls)) {
            serializeObject(jSONStringer, obj);
            return;
        }
        if (isArray(cls)) {
            serializeArray(jSONStringer, obj);
            return;
        }
        if (isCollection(cls)) {
            serializeCollect(jSONStringer, (Collection) obj);
            return;
        }
        if (isMap(cls)) {
            serializeMap(jSONStringer, (HashMap) obj);
            return;
        }
        try {
            jSONStringer.value(obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static void serializeArray(JSONStringer jSONStringer, Object obj) {
        try {
            jSONStringer.array();
            for (int i = 0; i < Array.getLength(obj); i++) {
                serialize(jSONStringer, Array.get(obj, i));
            }
            jSONStringer.endArray();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void serializeCollect(JSONStringer jSONStringer, Collection<?> collection) {
        try {
            jSONStringer.array();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                serialize(jSONStringer, it.next());
            }
            jSONStringer.endArray();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void serializeMap(JSONStringer jSONStringer, Map<?, ?> map) {
        try {
            jSONStringer.object();
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                jSONStringer.key((String) entry.getKey());
                serialize(jSONStringer, entry.getValue());
            }
            jSONStringer.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void serializeObject(JSONStringer jSONStringer, Object obj) {
        try {
            jSONStringer.object();
            Class<?> cls = obj.getClass();
            Method[] declaredMethods = cls.getDeclaredMethods();
            for (Field field : cls.getDeclaredFields()) {
                try {
                    String simpleName = field.getType().getSimpleName();
                    String parseMethodName = parseMethodName(field.getName(), "get");
                    if (haveMethod(declaredMethods, parseMethodName)) {
                        Object invoke = cls.getMethod(parseMethodName, new Class[0]).invoke(obj, new Object[0]);
                        String str = null;
                        if ("Date".equals(simpleName)) {
                            str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format((Date) invoke);
                        } else if (invoke != null) {
                            str = String.valueOf(invoke);
                        }
                        jSONStringer.key(field.getName());
                        serialize(jSONStringer, str);
                    }
                } catch (Exception unused) {
                }
            }
            jSONStringer.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean haveMethod(Method[] methodArr, String str) {
        for (Method method : methodArr) {
            if (str.equals(method.getName())) {
                return true;
            }
        }
        return false;
    }

    public static String parseMethodName(String str, String str2) {
        if (str == null || "".equals(str)) {
            return null;
        }
        return str2 + str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public static void setFieldValue(Object obj, Map<String, String> map) {
        Class<?> cls = obj.getClass();
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (Field field : cls.getDeclaredFields()) {
            try {
                String parseMethodName = parseMethodName(field.getName(), "set");
                if (haveMethod(declaredMethods, parseMethodName)) {
                    Method method = cls.getMethod(parseMethodName, field.getType());
                    String str = map.get(field.getName());
                    if (str != null && !"".equals(str)) {
                        String simpleName = field.getType().getSimpleName();
                        if ("String".equals(simpleName)) {
                            method.invoke(obj, str);
                        } else if ("Date".equals(simpleName)) {
                            method.invoke(obj, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).parse(str));
                        } else {
                            if (!"Integer".equals(simpleName) && !"int".equals(simpleName)) {
                                if ("Long".equalsIgnoreCase(simpleName)) {
                                    method.invoke(obj, Long.valueOf(Long.parseLong(str)));
                                } else if ("Double".equalsIgnoreCase(simpleName)) {
                                    method.invoke(obj, Double.valueOf(Double.parseDouble(str)));
                                } else if ("Boolean".equalsIgnoreCase(simpleName)) {
                                    method.invoke(obj, Boolean.valueOf(Boolean.parseBoolean(str)));
                                } else {
                                    System.out.println("setFieldValue not supper type:" + simpleName);
                                }
                            }
                            method.invoke(obj, Integer.valueOf(Integer.parseInt(str)));
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static Map<String, String> beanToMap(Object obj) {
        Class<?> cls = obj.getClass();
        HashMap hashMap = new HashMap();
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (Field field : cls.getDeclaredFields()) {
            try {
                String simpleName = field.getType().getSimpleName();
                String parseMethodName = parseMethodName(field.getName(), "get");
                if (haveMethod(declaredMethods, parseMethodName)) {
                    Object invoke = cls.getMethod(parseMethodName, new Class[0]).invoke(obj, new Object[0]);
                    String str = null;
                    if ("Date".equals(simpleName)) {
                        str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).format((Date) invoke);
                    } else if (invoke != null) {
                        str = String.valueOf(invoke);
                    }
                    hashMap.put(field.getName(), str);
                }
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    public static void setFiedlValue(Object obj, Method method, String str, Object obj2) {
        if (obj2 != null) {
            try {
                if (!"".equals(obj2)) {
                    if ("String".equals(str)) {
                        method.invoke(obj, obj2.toString());
                    } else if ("Date".equals(str)) {
                        method.invoke(obj, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINA).parse(obj2.toString()));
                    } else {
                        if (!"Integer".equals(str) && !"int".equals(str)) {
                            if ("Long".equalsIgnoreCase(str)) {
                                method.invoke(obj, Long.valueOf(Long.parseLong(obj2.toString())));
                            } else if ("Double".equalsIgnoreCase(str)) {
                                method.invoke(obj, Double.valueOf(Double.parseDouble(obj2.toString())));
                            } else if ("Boolean".equalsIgnoreCase(str)) {
                                method.invoke(obj, Boolean.valueOf(Boolean.parseBoolean(obj2.toString())));
                            } else {
                                method.invoke(obj, obj2);
                            }
                        }
                        method.invoke(obj, Integer.valueOf(Integer.parseInt(obj2.toString())));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static <T> T parseObject(JSONObject jSONObject, Class<T> cls) throws JSONException {
        T t;
        if (cls == null || isNull(jSONObject) || (t = (T) newInstance(cls)) == null) {
            return null;
        }
        if (isMap(cls)) {
            setField(t, jSONObject);
        } else {
            Method[] declaredMethods = cls.getDeclaredMethods();
            for (Field field : cls.getDeclaredFields()) {
                String parseMethodName = parseMethodName(field.getName(), "set");
                if (haveMethod(declaredMethods, parseMethodName)) {
                    try {
                        setField(t, cls.getMethod(parseMethodName, field.getType()), field, jSONObject);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return t;
    }

    public static <T> T parseObject(String str, Class<T> cls) throws JSONException {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (isNull(jSONObject)) {
            return null;
        }
        return (T) parseObject(jSONObject, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] parseArray(JSONArray jSONArray, Class<T> cls) {
        if (cls == null || isNull(jSONArray)) {
            return null;
        }
        int length = jSONArray.length();
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length));
        for (int i = 0; i < length; i++) {
            try {
                tArr[i] = parseObject(jSONArray.getJSONObject(i), cls);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return tArr;
    }

    public static <T> T[] parseArray(String str, Class<T> cls) {
        JSONArray jSONArray;
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            jSONArray = new JSONArray(str);
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        if (isNull(jSONArray)) {
            return null;
        }
        return (T[]) parseArray(jSONArray, cls);
    }

    public static <T> Collection<T> parseCollection(JSONArray jSONArray, Class<?> cls, Class<T> cls2) throws JSONException {
        if (cls == null || cls2 == null || isNull(jSONArray)) {
            return null;
        }
        LinkedTreeMap.KeySet keySet = (Collection<T>) ((Collection) newInstance(cls));
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                keySet.add(parseObject(jSONArray.getJSONObject(i), cls2));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return keySet;
    }

    public static <T> Collection<T> parseCollection(String str, Class<?> cls, Class<T> cls2) throws JSONException {
        JSONArray jSONArray;
        if (cls == null || cls2 == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            int indexOf = str.indexOf("[");
            String substring = -1 != indexOf ? str.substring(indexOf) : null;
            if (substring != null) {
                jSONArray = new JSONArray(substring);
            } else {
                jSONArray = new JSONArray(str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        if (isNull(jSONArray)) {
            return null;
        }
        return parseCollection(jSONArray, cls, cls2);
    }

    private static <T> T newInstance(Class<T> cls) throws JSONException {
        if (cls == null) {
            return null;
        }
        if (cls.isInterface()) {
            if (cls.equals(Map.class)) {
                return (T) new HashMap();
            }
            if (cls.equals(List.class)) {
                return (T) new ArrayList();
            }
            if (cls.equals(Set.class)) {
                return (T) new HashSet();
            }
            throw new JSONException("unknown interface: " + cls);
        }
        try {
            return cls.newInstance();
        } catch (Exception unused) {
            throw new JSONException("unknown class type: " + cls);
        }
    }

    private static void setField(Object obj, JSONObject jSONObject) {
        try {
            Iterator<String> keys = jSONObject.keys();
            Map map = (Map) obj;
            while (keys.hasNext()) {
                String next = keys.next();
                map.put(next, jSONObject.get(next));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private static void setField(Object obj, Method method, Field field, JSONObject jSONObject) {
        Type[] actualTypeArguments;
        String name = field.getName();
        Class<?> type = field.getType();
        try {
            if (isArray(type)) {
                Class<?> componentType = type.getComponentType();
                JSONArray optJSONArray = jSONObject.optJSONArray(name);
                if (isNull(optJSONArray)) {
                    return;
                }
                setFiedlValue(obj, method, type.getSimpleName(), parseArray(optJSONArray, componentType));
                return;
            }
            if (isCollection(type)) {
                Class cls = null;
                Type genericType = field.getGenericType();
                if ((genericType instanceof ParameterizedType) && (actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments()) != null && actualTypeArguments.length > 0) {
                    cls = (Class) actualTypeArguments[0];
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray(name);
                if (isNull(optJSONArray2)) {
                    return;
                }
                setFiedlValue(obj, method, type.getSimpleName(), parseCollection(optJSONArray2, type, cls));
                return;
            }
            if (isSingle(type)) {
                Object opt = jSONObject.opt(name);
                if (opt != null) {
                    setFiedlValue(obj, method, type.getSimpleName(), opt);
                    return;
                }
                return;
            }
            if (isObject(type)) {
                JSONObject optJSONObject = jSONObject.optJSONObject(name);
                if (isNull(optJSONObject)) {
                    return;
                }
                setFiedlValue(obj, method, type.getSimpleName(), parseObject(optJSONObject, type));
                return;
            }
            if (!isList(type)) {
                throw new Exception("unknow type!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void setField(Object obj, Field field, JSONObject jSONObject) {
        Type[] actualTypeArguments;
        String name = field.getName();
        Class<?> type = field.getType();
        try {
            if (isArray(type)) {
                Class<?> componentType = type.getComponentType();
                JSONArray optJSONArray = jSONObject.optJSONArray(name);
                if (isNull(optJSONArray)) {
                    return;
                }
                field.set(obj, parseArray(optJSONArray, componentType));
                return;
            }
            if (isCollection(type)) {
                Class cls = null;
                Type genericType = field.getGenericType();
                if ((genericType instanceof ParameterizedType) && (actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments()) != null && actualTypeArguments.length > 0) {
                    cls = (Class) actualTypeArguments[0];
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray(name);
                if (isNull(optJSONArray2)) {
                    return;
                }
                field.set(obj, parseCollection(optJSONArray2, type, cls));
                return;
            }
            if (isSingle(type)) {
                Object opt = jSONObject.opt(name);
                if (opt != null) {
                    field.set(obj, opt);
                    return;
                }
                return;
            }
            if (isObject(type)) {
                JSONObject optJSONObject = jSONObject.optJSONObject(name);
                if (isNull(optJSONObject)) {
                    return;
                }
                field.set(obj, parseObject(optJSONObject, type));
                return;
            }
            if (isList(type)) {
                JSONObject optJSONObject2 = jSONObject.optJSONObject(name);
                if (isNull(optJSONObject2)) {
                    return;
                }
                field.set(obj, parseObject(optJSONObject2, type));
                return;
            }
            throw new Exception("unknow type!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static boolean isNull(Object obj) {
        if (obj instanceof JSONObject) {
            return JSONObject.NULL.equals(obj);
        }
        return obj == null;
    }

    private static boolean isSingle(Class<?> cls) {
        return isBoolean(cls) || isNumber(cls) || isString(cls);
    }

    public static boolean isBoolean(Class<?> cls) {
        return cls != null && (Boolean.TYPE.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls));
    }

    public static boolean isNumber(Class<?> cls) {
        return cls != null && (Byte.TYPE.isAssignableFrom(cls) || Short.TYPE.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls) || Long.TYPE.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls));
    }

    public static boolean isString(Class<?> cls) {
        return cls != null && (String.class.isAssignableFrom(cls) || Character.TYPE.isAssignableFrom(cls) || Character.class.isAssignableFrom(cls));
    }

    private static boolean isObject(Class<?> cls) {
        return (cls == null || isSingle(cls) || isArray(cls) || isCollection(cls) || isMap(cls)) ? false : true;
    }

    public static boolean isArray(Class<?> cls) {
        return cls != null && cls.isArray();
    }

    public static boolean isCollection(Class<?> cls) {
        return cls != null && Collection.class.isAssignableFrom(cls);
    }

    public static boolean isMap(Class<?> cls) {
        return cls != null && Map.class.isAssignableFrom(cls);
    }

    public static boolean isList(Class<?> cls) {
        return cls != null && List.class.isAssignableFrom(cls);
    }
}
