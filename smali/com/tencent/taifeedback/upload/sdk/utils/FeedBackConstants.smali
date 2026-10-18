.class public Lcom/tencent/taifeedback/upload/sdk/utils/FeedBackConstants;
.super Ljava/lang/Object;
.source "FeedBackConstants.java"


# static fields
.field public static final BUG_TYPE_APP:Ljava/lang/String; = "android_app"

.field public static final BUG_TYPE_SDK:Ljava/lang/String; = "android_sdk"

.field public static final CALLBACK_PARAM_CHANNLE:Ljava/lang/String; = "channel"

.field public static final CALLBACK_PARAM_NONCE:Ljava/lang/String; = "nonce"

.field public static final CALLBACK_PARAM_SKEY:Ljava/lang/String; = "sKey"

.field public static final CALLBACK_PARAM_USERID:Ljava/lang/String; = "userid"

.field public static final CALLBACK_PARAM_VER:Ljava/lang/String; = "ver"

.field public static final JSON_FIELD_APP:Ljava/lang/String; = "app"

.field public static final JSON_FIELD_BUG:Ljava/lang/String; = "bug"

.field public static final JSON_FIELD_BUILD:Ljava/lang/String; = "build"

.field public static final JSON_FIELD_CUSTOMIZED:Ljava/lang/String; = "customized"

.field public static final JSON_FIELD_HARDWARE:Ljava/lang/String; = "hardware"

.field public static final JSON_FIELD_NETWORK:Ljava/lang/String; = "network"

.field public static final JSON_FIELD_ROM:Ljava/lang/String; = "rom"

.field public static final JSON_FIELD_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final JSON_FIELD_UUID:Ljava/lang/String; = "uuid"

.field public static final JSON_FIELD_WIFI:Ljava/lang/String; = "wifi"

.field public static final LOG_EXT:Ljava/lang/String; = ".log"

.field public static final LOG_PRIFIX:Ljava/lang/String; = "/tesly/sdk/"

.field public static final PARM_ERROR:I = 0x3

.field public static final PROP_APP_BUILD_TIME:Ljava/lang/String; = "build_time"

.field public static final PROP_APP_NAME:Ljava/lang/String; = "name"

.field public static final PROP_APP_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final PROP_APP_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final PROP_APP_VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final PROP_BUG_ADDRESS:Ljava/lang/String; = "address"

.field public static final PROP_BUG_CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final PROP_BUG_CREATOR:Ljava/lang/String; = "creator"

.field public static final PROP_BUG_CREATOR_QQ:Ljava/lang/String; = "creator_qq"

.field public static final PROP_BUG_CREATOR_WX:Ljava/lang/String; = "creator_wx"

.field public static final PROP_BUG_DESC:Ljava/lang/String; = "desc"

.field public static final PROP_BUG_DETAIL:Ljava/lang/String; = "detail"

.field public static final PROP_BUG_DURATION:Ljava/lang/String; = "duration"

.field public static final PROP_BUG_GUID:Ljava/lang/String; = "guid"

.field public static final PROP_BUG_LOCATION:Ljava/lang/String; = "location"

.field public static final PROP_BUG_NOTIFIER:Ljava/lang/String; = "notifier"

.field public static final PROP_BUG_PROJECT:Ljava/lang/String; = "project"

.field public static final PROP_BUG_PROJECT_PRIORITY:Ljava/lang/String; = "project_priority"

.field public static final PROP_BUG_PROJECT_SEVERITY:Ljava/lang/String; = "project_severity"

.field public static final PROP_BUG_SPEED:Ljava/lang/String; = "speed"

.field public static final PROP_BUG_TASK:Ljava/lang/String; = "task"

.field public static final PROP_BUG_TITLE:Ljava/lang/String; = "title"

.field public static final PROP_BUG_TYPE:Ljava/lang/String; = "type"

.field public static final PROP_FILE_ATTACHMENT:Ljava/lang/String; = "file_attachment"

.field public static final PROP_FILE_EXTRA_LOGCAT:Ljava/lang/String; = "file_extra_log"

.field public static final PROP_FILE_IMAGE:Ljava/lang/String; = "file_image"

.field public static final PROP_FILE_LOG:Ljava/lang/String; = "file_log"

.field public static final PROP_FILE_MUSIC:Ljava/lang/String; = "file_music"

.field public static final PROP_FILE_PCAP:Ljava/lang/String; = "file_pcap"

.field public static final PROP_FILE_VIDEO:Ljava/lang/String; = "file_video"

.field public static final REPORT_HOST:Ljava/lang/String; = "wecarplat.map.qq.com"

.field public static final RESULT_AUTH_FAILED:I = 0x5

.field public static final RESULT_ERR:Ljava/lang/String; = "err"

.field public static final RESULT_OK:I = 0x0

.field public static final SERVER_ERROR:I = -0x1

.field public static final TEST_REPORT_HOST:Ljava/lang/String; = "wecarproxy.sparta.html5.qq.com"

.field public static final TEXT_COPY_RIGHT:Ljava/lang/String; = "&nbsp;&nbsp;&nbsp;&nbsp;\u9009\u62e9[\u63d0\u4ea4]\u5373\u8868\u793a\u60a8\u627f\u8ba4\u5e76\u540c\u610fBugly\u4f7f\u7528\u5728\u53cd\u9988\u62a5\u544a\u4e2d\u7684\u4efb\u4f55\u4fe1\u606f\uff0c\u4f46Bugly\u5c06\u9075\u5faa\u60a8\u5728\u62a5\u544a\u4e2d\u6240\u6d89\u53ca\u7684\u5e94\u7528\u76f8\u5173\u7684\u9690\u79c1\u6743\u653f\u7b56\u6765\u4f7f\u7528\u8fd9\u4e9b\u4fe1\u606f\u3002\u60a8\u8fd8\u540c\u610fBugly\u53ef\u4ee5\u4f7f\u7528\u60a8\u63d0\u4f9b\u7684\u4efb\u4f55\u53cd\u9988\uff0c\u4ee5\u4fbf\u6539\u8fdb\u6211\u4eec\u7684\u4ea7\u54c1\u6216\u670d\u52a1\u3002<br>&nbsp;&nbsp;&nbsp;&nbsp;Bugly\u662f\u4e00\u4e2a\u5e2e\u52a9\u7528\u6237\u5feb\u901f\u63d0\u4ea4\u53cd\u9988\u7684\u7ec4\u4ef6\u3002\u60a8\u53ef\u4ee5\u767b\u9646Bugly\u4e3b\u9875 http://t.bugly.qq.com \u6765\u67e5\u770b\u60a8\u7684\u53cd\u9988\u3002"

.field public static final URI_FEEDBACK:Ljava/lang/String; = "/feedback"

.field public static final WECARID:Ljava/lang/String; = "WeCarId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
