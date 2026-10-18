.class Lcom/baidu/a/a/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/baidu/a/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/baidu/a/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/a/a/a/b/d;->a:Lcom/baidu/a/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/a/a/a/b/c$a;Lcom/baidu/a/a/a/b/c$a;)I
    .locals 1

    iget p0, p2, Lcom/baidu/a/a/a/b/c$a;->b:I

    iget v0, p1, Lcom/baidu/a/a/a/b/c$a;->b:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_2

    iget-boolean v0, p1, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p1, p1, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-boolean p1, p2, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/a/a/a/b/c$a;

    check-cast p2, Lcom/baidu/a/a/a/b/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/a/a/a/b/d;->a(Lcom/baidu/a/a/a/b/c$a;Lcom/baidu/a/a/a/b/c$a;)I

    move-result p0

    return p0
.end method
