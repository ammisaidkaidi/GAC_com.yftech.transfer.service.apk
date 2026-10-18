.class public Lcom/tencent/tai/pal/client/cs/a/j;
.super Ljava/lang/Object;
.source "TelephoneData.java"


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/telephone/PhoneContact;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Boolean;

.field d:Ljava/lang/Boolean;

.field e:Ljava/lang/Integer;

.field f:Lcom/tencent/tai/pal/telephone/PhoneContact;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->a:Ljava/lang/Boolean;

    .line 18
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->b:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->c:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->d:Ljava/lang/Boolean;

    .line 33
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->e:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/j;->f:Lcom/tencent/tai/pal/telephone/PhoneContact;

    return-void
.end method
