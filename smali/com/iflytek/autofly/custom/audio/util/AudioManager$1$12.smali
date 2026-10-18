.class Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;->onGet3DSoundMode()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;

.field final synthetic val$ex:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;Ljava/lang/Exception;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;->this$1:Lcom/iflytek/autofly/custom/audio/util/AudioManager$1;

    iput-object p2, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 357
    new-instance v0, Lcom/iflytek/autofly/custom/IflyAidlException;

    iget-object p0, p0, Lcom/iflytek/autofly/custom/audio/util/AudioManager$1$12;->val$ex:Ljava/lang/Exception;

    const-string v1, "onGet3DSoundMode exception"

    invoke-direct {v0, v1, p0}, Lcom/iflytek/autofly/custom/IflyAidlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
