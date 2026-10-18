.class public interface abstract Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;
.super Ljava/lang/Object;
.source "PALTelephoneManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALTelephoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TelInfoListener"
.end annotation


# virtual methods
.method public abstract onCallStatusChange(ILcom/tencent/tai/pal/telephone/PhoneContact;)V
.end method

.method public abstract onSetIncomingCallStrategy(ZZ)V
.end method

.method public abstract onTelEnabled(Z)V
.end method

.method public abstract onUploadTelContacts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/telephone/PhoneContact;",
            ">;)V"
        }
    .end annotation
.end method
