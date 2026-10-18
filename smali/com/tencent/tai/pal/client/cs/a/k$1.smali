.class Lcom/tencent/tai/pal/client/cs/a/k$1;
.super Lcom/tencent/tai/pal/telephone/b$a;
.source "TelephoneManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/k;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/k;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-direct {p0}, Lcom/tencent/tai/pal/telephone/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/tencent/tai/pal/client/cs/a/k;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneManagerImpl.onCallStatusChange status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contactStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "e_contact_name"

    .line 56
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "e_contact_number"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/tencent/tai/pal/telephone/PhoneContact;

    invoke-direct {v1, p2, v0}, Lcom/tencent/tai/pal/telephone/PhoneContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 60
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p2}, Lcom/tencent/tai/pal/client/cs/a/k;->a(Lcom/tencent/tai/pal/client/cs/a/k;)Ljava/util/List;

    move-result-object p2

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;

    .line 65
    invoke-interface {v0, p1, v1}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onCallStatusChange(ILcom/tencent/tai/pal/telephone/PhoneContact;)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p2}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/tai/pal/client/cs/a/j;->e:Ljava/lang/Integer;

    .line 69
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object p0

    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/j;->f:Lcom/tencent/tai/pal/telephone/PhoneContact;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/tencent/tai/pal/client/cs/a/k;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneManagerImpl.onUploadTelContacts contacts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 82
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "e_contact_name"

    .line 83
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "e_contact_number"

    .line 84
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v5, Lcom/tencent/tai/pal/telephone/PhoneContact;

    invoke-direct {v5, v4, v3}, Lcom/tencent/tai/pal/telephone/PhoneContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p1}, Lcom/tencent/tai/pal/client/cs/a/k;->a(Lcom/tencent/tai/pal/client/cs/a/k;)Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;

    .line 94
    invoke-interface {v1, v0}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onUploadTelContacts(Ljava/util/List;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object p0

    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/tencent/tai/pal/client/cs/a/k;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneManagerImpl.onTelEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/k;->a(Lcom/tencent/tai/pal/client/cs/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;

    .line 42
    invoke-interface {v1, p1}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onTelEnabled(Z)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public a(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/tencent/tai/pal/client/cs/a/k;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephoneManagerImpl.onSetIncomingCallStrategy startTtsTip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " startSpeechRecognition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/k;->a(Lcom/tencent/tai/pal/client/cs/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;

    .line 105
    invoke-interface {v1, p1, p2}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onSetIncomingCallStrategy(ZZ)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/tai/pal/client/cs/a/j;->c:Ljava/lang/Boolean;

    .line 109
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k$1;->a:Lcom/tencent/tai/pal/client/cs/a/k;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/j;->d:Ljava/lang/Boolean;

    return-void
.end method
