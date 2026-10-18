.class public Lcom/tencent/tai/pal/telephone/d;
.super Lcom/tencent/tai/pal/telephone/a$a;
.source "TelephoneService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

.field private final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/telephone/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tai/pal/telephone/c;

.field private e:Z

.field private f:Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/tencent/tai/pal/telephone/a$a;-><init>()V

    .line 28
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    .line 30
    new-instance v0, Lcom/tencent/tai/pal/telephone/c;

    invoke-direct {v0}, Lcom/tencent/tai/pal/telephone/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/tai/pal/telephone/d;->e:Z

    .line 33
    new-instance v0, Lcom/tencent/tai/pal/telephone/d$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/telephone/d$1;-><init>(Lcom/tencent/tai/pal/telephone/d;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->f:Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;

    return-void
.end method

.method private a(ILcom/tencent/tai/pal/telephone/PhoneContact;)V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "e_contact_name"

    .line 100
    invoke-virtual {p2}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "e_contact_number"

    .line 101
    invoke-virtual {p2}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 104
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object p2, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 109
    :try_start_3
    iget-object v3, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/telephone/b;

    invoke-interface {v3, p1, p2}, Lcom/tencent/tai/pal/telephone/b;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 111
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/tai/pal/telephone/c;->e:Ljava/lang/Integer;

    .line 117
    iget-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iput-object p2, p1, Lcom/tencent/tai/pal/telephone/c;->f:Ljava/lang/String;

    .line 119
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/telephone/d;ILcom/tencent/tai/pal/telephone/PhoneContact;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/telephone/d;->a(ILcom/tencent/tai/pal/telephone/PhoneContact;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/telephone/d;Ljava/util/List;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/telephone/d;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/telephone/d;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/tai/pal/telephone/d;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/telephone/d;ZZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/tai/pal/telephone/d;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/telephone/PhoneContact;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 132
    :cond_0
    sget-object v4, Lcom/tencent/tai/pal/telephone/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TelephoneService.onUploadTelContacts,size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tai/pal/telephone/PhoneContact;

    .line 137
    invoke-virtual {v6}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "e_contact_name"

    .line 141
    invoke-virtual {v6}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "e_contact_number"

    .line 142
    invoke-virtual {v6}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x7d0

    if-lt v5, v6, :cond_1

    .line 150
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 152
    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 129
    :cond_4
    :goto_1
    sget-object p1, Lcom/tencent/tai/pal/telephone/d;->a:Ljava/lang/String;

    const-string v4, "TelephoneService.uploadTelContacts contacts is null"

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 158
    :try_start_3
    iget-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/tencent/tai/pal/telephone/b;

    invoke-interface {p1, v3}, Lcom/tencent/tai/pal/telephone/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_4
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 160
    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iput-object v3, p1, Lcom/tencent/tai/pal/telephone/c;->b:Ljava/lang/String;

    .line 166
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private a(Z)V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 80
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/telephone/b;

    invoke-interface {v3, p1}, Lcom/tencent/tai/pal/telephone/b;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 82
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/tai/pal/telephone/c;->a:Ljava/lang/Boolean;

    .line 88
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private a(ZZ)V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 176
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/telephone/b;

    invoke-interface {v3, p1, p2}, Lcom/tencent/tai/pal/telephone/b;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 178
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/tai/pal/telephone/c;->c:Ljava/lang/Boolean;

    .line 183
    iget-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/tai/pal/telephone/c;->d:Ljava/lang/Boolean;

    .line 184
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->answerInComingCall()I

    move-result p0

    return p0
.end method

.method public a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 282
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->viewCallRecord(I)I

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->call(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 64
    instance-of v0, p1, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    .line 68
    iget-object p1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    const/4 v0, 0x1

    .line 69
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/tai/pal/telephone/d;->e:Z

    .line 70
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->f:Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->registerOnTelInfoListener(Lcom/tencent/tai/pal/telephone/TelephoneAdapter$OnTelInfoListener;)V

    .line 71
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param not TelephoneAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "adapter should not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/tencent/tai/pal/telephone/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 196
    sget-object p0, Lcom/tencent/tai/pal/telephone/d;->a:Ljava/lang/String;

    const-string p1, "registerCallback listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 201
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 202
    sget-object v2, Lcom/tencent/tai/pal/telephone/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHasRegister:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tai/pal/telephone/d;->e:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v1, p0, Lcom/tencent/tai/pal/telephone/d;->e:Z

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/tencent/tai/pal/telephone/b;->a(Z)V

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/tencent/tai/pal/telephone/b;->a(Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v2, v2, Lcom/tencent/tai/pal/telephone/c;->d:Ljava/lang/Boolean;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 214
    invoke-interface {p1, v1, v2}, Lcom/tencent/tai/pal/telephone/b;->a(ZZ)V

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object v1, v1, Lcom/tencent/tai/pal/telephone/c;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->d:Lcom/tencent/tai/pal/telephone/c;

    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/c;->f:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lcom/tencent/tai/pal/telephone/b;->a(ILjava/lang/String;)V

    .line 223
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->refuseInComingCall()I

    move-result p0

    return p0
.end method

.method public b(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->getRecentContact(I)Lcom/tencent/tai/pal/telephone/PhoneContact;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 294
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "e_contact_name"

    .line 296
    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "e_contact_number"

    .line 297
    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/PhoneContact;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public b(Lcom/tencent/tai/pal/telephone/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 229
    sget-object p0, Lcom/tencent/tai/pal/telephone/d;->a:Ljava/lang/String;

    const-string p1, "unregisterCallback listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 234
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->ignoreInComingCall()I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/telephone/d;->b:Lcom/tencent/tai/pal/telephone/TelephoneAdapter;

    invoke-virtual {p0}, Lcom/tencent/tai/pal/telephone/TelephoneAdapter;->viewPhonebook()I

    move-result p0

    return p0
.end method
