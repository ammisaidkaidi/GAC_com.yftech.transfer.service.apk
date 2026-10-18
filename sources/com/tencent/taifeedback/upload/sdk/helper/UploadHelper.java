package com.tencent.taifeedback.upload.sdk.helper;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.TAIFeedbackConfig;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.taifeedback.upload.sdk.utils.FileUtils;
import com.tencent.taifeedback.upload.sdk.utils.SettingsUtils;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import com.tencent.taifeedback.upload.sdk.utils.ZipUtil;
import com.tencent.wecarbase.common.helper.SignHelper;
import com.tencent.wecarbase.common.tools.network.http.BaseJsonPostRequest;
import com.tencent.wecarbase.common.tools.network.http.HttpResult;
import com.yftech.transfer.service.CarAppList;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Properties;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class UploadHelper {
    private static String TAG = "UploadHelper";
    private static boolean lockFile = false;
    private boolean isProtectWecar = false;

    /* JADX WARN: Removed duplicated region for block: B:47:0x01d4 A[Catch: Exception -> 0x02af, TryCatch #0 {Exception -> 0x02af, blocks: (B:45:0x01af, B:47:0x01d4, B:48:0x01f5), top: B:44:0x01af }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ResultHelper prepare(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map, Map<String, String> map2, Properties properties) {
        String str6;
        FileUtils fileUtils;
        String storePath;
        JSONObject jSONObject;
        boolean z;
        Utils.getInstance().log(TAG, " bugreport prepare feedback_id = " + properties.getProperty("feedback_id") + " sendTime = " + str5);
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        String uuid = Utils.getUuid();
        if (!TextUtils.isEmpty(properties.getProperty("feedback_id"))) {
            uuid = properties.getProperty("feedback_id");
        }
        String str7 = "";
        try {
            jSONObject2.put(FeedBackConstants.JSON_FIELD_UUID, uuid);
            jSONObject2.put(FeedBackConstants.JSON_FIELD_BUILD, DeviceHelper.getJsonBuildInfo());
            jSONObject2.put(FeedBackConstants.JSON_FIELD_ROM, DeviceHelper.getJsonRomInfo());
            jSONObject2.put(FeedBackConstants.JSON_FIELD_NETWORK, DeviceHelper.getJsonNetworkInfo(context));
            jSONObject2.put("hardware", DeviceHelper.getJsonHardwareInfo(context));
            jSONObject2.put(FeedBackConstants.JSON_FIELD_TELEPHONY, DeviceHelper.getJsonTelephonyInfo(context));
            jSONObject3.put(FeedBackConstants.PROP_APP_PACKAGE, str4);
            String[] packageInfo = PackageHelper.getPackageInfo(context, str4);
            jSONObject3.put("version_name", TextUtils.isEmpty(packageInfo[0]) ? "" : packageInfo[0]);
            jSONObject3.put("version_code", TextUtils.isEmpty(packageInfo[1]) ? "" : packageInfo[1]);
            jSONObject3.put(FeedBackConstants.PROP_APP_BUILD_TIME, packageInfo[2]);
            jSONObject3.put("name", packageInfo[3]);
            jSONObject2.put(FeedBackConstants.JSON_FIELD_APP, jSONObject3);
            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
            String str8 = str.equals("") ? packageInfo[3] : str;
            jSONObject4.put("desc", str8);
            jSONObject4.put(FeedBackConstants.PROP_BUG_TITLE, str8);
            jSONObject4.put(FeedBackConstants.PROP_BUG_DETAIL, str8);
            jSONObject4.put(FeedBackConstants.PROP_BUG_CREATE_TIME, format);
            jSONObject4.put(FeedBackConstants.PROP_BUG_CREATOR, str2);
            jSONObject4.put(FeedBackConstants.PROP_BUG_GUID, uuid);
            jSONObject4.put("type", FeedBackConstants.BUG_TYPE_SDK);
            jSONObject4.put("location", SettingsUtils.getInstance().getLocationLocation(context));
            jSONObject4.put("address", SettingsUtils.getInstance().getLocationAddress(context));
            jSONObject4.put("speed", SettingsUtils.getInstance().getLocationSpeed(context));
            jSONObject = new JSONObject();
            if (map != null) {
                str6 = "";
                z = true;
                for (String str9 : map.keySet()) {
                    try {
                        String str10 = map.get(str9);
                        if (!TextUtils.isEmpty(str10)) {
                            str7 = FeedBackConstants.WECARID.equals(str9) ? str10 : str6;
                            FeedBackConstants.CALLBACK_PARAM_USERID.equals(str9);
                            jSONObject.put(str9, str10);
                            str6 = str7;
                            z = false;
                        }
                    } catch (Exception e) {
                        e = e;
                        str7 = str6;
                        Utils.getInstance().log(TAG, e);
                        str6 = str7;
                        fileUtils = FileUtils.getInstance();
                        storePath = fileUtils.getStorePath(context);
                        try {
                            fileUtils.getClass();
                            jSONObject4.put(FeedBackConstants.PROP_FILE_IMAGE, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".png")));
                            fileUtils.getClass();
                            if (TextUtils.isEmpty(fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".bugly.log.txt")))) {
                            }
                            fileUtils.getClass();
                            jSONObject4.put(FeedBackConstants.PROP_FILE_LOG, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".bugly.log.txt")));
                            fileUtils.getClass();
                            jSONObject4.put(FeedBackConstants.PROP_FILE_MUSIC, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".amr;.mp3;.wav")));
                            StringBuilder sb = new StringBuilder();
                            fileUtils.getClass();
                            sb.append(".png");
                            sb.append(FileUtils.EXT_INTERVAL);
                            fileUtils.getClass();
                            sb.append(".amr;.mp3;.wav");
                            sb.append(FileUtils.EXT_INTERVAL);
                            fileUtils.getClass();
                            sb.append(".bugly.log.txt");
                            sb.append(FileUtils.EXT_INTERVAL);
                            fileUtils.getClass();
                            sb.append("bug.json");
                            String sb2 = sb.toString();
                            jSONObject4.put(FeedBackConstants.PROP_FILE_EXTRA_LOGCAT, fileUtils.getFileNameByExt(fileUtils.getFileNameExceptExt(storePath, sb2)));
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(sb2);
                            sb3.append(FileUtils.EXT_INTERVAL);
                            fileUtils.getClass();
                            sb3.append(".zip");
                            jSONObject4.put(FeedBackConstants.PROP_FILE_ATTACHMENT, fileUtils.getFileNameByExt(fileUtils.getFileNameExceptExt(storePath, sb3.toString())));
                            jSONObject2.put(FeedBackConstants.JSON_FIELD_BUG, jSONObject4);
                            Utils.getInstance().log(TAG, " bugreport feeedback size = " + jSONObject2.toString());
                            fileUtils.storeJsonToFile(fileUtils.getStorePropFile(context), jSONObject2);
                        } catch (Exception e2) {
                            Utils.getInstance().log(TAG, e2);
                        }
                        String storeZipFile = fileUtils.getStoreZipFile(context);
                        try {
                            ZipUtil.getInstance().compress(new File(fileUtils.getStorePath(context)).listFiles(), storeZipFile);
                        } catch (Exception e3) {
                            Utils.getInstance().log(TAG, e3);
                        }
                        Utils.getInstance().log(TAG, " bugreport bugPath = " + storePath);
                        fileUtils.deleteSubFiles(storePath);
                        resetFileLock();
                        return send(context, storeZipFile, str3, str4, uuid, str6, map2, str5);
                    }
                }
            } else {
                str6 = "";
                z = true;
            }
        } catch (Exception e4) {
            e = e4;
        }
        if (this.isProtectWecar && z) {
            ResultHelper resultHelper = new ResultHelper();
            resultHelper.setCode(1);
            resultHelper.setMsg("Wecar自定义字段不能为空");
            return resultHelper;
        }
        jSONObject2.put(FeedBackConstants.JSON_FIELD_CUSTOMIZED, jSONObject);
        fileUtils = FileUtils.getInstance();
        storePath = fileUtils.getStorePath(context);
        fileUtils.getClass();
        jSONObject4.put(FeedBackConstants.PROP_FILE_IMAGE, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".png")));
        fileUtils.getClass();
        if (TextUtils.isEmpty(fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".bugly.log.txt")))) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(storePath);
            sb4.append(File.separator);
            sb4.append("default_log_file");
            fileUtils.getClass();
            sb4.append(".bugly.log.txt");
            addEmptyLogForCustomKey(sb4.toString());
        }
        fileUtils.getClass();
        jSONObject4.put(FeedBackConstants.PROP_FILE_LOG, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".bugly.log.txt")));
        fileUtils.getClass();
        jSONObject4.put(FeedBackConstants.PROP_FILE_MUSIC, fileUtils.getFileNameByExt(fileUtils.getFileNameByExt(storePath, ".amr;.mp3;.wav")));
        StringBuilder sb5 = new StringBuilder();
        fileUtils.getClass();
        sb5.append(".png");
        sb5.append(FileUtils.EXT_INTERVAL);
        fileUtils.getClass();
        sb5.append(".amr;.mp3;.wav");
        sb5.append(FileUtils.EXT_INTERVAL);
        fileUtils.getClass();
        sb5.append(".bugly.log.txt");
        sb5.append(FileUtils.EXT_INTERVAL);
        fileUtils.getClass();
        sb5.append("bug.json");
        String sb22 = sb5.toString();
        jSONObject4.put(FeedBackConstants.PROP_FILE_EXTRA_LOGCAT, fileUtils.getFileNameByExt(fileUtils.getFileNameExceptExt(storePath, sb22)));
        StringBuilder sb32 = new StringBuilder();
        sb32.append(sb22);
        sb32.append(FileUtils.EXT_INTERVAL);
        fileUtils.getClass();
        sb32.append(".zip");
        jSONObject4.put(FeedBackConstants.PROP_FILE_ATTACHMENT, fileUtils.getFileNameByExt(fileUtils.getFileNameExceptExt(storePath, sb32.toString())));
        jSONObject2.put(FeedBackConstants.JSON_FIELD_BUG, jSONObject4);
        Utils.getInstance().log(TAG, " bugreport feeedback size = " + jSONObject2.toString());
        fileUtils.storeJsonToFile(fileUtils.getStorePropFile(context), jSONObject2);
        String storeZipFile2 = fileUtils.getStoreZipFile(context);
        ZipUtil.getInstance().compress(new File(fileUtils.getStorePath(context)).listFiles(), storeZipFile2);
        Utils.getInstance().log(TAG, " bugreport bugPath = " + storePath);
        fileUtils.deleteSubFiles(storePath);
        resetFileLock();
        return send(context, storeZipFile2, str3, str4, uuid, str6, map2, str5);
    }

    private ResultHelper send(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map, String str6) {
        JSONObject jSONObject;
        String str7;
        boolean z;
        ResultHelper resultHelper = new ResultHelper();
        File file = new File(str);
        FileUtils fileUtils = FileUtils.getInstance();
        try {
            jSONObject = new JSONObject();
            if (map != null) {
                str7 = str5;
                z = true;
                for (String str8 : map.keySet()) {
                    String str9 = map.get(str8);
                    if (!TextUtils.isEmpty(str9)) {
                        if (FeedBackConstants.WECARID.equals(str8)) {
                            str7 = str9;
                        }
                        jSONObject.put(str8, str9);
                        z = false;
                    }
                }
            } else {
                str7 = str5;
                z = true;
            }
        } catch (Exception e) {
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP  Exception=" + Log.getStackTraceString(e));
            resultHelper.setCode(1);
            resultHelper.setMsg(e.toString());
        }
        if (z) {
            resultHelper.setCode(1);
            resultHelper.setMsg("Sig字段不能为空");
            return resultHelper;
        }
        if (TextUtils.isEmpty(str7)) {
            resultHelper.setCode(1);
            resultHelper.setMsg(new String("获取wecarid失败"));
            return resultHelper;
        }
        jSONObject.put(FeedBackConstants.JSON_FIELD_APP, str3);
        jSONObject.put("wecarid", str7);
        jSONObject.put(FeedBackConstants.CALLBACK_PARAM_USERID, TextUtils.equals(str2, CarAppList.MediaPage.PAGE_FM) ? "" : str2);
        jSONObject.put("feedbackid", str4);
        jSONObject.put("address", SettingsUtils.getInstance().getLocationAddress(context));
        jSONObject.put(FeedBackConstants.PROP_BUG_TITLE, str6);
        String encodeBase64File = Utils.encodeBase64File(file);
        jSONObject.put("content", encodeBase64File);
        String md5 = Md5Helper.getMd5(encodeBase64File);
        Utils.getInstance().log(TAG, "zipMd5:" + md5);
        jSONObject.put("ziphash", md5);
        jSONObject.put("sig", SignHelper.generateSigForHttpPost(FeedBackConstants.URI_FEEDBACK, jSONObject));
        String str10 = FeedBackConstants.REPORT_HOST;
        if (SettingsUtils.getInstance().getIsDebugEnv(context)) {
            str10 = FeedBackConstants.TEST_REPORT_HOST;
        }
        String format = String.format("http://%s/feedback", str10);
        BaseJsonPostRequest baseJsonPostRequest = new BaseJsonPostRequest(1, String.format("http://%s/feedback", str10), jSONObject.toString());
        Utils.getInstance().log(TAG, " bugreport my id:" + Process.myTid() + ", HTTP " + format + " feeedback query=" + jSONObject.toString());
        HttpResult execute = baseJsonPostRequest.execute();
        resultHelper.setFeedbackid(str4);
        if (execute == null) {
            resultHelper.setCode(1);
            resultHelper.setMsg("null");
            fileUtils.deleteFile(file);
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "register result is null.");
            return resultHelper;
        }
        String stringBody = execute.getStringBody();
        Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP " + format + " httpResult=" + stringBody);
        JSONObject jSONObject2 = new JSONObject(stringBody);
        boolean z2 = jSONObject2.has("err") && Integer.parseInt(jSONObject2.get("err").toString()) == 0;
        if (execute.isSucceeded() && z2) {
            resultHelper.setCode(0);
            resultHelper.setMsg(stringBody);
            Utils.getInstance().log(TAG, " bugreport my id:" + Process.myTid() + "  feedback send() json:" + stringBody);
        } else {
            resultHelper.setCode(1);
            resultHelper.setMsg(stringBody);
            Utils.getInstance().log(TAG, stringBody);
        }
        fileUtils.deleteFile(file);
        return resultHelper;
    }

    public ResultHelper pullFeedbackList(Context context, String str, String str2, String str3, Map<String, String> map, Map<String, String> map2) {
        boolean z;
        Utils.getInstance().log(TAG, " bugreport pullFeedbackList userid " + str + " wecarid = " + str3 + "  sigMap = " + map2.toString());
        ResultHelper resultHelper = new ResultHelper();
        try {
        } catch (Exception e) {
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP  Exception=" + Log.getStackTraceString(e));
            resultHelper.setCode(1);
            resultHelper.setMsg(e.toString());
        }
        if (TextUtils.isEmpty(str)) {
            resultHelper.setCode(1);
            resultHelper.setMsg(new String("请先登录并获取userid"));
            return resultHelper;
        }
        JSONObject jSONObject = new JSONObject();
        if (map2 != null) {
            z = true;
            for (String str4 : map2.keySet()) {
                String str5 = map2.get(str4);
                if (!TextUtils.isEmpty(str5)) {
                    jSONObject.put(str4, str5);
                    z = false;
                }
            }
        } else {
            z = true;
        }
        if (z) {
            resultHelper.setCode(1);
            resultHelper.setMsg("Sig字段不能为空");
            return resultHelper;
        }
        if (TextUtils.isEmpty(str3)) {
            resultHelper.setCode(1);
            resultHelper.setMsg(new String("获取wecarid失败"));
            return resultHelper;
        }
        jSONObject.put(FeedBackConstants.JSON_FIELD_APP, "");
        jSONObject.put("wecarid", str3);
        jSONObject.put(FeedBackConstants.CALLBACK_PARAM_USERID, str);
        jSONObject.put("sig", SignHelper.generateSigForHttpPost("/listFeedback", jSONObject));
        String str6 = FeedBackConstants.REPORT_HOST;
        if (SettingsUtils.getInstance().getIsDebugEnv(context)) {
            str6 = FeedBackConstants.TEST_REPORT_HOST;
        }
        String format = String.format("http://%s/listFeedback", str6);
        BaseJsonPostRequest baseJsonPostRequest = new BaseJsonPostRequest(1, String.format("http://%s/listFeedback", str6), jSONObject.toString());
        Utils.getInstance().log(TAG, " bugreport pullFeedbackList " + format + " query result = " + jSONObject.toString());
        HttpResult execute = baseJsonPostRequest.execute();
        if (execute == null) {
            resultHelper.setCode(1);
            resultHelper.setMsg("null");
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "register result is null.");
            return resultHelper;
        }
        String stringBody = execute.getStringBody();
        Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP " + format + " pullFeedbackList httpResult=" + stringBody);
        JSONObject jSONObject2 = new JSONObject(stringBody);
        boolean z2 = jSONObject2.has("err") && Integer.parseInt(jSONObject2.get("err").toString()) == 0;
        if (execute.isSucceeded() && z2) {
            resultHelper.setCode(0);
            resultHelper.setMsg(stringBody);
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "json:" + stringBody);
        } else {
            resultHelper.setCode(1);
            resultHelper.setMsg(stringBody);
            Utils.getInstance().log(TAG, stringBody);
        }
        return resultHelper;
    }

    public ResultHelper bindFeedback(Context context, String str, String str2, Map<String, String> map) {
        boolean z;
        ResultHelper resultHelper = new ResultHelper();
        try {
        } catch (Exception e) {
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP  Exception=" + Log.getStackTraceString(e));
            resultHelper.setCode(1);
            resultHelper.setMsg(e.toString());
        }
        if (!TextUtils.isEmpty(str) && str != CarAppList.MediaPage.PAGE_FM) {
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                z = true;
                for (String str3 : map.keySet()) {
                    String str4 = map.get(str3);
                    if (!TextUtils.isEmpty(str4)) {
                        jSONObject.put(str3, str4);
                        z = false;
                    }
                }
            } else {
                z = true;
            }
            if (z) {
                resultHelper.setCode(1);
                resultHelper.setMsg("Sig字段不能为空");
                return resultHelper;
            }
            if (TextUtils.isEmpty(str2)) {
                resultHelper.setCode(1);
                resultHelper.setMsg(new String("获取wecarid失败"));
                return resultHelper;
            }
            jSONObject.put("wecarid", str2);
            jSONObject.put(FeedBackConstants.CALLBACK_PARAM_USERID, str);
            jSONObject.put("sig", SignHelper.generateSigForHttpPost("/bindFeedback", jSONObject));
            String str5 = FeedBackConstants.REPORT_HOST;
            if (SettingsUtils.getInstance().getIsDebugEnv(context)) {
                str5 = FeedBackConstants.TEST_REPORT_HOST;
            }
            String format = String.format("http://%s/bindFeedback", str5);
            BaseJsonPostRequest baseJsonPostRequest = new BaseJsonPostRequest(1, String.format("http://%s/bindFeedback", str5), jSONObject.toString());
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP " + format + " query  bindFeedback =" + jSONObject.toString());
            HttpResult execute = baseJsonPostRequest.execute();
            if (execute == null) {
                resultHelper.setCode(1);
                resultHelper.setMsg("null");
                Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "register result is null.");
                return resultHelper;
            }
            String stringBody = execute.getStringBody();
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP " + format + " feedback bindFeedback httpResult=" + stringBody);
            JSONObject jSONObject2 = new JSONObject(stringBody);
            boolean z2 = jSONObject2.has("err") && Integer.parseInt(jSONObject2.get("err").toString()) == 0;
            if (execute.isSucceeded() && z2) {
                resultHelper.setCode(0);
                resultHelper.setMsg(stringBody);
                Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "json:" + stringBody);
            } else {
                resultHelper.setCode(1);
                resultHelper.setMsg(stringBody);
                Utils.getInstance().log(TAG, stringBody);
            }
            return resultHelper;
        }
        resultHelper.setCode(1);
        resultHelper.setMsg(new String("请先登录并获取userid"));
        return resultHelper;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[Catch: Exception -> 0x0319, SYNTHETIC, TRY_LEAVE, TryCatch #13 {Exception -> 0x0319, blocks: (B:3:0x0006, B:5:0x000e, B:6:0x0018, B:8:0x001e, B:11:0x0030, B:14:0x0039, B:20:0x0042, B:23:0x004b, B:25:0x0051, B:27:0x005f, B:30:0x0082, B:32:0x00d7, B:34:0x0103, B:36:0x0109, B:38:0x0135, B:40:0x0173, B:42:0x0179, B:59:0x01ae, B:61:0x01cd, B:72:0x01d2, B:63:0x01ec, B:68:0x01f2, B:69:0x0209, B:64:0x02af, B:75:0x01b3, B:118:0x02b7, B:113:0x02d8, B:105:0x02f9, B:110:0x0318, B:109:0x02fe, B:116:0x02dd, B:121:0x02bc, B:95:0x024f, B:90:0x0270, B:85:0x0291, B:88:0x0296, B:93:0x0275, B:98:0x0254), top: B:2:0x0006, inners: #1, #3, #4, #5, #6, #7, #16, #17, #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ResultHelper dowloadFeedbackMp3(Context context, String str, String str2, Map<String, String> map, String str3) {
        JSONObject jSONObject;
        String str4;
        boolean z;
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        String str5;
        String str6;
        ResultHelper resultHelper = new ResultHelper();
        try {
            jSONObject = new JSONObject();
            if (map != null) {
                str4 = str;
                z = true;
                for (String str7 : map.keySet()) {
                    String str8 = map.get(str7);
                    if (!TextUtils.isEmpty(str8)) {
                        if (FeedBackConstants.WECARID.equals(str7)) {
                            str4 = str8;
                        }
                        jSONObject.put(str7, str8);
                        z = false;
                    }
                }
            } else {
                str4 = str;
                z = true;
            }
        } catch (Exception e) {
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP  Exception=" + Log.getStackTraceString(e));
            resultHelper.setCode(1);
            resultHelper.setMsg(e.toString());
        }
        if (z) {
            resultHelper.setCode(1);
            resultHelper.setMsg("Sig字段不能为空");
            return resultHelper;
        }
        if (TextUtils.isEmpty(str4)) {
            resultHelper.setCode(1);
            resultHelper.setMsg(new String("获取wecarid失败"));
            return resultHelper;
        }
        jSONObject.put("wecarid", str4);
        jSONObject.put("feedbackid", str2);
        jSONObject.put("sig", SignHelper.generateSigForHttpPost("/downloadFeedback", jSONObject));
        String str9 = FeedBackConstants.REPORT_HOST;
        if (SettingsUtils.getInstance().getIsDebugEnv(context)) {
            str9 = FeedBackConstants.TEST_REPORT_HOST;
        }
        String format = String.format("http://%s/downloadFeedback", str9);
        BaseJsonPostRequest baseJsonPostRequest = new BaseJsonPostRequest(1, String.format("http://%s/downloadFeedback", str9), jSONObject.toString());
        Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + ", HTTP " + format + " query= " + jSONObject.toString());
        HttpResult execute = baseJsonPostRequest.execute();
        if (execute == null) {
            resultHelper.setCode(1);
            resultHelper.setMsg("null");
            Utils.getInstance().log(TAG, " bugreport my id: " + Process.myTid() + " register result is null. ");
            return resultHelper;
        }
        InputStream streamBody = execute.getStreamBody();
        if (streamBody == null) {
            resultHelper.setCode(1);
            resultHelper.setMsg("null");
            Utils.getInstance().log(TAG, "bugreport my id:" + Process.myTid() + "  null == mp3 ");
            return resultHelper;
        }
        String str10 = str3 + File.separator + str2 + ".mp3";
        Utils.getInstance().log(TAG, " bugreport mp3name = " + str10);
        File file = new File(str10);
        if (!file.exists() && !file.createNewFile()) {
            Log.d(TAG, str10 + " exists!");
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(streamBody);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = bufferedInputStream2.read(bArr);
                            if (read != -1) {
                                bufferedOutputStream2.write(bArr, 0, read);
                            } else {
                                try {
                                    break;
                                } catch (IOException e2) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                                }
                            }
                        }
                        bufferedInputStream2.close();
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e3));
                        }
                        try {
                            bufferedOutputStream2.close();
                        } catch (IOException e4) {
                            str5 = TAG;
                            str6 = "Exception:" + Log.getStackTraceString(e4);
                            Log.e(str5, str6);
                            resultHelper.setMsg(str10);
                            return resultHelper;
                        }
                    } catch (Exception e5) {
                        bufferedOutputStream = bufferedOutputStream2;
                        e = e5;
                        bufferedInputStream = bufferedInputStream2;
                        try {
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e6) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e6));
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e7) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e7));
                                }
                            }
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e8) {
                                    str5 = TAG;
                                    str6 = "Exception:" + Log.getStackTraceString(e8);
                                    Log.e(str5, str6);
                                    resultHelper.setMsg(str10);
                                    return resultHelper;
                                }
                            }
                            resultHelper.setMsg(str10);
                            return resultHelper;
                        } catch (Throwable th) {
                            th = th;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e9) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e9));
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e10) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e10));
                                }
                            }
                            if (bufferedOutputStream == null) {
                                try {
                                    bufferedOutputStream.close();
                                    throw th;
                                } catch (IOException e11) {
                                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e11));
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream = bufferedInputStream2;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedInputStream != null) {
                        }
                        if (fileOutputStream != null) {
                        }
                        if (bufferedOutputStream == null) {
                        }
                    }
                } catch (Exception e12) {
                    e = e12;
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream = null;
                }
            } catch (Exception e13) {
                e = e13;
                bufferedOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream = null;
            }
        } catch (Exception e14) {
            e = e14;
            bufferedOutputStream = null;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedOutputStream = null;
            fileOutputStream = null;
        }
        resultHelper.setMsg(str10);
        return resultHelper;
    }

    private String parseAppId(Context context) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo;
        String appId = TAIFeedbackConfig.getAppId(context);
        if (!TextUtils.isEmpty(appId) || (applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128)) == null || applicationInfo.metaData == null) {
            return appId;
        }
        return applicationInfo.metaData.getInt("BUGLY_APPID") + "";
    }

    private void addEmptyLogForCustomKey(String str) {
        FileUtils.getInstance().writeTextFile(str, "此log为自动生成，请忽略");
    }

    public static void setFileLock() {
        lockFile = true;
    }

    public static void resetFileLock() {
        lockFile = false;
    }

    public static boolean getIsFlieLock() {
        return lockFile;
    }
}
