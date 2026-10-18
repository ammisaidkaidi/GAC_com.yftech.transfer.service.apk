.class Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;
.super Ljava/lang/Object;
.source "TAIDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->create()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;


# direct methods
.method constructor <init>(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    .line 76
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-static {v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$000(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-static {v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$100(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-static {v0}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$000(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    iget-object v1, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-static {v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$000(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$200(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object p0, p0, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog$1;->this$0:Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;->access$300(Lcom/tencent/taifeedback/upload/sdk/ui/TAIDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
