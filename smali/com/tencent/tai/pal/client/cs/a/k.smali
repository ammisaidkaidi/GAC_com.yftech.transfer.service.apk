.class final Lcom/tencent/tai/pal/client/cs/a/k;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "TelephoneManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALTelephoneManager;


# static fields
.field private static final a:Ljava/lang/String; = "k"


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/telephone/a;

.field private e:Lcom/tencent/tai/pal/client/cs/a/j;

.field private f:Lcom/tencent/tai/pal/telephone/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.TELEPHONE"

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->b:Ljava/lang/Object;

    .line 32
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    .line 35
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/j;

    invoke-direct {p1}, Lcom/tencent/tai/pal/client/cs/a/j;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    .line 36
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/k$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/k$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/k;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->f:Lcom/tencent/tai/pal/telephone/b$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/k;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/k;)Lcom/tencent/tai/pal/client/cs/a/j;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    return-object p0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 174
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "registerTelephoneCallback telApiAidl == null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->f:Lcom/tencent/tai/pal/telephone/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/telephone/a;->a(Lcom/tencent/tai/pal/telephone/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 194
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "unregisterTelephoneCallback telApiAidl == null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->f:Lcom/tencent/tai/pal/telephone/b$a;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/telephone/a;->b(Lcom/tencent/tai/pal/telephone/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 3

    .line 166
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/tencent/tai/pal/telephone/a$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/telephone/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    .line 168
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->h()V

    return-void
.end method

.method public answerInComingCall()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 229
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "answerInComingCall Service not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 234
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/telephone/a;->a()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 213
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string p1, "call Service not connected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 218
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/telephone/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method protected f()V
    .locals 2

    .line 186
    sget-object v0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->i()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    return-void
.end method

.method public getRecentContact(I)Lcom/tencent/tai/pal/telephone/PhoneContact;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 317
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string p1, "getRecentContact Service not connected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 323
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/telephone/a;->b(I)Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 327
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "e_contact_name"

    .line 328
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "e_contact_number"

    .line 329
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    new-instance v0, Lcom/tencent/tai/pal/telephone/PhoneContact;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tai/pal/telephone/PhoneContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 332
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public ignoreInComingCall()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 263
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "ignoreInComingCall Service not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 269
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/telephone/a;->d()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public isTelEnable()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v0, v0, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isTelephoneSupported()Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 343
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "isTelephoneSupported Service not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 347
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->b()Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 351
    :cond_1
    iget-boolean p0, p0, Lcom/tencent/tai/pal/PlatformSupportInfo;->telephone_supported:Z

    return p0
.end method

.method public refuseInComingCall()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 245
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "refuseInComingCall Service not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 251
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/telephone/a;->b()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public registerTelInfoListener(Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;)V
    .locals 4

    if-nez p1, :cond_0

    .line 120
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string p1, "registerTelInfoListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 128
    sget-object v1, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTelInfoListener onTelEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v3, v3, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onTelEnabled(Z)V

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onUploadTelContacts(Ljava/util/List;)V

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v2, v2, Lcom/tencent/tai/pal/client/cs/a/j;->d:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 138
    invoke-interface {p1, v1, v2}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onSetIncomingCallStrategy(ZZ)V

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object v1, v1, Lcom/tencent/tai/pal/client/cs/a/j;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->e:Lcom/tencent/tai/pal/client/cs/a/j;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->f:Lcom/tencent/tai/pal/telephone/PhoneContact;

    invoke-interface {p1, v1, p0}, Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;->onCallStatusChange(ILcom/tencent/tai/pal/telephone/PhoneContact;)V

    .line 147
    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public unregisterTelInfoListener(Lcom/tencent/tai/pal/client/PALTelephoneManager$TelInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 154
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string p1, "unregisterTelInfoListener listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public viewCallRecord(I)I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 299
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string p1, "viewCallRecord Service not connected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 305
    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/telephone/a;->a(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public viewPhonebook()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/k;->d:Lcom/tencent/tai/pal/telephone/a;

    if-nez v0, :cond_0

    .line 281
    sget-object p0, Lcom/tencent/tai/pal/client/cs/a/k;->a:Ljava/lang/String;

    const-string v0, "viewPhonebook Service not connected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a/k;->e()V

    .line 287
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/tai/pal/telephone/a;->e()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
