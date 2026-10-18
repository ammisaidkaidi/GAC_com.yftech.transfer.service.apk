.class public interface abstract Lcom/iflytek/autofly/custom/dms/util/IDmsListener;
.super Ljava/lang/Object;
.source "IDmsListener.java"


# static fields
.field public static final SERVICE_ACTION:Ljava/lang/String; = "com.iflytek.autofly.customdmsservice"


# virtual methods
.method public abstract onReadDmsMessage(I)Ljava/lang/String;
.end method

.method public abstract onServiceStatusChanged(I)V
.end method

.method public abstract onWriteDmsMessage(ILjava/lang/String;)I
.end method
