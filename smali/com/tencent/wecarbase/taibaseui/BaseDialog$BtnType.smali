.class public final enum Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;
.super Ljava/lang/Enum;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarbase/taibaseui/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BtnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

.field public static final enum DIFF:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

.field public static final enum SAME:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    const-string v1, "SAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->SAME:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    .line 28
    new-instance v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    const-string v1, "DIFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->DIFF:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    sget-object v1, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->SAME:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->DIFF:Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->$VALUES:[Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;
    .locals 1

    .line 26
    const-class v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->$VALUES:[Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    invoke-virtual {v0}, [Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wecarbase/taibaseui/BaseDialog$BtnType;

    return-object v0
.end method
