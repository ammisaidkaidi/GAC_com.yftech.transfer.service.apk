.class public Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PersonaliseTTSActivity.java"

# interfaces
.implements Lcom/tencent/wecar/tts/client/view/IPersonaliseView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonaliseTTSActivity"


# instance fields
.field private mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

.field private mAttentionView:Landroid/widget/ImageView;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mInfoView:Landroid/widget/TextView;

.field private mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

.field private mLoadingBigView:Landroid/widget/ImageView;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

.field private mLoadingSmallView:Landroid/widget/ImageView;

.field private mLoginButton:Landroid/widget/Button;

.field private mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

.field private mRecordButton:Landroid/widget/Button;

.field private mRetryButton:Landroid/widget/Button;

.field private mTtsRv:Landroid/support/v7/widget/RecyclerView;

.field private mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    .line 51
    iput-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    return-void
.end method

.method private showTtsList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/CustomDividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tencent/wecar/tts/client/ttslist/CustomDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 127
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/wecar/tts/R$drawable;->divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/ttslist/CustomDividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 129
    new-instance v0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    .line 130
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->showLoginButton(Z)V

    .line 132
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mInfoView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAttentionView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private switchSkin(I)V
    .locals 2

    const-string p0, "PersonaliseTTSActivity"

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 251
    sget v0, Lcom/tencent/wecar/tts/R$id;->ib_exit:I

    if-ne p1, v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->finish()V

    goto :goto_1

    .line 253
    :cond_0
    sget v0, Lcom/tencent/wecar/tts/R$id;->bt_login:I

    if-ne p1, v0, :cond_1

    .line 254
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->login()V

    goto :goto_1

    .line 255
    :cond_1
    sget v0, Lcom/tencent/wecar/tts/R$id;->bt_record:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/tencent/wecar/tts/R$id;->iv_applets:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    sget v0, Lcom/tencent/wecar/tts/R$id;->bt_retry:I

    if-ne p1, v0, :cond_4

    .line 258
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->retry()V

    goto :goto_1

    .line 256
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->recordVoice()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/larklite/utils/DisplayMetricsUtil;->setDisplayMetrics(Landroid/app/Activity;Landroid/app/Application;)V

    .line 57
    sget p1, Lcom/tencent/wecar/tts/R$layout;->activity_personalise_tts:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->setContentView(I)V

    .line 59
    sget p1, Lcom/tencent/wecar/tts/R$id;->ib_exit:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mExitButton:Landroid/widget/ImageButton;

    .line 60
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcom/tencent/wecar/tts/R$id;->bt_record:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRecordButton:Landroid/widget/Button;

    .line 62
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p1, Lcom/tencent/wecar/tts/R$id;->bt_login:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoginButton:Landroid/widget/Button;

    .line 64
    sget p1, Lcom/tencent/wecar/tts/R$id;->rv:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    .line 65
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lcom/tencent/wecar/tts/R$id;->tv_info:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mInfoView:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_attention:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAttentionView:Landroid/widget/ImageView;

    .line 68
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_applets:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/view/RoundImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    .line 69
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    invoke-virtual {p1, p0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_loading_big:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigView:Landroid/widget/ImageView;

    .line 71
    sget p1, Lcom/tencent/wecar/tts/R$id;->ll_loading:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 72
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_loading_small:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallView:Landroid/widget/ImageView;

    .line 73
    sget p1, Lcom/tencent/wecar/tts/R$id;->bt_retry:I

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRetryButton:Landroid/widget/Button;

    .line 74
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p1, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-direct {p1, p0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;-><init>(Lcom/tencent/wecar/tts/client/view/IPersonaliseView;)V

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    .line 77
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->init()V

    .line 78
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "skinMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->switchSkin(I)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mPersonaliseTTSPresenter:Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/presenter/PersonaliseTTSPresenter;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mttsItemsAdapter:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->removePlayingListener()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 232
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "skinMode"

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->switchSkin(I)V

    return-void
.end method

.method public setAppletQRCode(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setVisibility(I)V

    .line 165
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setEnabled(Z)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mInfoView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showAppletQRCode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showAttentionPicture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAttentionView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAttentionView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showInfoView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->showLoadingView(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->showTtsList(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->showAttentionPicture(Z)V

    const-string p1, "\u65e0\u81ea\u5236\u8bed\u97f3"

    .line 117
    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->setInfo(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showLoadLinearLayout(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 197
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingSmallAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showLoadingView(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoadingBigAnima:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showLoginButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoginButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mLoginButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showQRCodeRefreshView()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    sget v1, Lcom/tencent/wecar/tts/R$drawable;->icon_refresh:I

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setImageResource(I)V

    .line 225
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    sget v1, Lcom/tencent/wecar/tts/R$drawable;->bg_refresh:I

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setBackgroundResource(I)V

    .line 227
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mAppletsView:Lcom/tencent/wecar/tts/client/view/RoundImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/client/view/RoundImageView;->setVisibility(I)V

    return-void
.end method

.method public showRecordButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRecordButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRecordButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showRetryButton(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRetryButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mRetryButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showTtsList(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;->mTtsRv:Landroid/support/v7/widget/RecyclerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method
