.class public Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TtsItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsItemsAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentChoseTts:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

.field private mIsNetPlaying:Z

.field private mIsTtsPlaying:Z

.field private mLocalDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedSetModel:Z

.field private mPlayingListener:Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;

.field private mPlayingPos:I

.field private mTf:Landroid/graphics/Typeface;

.field private final mTtsRecordDao:Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mNeedSetModel:Z

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingPos:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mCurrentChoseTts:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 50
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsNetPlaying:Z

    .line 51
    iput-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsTtsPlaying:Z

    .line 319
    invoke-custom {p0}, call_site_10("onPlayingChanged", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;, (Z)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->lambda$new$0(Z)V, (Z)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingListener:Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;

    .line 333
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    .line 335
    new-instance p1, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    invoke-direct {p1}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;-><init>()V

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mTtsRecordDao:Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    .line 336
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "font/din_medium.otf"

    .line 337
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mTf:Landroid/graphics/Typeface;

    .line 338
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingListener:Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/graphics/Typeface;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mTf:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsTtsPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingPos:I

    return p0
.end method

.method static synthetic access$202(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingPos:I

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsNetPlaying:Z

    return p0
.end method

.method static synthetic access$402(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsNetPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mTtsRecordDao:Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mNeedSetModel:Z

    return p0
.end method

.method static synthetic access$602(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mNeedSetModel:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->startDownLoad(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mCurrentChoseTts:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mCurrentChoseTts:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getImage(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 406
    sget p0, Lcom/tencent/wecar/tts/R$drawable;->girl_avatar:I

    return p0

    .line 404
    :pswitch_0
    sget p0, Lcom/tencent/wecar/tts/R$drawable;->men_avatar:I

    return p0

    .line 402
    :pswitch_1
    sget p0, Lcom/tencent/wecar/tts/R$drawable;->women_avatar:I

    return p0

    .line 400
    :pswitch_2
    sget p0, Lcom/tencent/wecar/tts/R$drawable;->avatar:I

    return p0

    .line 398
    :pswitch_3
    sget p0, Lcom/tencent/wecar/tts/R$drawable;->girl_avatar:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 389
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x12

    if-le p0, v0, :cond_1

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isNetworkConnected()Z
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 219
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 320
    iget-boolean v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsNetPlaying:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->getInstance()Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->stop()V

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsTtsPlaying:Z

    const-string p1, "TtsItemsAdapter"

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts onPlayingChanged,mIsTtsPlaying ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mIsTtsPlaying:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startDownLoad(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    .line 223
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    const-string p1, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    .line 228
    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$1;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/tencent/wecar/tts/larklite/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->onBindViewHolder(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;I)V
    .locals 7

    .line 361
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->handleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    iget-boolean v0, v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->llDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->llDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setVisibility(I)V

    .line 369
    :goto_0
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getProgress()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    const-string v3, "\u5df2\u4e0b\u8f7d"

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/wecar/tts/larklite/utils/MemFormat;->formatSize2StrMb(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 369
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setProgress(I)V

    .line 372
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivHead:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getVoiceType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->getImage(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getInChose()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mCurrentChoseTts:Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 376
    :cond_2
    iget-object v0, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->cb:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v3}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getInChose()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getProgress()I

    move-result v0

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mLocalDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {p2}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getInChose()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 378
    iget-object p2, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    const-string v0, "\u5df2\u9009\u4e2d"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object p1, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/tencent/wecar/tts/R$color;->in_chose_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 381
    :cond_4
    iget-object p1, p1, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/tencent/wecar/tts/R$color;->not_in_chose_text_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/tencent/wecar/tts/R$layout;->tts_row_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 356
    new-instance p2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removePlayingListener()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingListener:Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->mPlayingListener:Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;

    invoke-interface {v0, p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->removePlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V

    :cond_0
    return-void
.end method
