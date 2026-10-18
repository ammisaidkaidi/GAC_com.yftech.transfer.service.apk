package com.tencent.taiutils;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.widget.TextView;
import com.yftech.transfer.service.CarAppList;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes.dex */
public class StringUtils {
    public static final String EMPTY_STRING = "";
    public static final String PRICE_FORMAT = "%.2f";
    public static final int SECOND_OF_DAY = 86400;
    public static final int SECOND_OF_HOUR = 3600;
    public static final int SECOND_OF_MINUTE = 60;
    public static final String UNIT_MINUTE = "分";
    public static final String lessOneMinute = "少于1分钟";
    public static final String lessOneMinute_en = "1min";
    public static final Pattern mPassPattern = Pattern.compile("^[a-zA-Z_0-9][a-zA-Z_0-9]{5,16}$");
    public static final Pattern mMailPattern = Pattern.compile("[\\w\\.\\-]+@([\\w\\-]+\\.)+[\\w\\-]+", 2);
    public static final Pattern mPhonePattern = Pattern.compile("^((13[0-9])|(14[0-9])|(15[[0-9]])|(16[[0-9]])|(17[[0-9]])|(18[[0-9]])|(19[[0-9]]))\\d{8}$");
    public static final String UNIT_MINUTE_EN = "m";
    public static final String[] unitDistArray = {UNIT_MINUTE_EN, "km", "米", "公里"};
    public static final String[] unitTimeArray = {"min", "h", "d", "分钟", "小时", "天"};
    public static DecimalFormat mFormat = new DecimalFormat("##0.0");

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum UnitLangEnum {
        EN(0),
        ZH(1);

        public int nUnit;

        UnitLangEnum(int i) {
            this.nUnit = i;
        }

        public int getUnit() {
            return this.nUnit;
        }
    }

    public StringUtils() {
        throw new AssertionError();
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

    public static boolean checkMail(String str) {
        return !isBlank(str) && mMailPattern.matcher(str).matches();
    }

    public static boolean checkPass(String str) {
        return !isBlank(str) && mPassPattern.matcher(str).matches();
    }

    public static boolean checkPhone(String str) {
        return !isBlank(str) && mPhonePattern.matcher(str).matches();
    }

    public static SpannableStringBuilder formatDistance(int i, UnitLangEnum unitLangEnum, int i2, int i3, int i4, int i5, boolean z, boolean z2, String str) {
        String formatDistance = formatDistance(i, unitLangEnum, str);
        String str2 = "";
        String str3 = "";
        int length = formatDistance.length() - 1;
        while (true) {
            if (length >= 0) {
                char charAt = formatDistance.charAt(length);
                if (charAt <= '9' && charAt >= '0') {
                    int i6 = length + 1;
                    str2 = formatDistance.substring(0, i6);
                    str3 = formatDistance.substring(i6);
                    break;
                }
                length--;
            } else {
                break;
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str2);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), length2, spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), length2, spannableStringBuilder.length(), 33);
        if (z) {
            spannableStringBuilder.setSpan(new StyleSpan(1), length2, spannableStringBuilder.length(), 33);
        }
        int length3 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str3);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length3, spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length3, spannableStringBuilder.length(), 33);
        if (z2) {
            spannableStringBuilder.setSpan(new StyleSpan(1), length3, spannableStringBuilder.length(), 33);
        }
        return spannableStringBuilder;
    }

    public static String formatDistance(int i, UnitLangEnum unitLangEnum) {
        return formatDistance(i, unitLangEnum, "");
    }

    public static String formatDistance(int i, UnitLangEnum unitLangEnum, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        formatDistance(i, unitLangEnum, stringBuffer, str);
        return stringBuffer.toString();
    }

    public static void formatDistance(int i, UnitLangEnum unitLangEnum, StringBuffer stringBuffer, String str) {
        String format;
        StringBuilder sb;
        String str2;
        int unit = unitLangEnum.getUnit();
        if (unit != 0) {
            unit++;
        }
        if (i >= 1000) {
            int i2 = i % 1000;
            if (i2 < 50 || i2 >= 950) {
                sb = new StringBuilder();
                str2 = "%.0f";
            } else {
                sb = new StringBuilder();
                str2 = "%.1f";
            }
            sb.append(str2);
            sb.append(str);
            sb.append("%s");
            String sb2 = sb.toString();
            if (stringBuffer == null) {
                return;
            }
            int i3 = i / 1000;
            if (i3 >= 100) {
                format = String.format("%d" + str + "%s", Integer.valueOf(i3), unitDistArray[unit + 1]);
            } else {
                format = String.format(sb2, Double.valueOf(i / 1000.0d), unitDistArray[unit + 1]);
            }
        } else {
            if (stringBuffer == null) {
                return;
            }
            format = String.format("%d" + str + "%s", Integer.valueOf(i), unitDistArray[unit + 0]);
        }
        stringBuffer.append(format);
    }

    public static String formatPrice(double d) {
        return String.format("%.2f", Double.valueOf(d));
    }

    public static String formatPrice(float f) {
        return String.format("%.2f", Float.valueOf(f));
    }

    public static SpannableStringBuilder formatTime(int i, UnitLangEnum unitLangEnum, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        int length;
        StyleSpan styleSpan;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int unit = unitLangEnum.getUnit();
        if (unit != 0) {
            unit = 3;
        }
        if (i >= 60) {
            int i6 = (i / SECOND_OF_HOUR) % 24;
            int i7 = (i / 60) % 60;
            if (i < 3600) {
                spannableStringBuilder.append((CharSequence) (i7 + ""));
                length = spannableStringBuilder.length();
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), 0, length, 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), 0, length, 33);
                if (z) {
                    spannableStringBuilder.setSpan(new StyleSpan(1), 0, length, 33);
                }
                spannableStringBuilder.append((CharSequence) unitTimeArray[unit]);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length, spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length, spannableStringBuilder.length(), 33);
                if (z2) {
                    styleSpan = new StyleSpan(1);
                    spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 33);
                }
            } else if (i < 86400) {
                spannableStringBuilder.append((CharSequence) (i6 + ""));
                int length2 = spannableStringBuilder.length();
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), 0, length2, 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), 0, length2, 33);
                if (z) {
                    spannableStringBuilder.setSpan(new StyleSpan(1), 0, length2, 33);
                }
                spannableStringBuilder.append((CharSequence) unitTimeArray[unit + 1]);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length2, spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length2, spannableStringBuilder.length(), 33);
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(1), length2, spannableStringBuilder.length(), 33);
                }
                if (i7 > 0) {
                    int length3 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) (i7 + ""));
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), length3, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), length3, spannableStringBuilder.length(), 33);
                    if (z) {
                        spannableStringBuilder.setSpan(new StyleSpan(1), length3, spannableStringBuilder.length(), 33);
                    }
                    length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) (unitLangEnum == UnitLangEnum.ZH ? UNIT_MINUTE : UNIT_MINUTE_EN));
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length, spannableStringBuilder.length(), 33);
                    if (z2) {
                        styleSpan = new StyleSpan(1);
                        spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 33);
                    }
                }
            } else {
                spannableStringBuilder.append((CharSequence) ((i / SECOND_OF_DAY) + ""));
                int length4 = spannableStringBuilder.length();
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), 0, length4, 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), 0, length4, 33);
                if (z) {
                    spannableStringBuilder.setSpan(new StyleSpan(1), 0, length4, 33);
                }
                spannableStringBuilder.append((CharSequence) unitTimeArray[unit + 2]);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length4, spannableStringBuilder.length(), 33);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length4, spannableStringBuilder.length(), 33);
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(1), length4, spannableStringBuilder.length(), 33);
                }
                if (i6 > 0) {
                    int length5 = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) (i6 + ""));
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), length5, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), length5, spannableStringBuilder.length(), 33);
                    if (z) {
                        spannableStringBuilder.setSpan(new StyleSpan(1), length5, spannableStringBuilder.length(), 33);
                    }
                    length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) unitTimeArray[unit + 1]);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), length, spannableStringBuilder.length(), 33);
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), length, spannableStringBuilder.length(), 33);
                    if (z2) {
                        styleSpan = new StyleSpan(1);
                        spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 33);
                    }
                }
            }
        } else if (unitLangEnum == UnitLangEnum.ZH) {
            int indexOf = lessOneMinute.indexOf(CarAppList.MediaPage.PAGE_AM);
            spannableStringBuilder.append((CharSequence) lessOneMinute);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), 0, indexOf, 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), 0, indexOf, 33);
            if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(1), 0, indexOf, 33);
            }
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i4);
            int i8 = indexOf + 1;
            spannableStringBuilder.setSpan(foregroundColorSpan, indexOf, i8, 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), indexOf, i8, 33);
            if (z) {
                spannableStringBuilder.setSpan(new StyleSpan(1), indexOf, i8, 33);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), i8, spannableStringBuilder.length(), 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), i8, spannableStringBuilder.length(), 33);
            if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(1), i8, spannableStringBuilder.length(), 33);
            }
        } else {
            spannableStringBuilder.append((CharSequence) lessOneMinute_en);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), 0, 1, 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i2), 0, 1, 33);
            if (z) {
                spannableStringBuilder.setSpan(new StyleSpan(1), 0, 1, 33);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i5), 1, spannableStringBuilder.length(), 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(i3), 1, spannableStringBuilder.length(), 33);
            if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(1), 1, spannableStringBuilder.length(), 33);
            }
        }
        return spannableStringBuilder;
    }

    public static String formatTime(int i, UnitLangEnum unitLangEnum) {
        StringBuffer stringBuffer = new StringBuffer();
        formatTime(i, unitLangEnum, stringBuffer);
        return stringBuffer.toString();
    }

    public static String formatTime(long j) {
        return j == 0 ? "" : new SimpleDateFormat("HH点mm分").format(new Date(j));
    }

    public static void formatTime(int i, UnitLangEnum unitLangEnum, StringBuffer stringBuffer) {
        String str;
        int unit = unitLangEnum.getUnit();
        if (unit != 0) {
            unit = 3;
        }
        if (stringBuffer != null) {
            if (i < 60) {
                str = unitLangEnum == UnitLangEnum.ZH ? lessOneMinute : lessOneMinute_en;
            } else {
                int i2 = (i / SECOND_OF_HOUR) % 24;
                int i3 = (i / 60) % 60;
                if (i < 3600) {
                    stringBuffer.append(i3);
                    str = unitTimeArray[unit];
                } else if (i < 86400) {
                    stringBuffer.append(i2);
                    stringBuffer.append(unitTimeArray[unit + 1]);
                    if (i3 <= 0) {
                        return;
                    }
                    stringBuffer.append(i3);
                    str = unitLangEnum == UnitLangEnum.ZH ? UNIT_MINUTE : UNIT_MINUTE_EN;
                } else {
                    stringBuffer.append(i / SECOND_OF_DAY);
                    stringBuffer.append(unitTimeArray[unit + 2]);
                    if (i2 <= 0) {
                        return;
                    }
                    stringBuffer.append(i2);
                    str = unitTimeArray[unit + 1];
                }
            }
            stringBuffer.append(str);
        }
    }

    public static String fullWidthToHalfWidth(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == 12288) {
                charArray[i] = ' ';
            } else if (charArray[i] < 65281 || charArray[i] > 65374) {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] - 65248);
            }
        }
        return new String(charArray);
    }

    public static String getHrefInnerHtml(String str) {
        if (isEmpty(str)) {
            return "";
        }
        Matcher matcher = Pattern.compile(".*<[\\s]*a[\\s]*.*>(.+?)<[\\s]*/a[\\s]*>.*", 2).matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    public static String getMD5(String str) {
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

    public static String getMailPrefix(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int indexOf = str.indexOf("@");
        return indexOf <= 0 ? str : str.substring(0, indexOf);
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

    public static float getStringWidth(TextView textView, String str) {
        if (isBlank(str)) {
            return 0.0f;
        }
        return textView.getPaint().measureText(str);
    }

    public static String halfWidthToFullWidth(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] == ' ') {
                charArray[i] = 12288;
            } else if (charArray[i] < '!' || charArray[i] > '~') {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] + 65248);
            }
        }
        return new String(charArray);
    }

    public static String htmlEscapeCharsToString(String str) {
        return isEmpty(str) ? str : str.replaceAll("&lt;", "<").replaceAll("&gt;", ">").replaceAll("&amp;", "&").replaceAll("&quot;", "\"");
    }

    public static boolean isBlank(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
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
}
