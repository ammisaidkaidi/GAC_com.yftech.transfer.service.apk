.class Lcom/tencent/tai/pal/telephone/d$1;
.super Ljava/lang/Object;
.source "TelephoneService.java"

# interfaces
.implements Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/telephone/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/telephone/d;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/telephone/d;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/tai/pal/telephone/d$1;->a:Lcom/tencent/tai/pal/telephone/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStatusChange(ILcom/tencent/tai/pal/telephone/PhoneContact;)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneService.onCallStatusChange status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contact:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d$1;->a:Lcom/tencent/tai/pal/telephone/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/telephone/d;->a(Lcom/tencent/tai/pal/telephone/d;ILcom/tencent/tai/pal/telephone/PhoneContact;)V

    return-void
.end method

.method public onSetIncomingCallStrategy(ZZ)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneService.onSetIncomingCallStrategy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d$1;->a:Lcom/tencent/tai/pal/telephone/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/telephone/d;->a(Lcom/tencent/tai/pal/telephone/d;ZZ)V

    return-void
.end method

.method public onTelEnabled(Z)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneService.onTelEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d$1;->a:Lcom/tencent/tai/pal/telephone/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/telephone/d;->a(Lcom/tencent/tai/pal/telephone/d;Z)V

    return-void
.end method

.method public onUploadTelContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/telephone/PhoneContact;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d$1;->a:Lcom/tencent/tai/pal/telephone/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/telephone/d;->a(Lcom/tencent/tai/pal/telephone/d;Ljava/util/List;)V

    return-void
.end method
