package com.tencent.taes.framework;

import com.tencent.wecarspeech.clientsdk.model.TextItem;

/* loaded from: /home/user/work/dex/classes.dex */
public class APIResult<T> {
    public static final int ERROR_API_RESULT_NULL = 402;
    public static final int ERROR_CALL_NO_SUCH_API = 401;
    public static final int ERROR_FRAMEWORK_UNINITIALIZED = 100;
    public static final int ERROR_MODULE_FAIL = 305;
    public static final int ERROR_MODULE_LAZY_LOAD = 303;
    public static final int ERROR_MODULE_LOADING = 304;
    public static final int ERROR_MODULE_NOT_FOUND = 307;
    public static final int ERROR_MODULE_NO_LOAD = 302;
    public static final int ERROR_MODULE_UNLOAD = 306;
    public static final int ERROR_NO_AUTH = 101;
    public static final int ERROR_NO_CONFIG_FILE = 102;
    public static final int ERROR_PUBLISH_EVENT_INVALID = 500;
    public static final int ERROR_SERVER_BIND_FAIL = 600;
    public static final int ERROR_SERVER_DISCONNECT = 601;
    public static final int SUCCESS = 0;
    private static final String TAG = "APIResult";
    public final int code;
    public final T data;

    public static String translateCode(int i) {
        if (i == 0) {
            return "SUCCESS";
        }
        if (i == 302) {
            return "ERROR_MODULE_NO_LOAD";
        }
        if (i == 500) {
            return "ERROR_PUBLISH_EVENT_INVALID";
        }
        switch (i) {
            case 100:
                return "ERROR_FRAMEWORK_UNINITIALIZED";
            case 101:
                return "ERROR_NO_AUTH";
            case 102:
                return "ERROR_NO_CONFIG_FILE";
            default:
                switch (i) {
                    case 304:
                        return "ERROR_MODULE_LOADING";
                    case ERROR_MODULE_FAIL /* 305 */:
                        return "ERROR_MODULE_FAIL";
                    case ERROR_MODULE_UNLOAD /* 306 */:
                        return "ERROR_MODULE_UNLOAD";
                    case ERROR_MODULE_NOT_FOUND /* 307 */:
                        return "ERROR_MODULE_NOT_FOUND";
                    default:
                        switch (i) {
                            case 401:
                                return "ERROR_CALL_NO_SUCH_API";
                            case 402:
                                return "ERROR_API_RESULT_NULL";
                            default:
                                switch (i) {
                                    case 600:
                                        return "ERROR_SERVER_BIND_FAIL";
                                    case 601:
                                        return "ERROR_SERVER_DISCONNECT";
                                    default:
                                        return TextItem.TYPE_UNKNOWN;
                                }
                        }
                }
        }
    }

    private APIResult(int i, T t) {
        this.code = i;
        this.data = t;
    }

    public String codeDescription() {
        return translateCode(this.code);
    }

    public boolean isSuccess() {
        return this.code == 0;
    }

    public boolean hasSuccessData() {
        return this.code == 0 && this.data != null;
    }

    public static <T> APIResult<T> ofData(T t) {
        return of(0, t);
    }

    public static <T> APIResult<T> of(int i, T t) {
        return new APIResult<>(i, t);
    }

    public static <T> APIResult<T> ofSuccess(T t) {
        return of(0, t);
    }

    public static <T> APIResult<T> ofError(int i) {
        return of(i, null);
    }
}
