package com.tencent.taes.util;

import android.text.TextUtils;
import android.widget.TextView;
import com.yftech.transfer.service.CarAppList;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class StringUtils {
    public static final String EMPTY_STRING = "";
    public static final String PRICE_FORMAT = "%.2f";
    public static final Pattern mPassPattern = Pattern.compile("^[a-zA-Z_0-9][a-zA-Z_0-9]{5,16}$");
    public static final Pattern mMailPattern = Pattern.compile("[\\w\\.\\-]+@([\\w\\-]+\\.)+[\\w\\-]+", 2);
    public static final Pattern mPhonePattern = Pattern.compile("^((13[0-9])|(14[0-9])|(15[[0-9]])|(16[[0-9]])|(17[[0-9]])|(18[[0-9]])|(19[[0-9]]))\\d{8}$");
    public static final String[] unitDistArray = {com.tencent.taiutils.StringUtils.UNIT_MINUTE_EN, "km", "米", "公里"};

    private StringUtils() {
        throw new AssertionError();
    }

    public static boolean isHttpUrl(String str) {
        if (str == null || str.trim().length() == 0) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://") || str.startsWith("mailto:");
    }

    public static boolean isMailAndTelUrl(String str) {
        if (str == null || str.trim().length() == 0) {
            return false;
        }
        return str.startsWith("mailto:") || str.startsWith("tel:");
    }

    public static boolean isBlank(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String capitalizeFirstLetter(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char charAt = str.charAt(0);
        if (!Character.isLetter(charAt) || Character.isUpperCase(charAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append(Character.toUpperCase(charAt));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static String utf8Encode(String str) {
        if (isEmpty(str) || str.getBytes().length == str.length()) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UnsupportedEncodingException occurred. ", e);
        }
    }

    public static String utf8Encode(String str, String str2) {
        if (isEmpty(str) || str.getBytes().length == str.length()) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str2;
        }
    }

    public static String getHrefInnerHtml(String str) {
        if (isEmpty(str)) {
            return "";
        }
        Matcher matcher = Pattern.compile(".*<[\\s]*a[\\s]*.*>(.+?)<[\\s]*/a[\\s]*>.*", 2).matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    public static String htmlEscapeCharsToString(String str) {
        return isEmpty(str) ? str : str.replaceAll("&lt;", "<").replaceAll("&gt;", ">").replaceAll("&amp;", "&").replaceAll("&quot;", "\"");
    }

    public static String fullWidthToHalfWidth(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == 12288) {
                charArray[i] = ' ';
            } else if (charArray[i] >= 65281 && charArray[i] <= 65374) {
                charArray[i] = (char) (charArray[i] - 65248);
            } else {
                charArray[i] = charArray[i];
            }
        }
        return new String(charArray);
    }

    public static String halfWidthToFullWidth(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == ' ') {
                charArray[i] = 12288;
            } else if (charArray[i] >= '!' && charArray[i] <= '~') {
                charArray[i] = (char) (charArray[i] + 65248);
            } else {
                charArray[i] = charArray[i];
            }
        }
        return new String(charArray);
    }

    public static String formatPrice(float f) {
        return String.format("%.2f", Float.valueOf(f));
    }

    public static String formatPrice(double d) {
        return String.format("%.2f", Double.valueOf(d));
    }

    public static boolean checkMail(String str) {
        return !isBlank(str) && mMailPattern.matcher(str).matches();
    }

    public static boolean checkPhone(String str) {
        return !isBlank(str) && mPhonePattern.matcher(str).matches();
    }

    public static boolean checkPass(String str) {
        return !isBlank(str) && mPassPattern.matcher(str).matches();
    }

    public static String getMailPrefix(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int indexOf = str.indexOf("@");
        return indexOf <= 0 ? str : str.substring(0, indexOf);
    }

    public static int calculateStringLength(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            try {
                i2 = str.substring(i, i3).getBytes("utf-8").length == 3 ? i2 + 2 : i2 + 1;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            i = i3;
        }
        return i2;
    }

    public static String getStringLimitLength(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            try {
                i3 = str.substring(i2, i4).getBytes("utf-8").length == 3 ? i3 + 2 : i3 + 1;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            if (i3 >= i) {
                return str.substring(0, i2);
            }
            i2 = i4;
        }
        return null;
    }

    public static float getStringWidth(TextView textView, String str) {
        if (isBlank(str)) {
            return 0.0f;
        }
        return textView.getPaint().measureText(str);
    }

    public static String getStringLimitWidth(TextView textView, String str, int i) {
        if (isBlank(str)) {
            return "";
        }
        float stringWidth = getStringWidth(textView, str);
        float f = i;
        if (stringWidth - f < 0.0f) {
            return str;
        }
        return getStringLimitLength(str, ((int) (f / ((stringWidth / calculateStringLength(str)) + 1.0f))) - 4) + "…";
    }

    public static boolean isInteger(String str) {
        return Pattern.compile("^[-\\+]?[\\d]*$").matcher(str).matches();
    }

    public static String getMD5(String str) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        if (messageDigest == null) {
            throw new NoSuchAlgorithmException();
        }
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            String hexString = Integer.toHexString(b & 255);
            while (hexString.length() < 2) {
                hexString = CarAppList.MediaPage.PAGE_FM + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String json2str(Object obj) {
        Object obj2;
        if (obj == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            while (i < jSONArray.length()) {
                try {
                    sb.append(json2str(jSONArray.get(i)));
                    if (i != jSONArray.length() - 1) {
                        sb.append(",");
                    }
                    i++;
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return "[" + ((Object) sb) + "]";
        }
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            ArrayList arrayList = new ArrayList();
            while (keys.hasNext()) {
                arrayList.add(keys.next().toString());
            }
            Collections.sort(arrayList);
            while (i < arrayList.size()) {
                String str = (String) arrayList.get(i);
                sb.append(json2str(str));
                sb.append(":");
                try {
                    obj2 = jSONObject.get(str);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    obj2 = null;
                }
                sb.append(json2str(obj2));
                if (i != arrayList.size() - 1) {
                    sb.append(",");
                }
                i++;
            }
            return "{" + ((Object) sb) + "}";
        }
        if (obj instanceof String) {
            return "\"" + obj + "\"";
        }
        return "" + obj;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum UnitLangEnum {
        EN(0),
        ZH(1);

        private int nUnit;

        UnitLangEnum(int i) {
            this.nUnit = i;
        }

        public int getUnit() {
            return this.nUnit;
        }
    }

    public static String[] formatDistance(int i, UnitLangEnum unitLangEnum) {
        new StringBuffer();
        String[] strArr = new String[2];
        int unit = unitLangEnum.getUnit();
        if (unit != 0) {
            unit++;
        }
        if (i >= 1000) {
            int i2 = i % 1000;
            String str = i2 < 50 || i2 >= 950 ? "%.0f" : "%.1f";
            int i3 = i / 1000;
            if (i3 >= 100) {
                strArr[0] = String.format("%d", Integer.valueOf(i3));
            } else {
                strArr[0] = String.format(str, Double.valueOf(i / 1000.0d));
            }
            strArr[1] = unitDistArray[unit + 1];
        } else {
            strArr[0] = String.format("%d", Integer.valueOf(i));
            strArr[1] = unitDistArray[unit + 0];
        }
        return strArr;
    }
}
