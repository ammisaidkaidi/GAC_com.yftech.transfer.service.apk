.class Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;
.super Ljava/lang/Object;
.source "BaiduNavigationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->onClose(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object v0, v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$208(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)I

    .line 295
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object v0, v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$200(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object v0, v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$202(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;I)I

    .line 297
    iget-object v0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object v0, v0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {v0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$300(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V

    .line 298
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$400(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1$1;->this$1:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;

    iget-object p0, p0, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter$1;->this$0:Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;

    invoke-static {p0}, Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;->access$500(Lcom/yftech/transfer/navigation/BaiduNavigationAdapter;)V

    :goto_0
    return-void
.end method
