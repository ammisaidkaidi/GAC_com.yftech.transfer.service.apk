.class public Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TtsItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TtsViewHolder"
.end annotation


# instance fields
.field public final cb:Landroid/widget/ImageView;

.field public final ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

.field public final ivHead:Landroid/widget/ImageView;

.field public final ivPlay:Landroid/widget/ImageView;

.field public final llDelete:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvDelete:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Landroid/view/View;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/tencent/wecar/tts/R$id;->tv_delete:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvDelete:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/tencent/wecar/tts/R$id;->iv_choose:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->cb:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/tencent/wecar/tts/R$id;->tv_cancel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvCancel:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/tencent/wecar/tts/R$id;->ll_delete:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->llDelete:Landroid/widget/LinearLayout;

    .line 77
    sget v0, Lcom/tencent/wecar/tts/R$id;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvName:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/tencent/wecar/tts/R$id;->tv_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$000(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_head:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivHead:Landroid/widget/ImageView;

    .line 81
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_play:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivPlay:Landroid/widget/ImageView;

    .line 83
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivPlay:Landroid/widget/ImageView;

    invoke-custom {p0}, call_site_5("onClick", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)Landroid/view/View$OnClickListener;, (Landroid/view/View;)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->lambda$new$0(Landroid/view/View;)V, (Landroid/view/View;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p1, Lcom/tencent/wecar/tts/R$id;->iv_do:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iput-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    .line 94
    invoke-custom {p0}, call_site_6("onClick", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)Landroid/view/View$OnClickListener;, (Landroid/view/View;)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->lambda$new$1(Landroid/view/View;)V, (Landroid/view/View;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    invoke-custom {p0}, call_site_7("onClick", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)Landroid/view/View$OnClickListener;, (Landroid/view/View;)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->lambda$new$2(Landroid/view/View;)V, (Landroid/view/View;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvDelete:Landroid/widget/TextView;

    invoke-custom {p0}, call_site_8("onClick", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)Landroid/view/View$OnClickListener;, (Landroid/view/View;)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->lambda$new$3(Landroid/view/View;)V, (Landroid/view/View;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvCancel:Landroid/widget/TextView;

    invoke-custom {p0}, call_site_9("onClick", (Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)Landroid/view/View$OnClickListener;, (Landroid/view/View;)V, invoke-direct@Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->lambda$new$4(Landroid/view/View;)V, (Landroid/view/View;)V)@Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$400(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->getInstance()Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->stop()V

    .line 86
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$200(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->startPlay()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->startPlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 5

    .line 95
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 96
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$800(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->getInstance()Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->stop()V

    .line 99
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 99
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setAppendTtsSpeakerPath(Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/TtsManagerInner;->getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-interface {v1, v3, v4}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$800(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$800(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setInChose(Z)V

    .line 105
    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v3}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$800(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->update(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    :cond_0
    const/4 v1, 0x1

    .line 107
    invoke-virtual {p1, v1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setInChose(Z)V

    const-string v1, "TtsItemsAdapter"

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set TtsSpeakerPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",Modelname="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getModelname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->cb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    const-string v1, "\u5df2\u9009\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$900(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/wecar/tts/R$color;->in_chose_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0, p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$802(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 114
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->update(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 117
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v3, "entrytype"

    .line 118
    iget-object v4, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v4}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$900(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "time"

    .line 119
    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "taskid"

    .line 120
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getTaskid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/tencent/taes/report/EventHelper;->getInstance()Lcom/tencent/taes/report/EventHelper;

    move-result-object p1

    const-string v1, "customtts_voicepacket_use"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/taes/report/EventHelper;->userAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 124
    iput-boolean v2, v0, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    goto :goto_0

    .line 126
    :cond_2
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result p1

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto/16 :goto_3

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    const-string v0, "TtsItemsAdapter"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FINISHED"

    .line 134
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iget-boolean v0, v0, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->mNotFinished:Z

    if-eqz v0, :cond_4

    .line 139
    iput-boolean v2, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 140
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->llDelete:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "TtsItemsAdapter"

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDownLoading="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/wecar/tts/log/TtsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsDownLoading:Z

    if-eqz v0, :cond_2

    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$602(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Z)Z

    .line 147
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->cb:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$700(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getInChose()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    invoke-static {}, Lcom/tencent/wecar/tts/larklite/utils/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u5f53\u524d\u89d2\u8272\u5df2\u9009\u4e2d"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 154
    iput-boolean v2, v3, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    goto :goto_1

    .line 156
    :cond_6
    iput-boolean v1, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 157
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->delete(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    const-string v0, ""

    .line 165
    invoke-virtual {p1, v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setLocalPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setProgress(I)V

    .line 167
    invoke-virtual {p1, v0}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->setInChose(Z)V

    .line 168
    iput-boolean v0, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 170
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$500(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wecar/tts/client/ttslist/dao/TtsRecordDao;->delete(Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->cb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {p1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->mIsShowDelete:Z

    .line 178
    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->resetView()V

    return-void
.end method

.method private startPlay()V
    .locals 3

    const-string v0, "TtsItemsAdapter"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try startPlay net,mIsTtsPlaying ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$100(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$100(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$202(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;I)I

    .line 188
    invoke-static {}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->getInstance()Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v1}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$300(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->this$0:Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;

    invoke-static {v2}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;->access$200(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;

    invoke-virtual {v1}, Lcom/tencent/wecar/tts/client/ttslist/beans/TtsData;->getDemoWavPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder$1;-><init>(Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr;->play(Ljava/lang/String;Lcom/tencent/wecar/tts/client/ttslist/PlayerMgr$PlayCallBack;)V

    return-void
.end method


# virtual methods
.method public resetView()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->llDelete:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/ttslist/TtsItemsAdapter$TtsViewHolder;->ivDo:Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/client/ttslist/DownLoadingView;->setVisibility(I)V

    return-void
.end method
