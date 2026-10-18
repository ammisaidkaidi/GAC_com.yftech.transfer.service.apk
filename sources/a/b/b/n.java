package a.b.b;

import android.content.SharedPreferences;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public SharedPreferences.Editor f19a;
    public SharedPreferences b;

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final Method f20a;

        static {
            Method method;
            try {
                method = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
            } catch (NoSuchMethodException unused) {
                method = null;
            }
            f20a = method;
        }

        public static void a(SharedPreferences.Editor editor) {
            try {
                if (f20a != null) {
                    f20a.invoke(editor, new Object[0]);
                    return;
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
            editor.commit();
        }
    }

    static {
        n.class.getSimpleName();
    }

    public Object a(String str, Object obj) {
        if (obj == null || (obj instanceof String)) {
            return this.b.getString(str, (String) obj);
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(this.b.getInt(str, ((Integer) obj).intValue()));
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(this.b.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(this.b.getFloat(str, ((Float) obj).floatValue()));
        }
        if (obj instanceof Long) {
            return Long.valueOf(this.b.getLong(str, ((Long) obj).longValue()));
        }
        return null;
    }

    public void b(String str, Object obj) {
        SharedPreferences.Editor editor;
        String obj2;
        if (!(obj instanceof String)) {
            if (obj instanceof Integer) {
                this.f19a.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof Boolean) {
                this.f19a.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                this.f19a.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Long) {
                this.f19a.putLong(str, ((Long) obj).longValue());
            } else {
                editor = this.f19a;
                obj2 = obj.toString();
            }
            a.a(this.f19a);
        }
        editor = this.f19a;
        obj2 = (String) obj;
        editor.putString(str, obj2);
        a.a(this.f19a);
    }
}
