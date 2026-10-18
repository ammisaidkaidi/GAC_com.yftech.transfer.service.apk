.class Lcom/tencent/tai/pal/client/cs/a/c$1;
.super Lcom/tencent/tai/pal/input/c$a;
.source "CabinKeyInputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c$1;->a:Lcom/tencent/tai/pal/client/cs/a/c;

    invoke-direct {p0}, Lcom/tencent/tai/pal/input/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tai/pal/input/KeyFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/c$1;->a:Lcom/tencent/tai/pal/client/cs/a/c;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->a(Lcom/tencent/tai/pal/client/cs/a/c;)Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c$1;->a:Lcom/tencent/tai/pal/client/cs/a/c;

    .line 76
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getSource()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v2

    .line 78
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getKeyCode()I

    move-result v3

    .line 79
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getDownTime()J

    move-result-wide v4

    .line 80
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getEventTime()J

    move-result-wide v6

    .line 75
    invoke-static/range {v0 .. v7}, Lcom/tencent/tai/pal/client/cs/a/c;->a(Lcom/tencent/tai/pal/client/cs/a/c;IIIJJ)V

    return-void
.end method

.method public b(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c$1;->a:Lcom/tencent/tai/pal/client/cs/a/c;

    .line 86
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getSource()I

    move-result v1

    .line 87
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v2

    .line 88
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getKeyCode()I

    move-result v3

    .line 89
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getDownTime()J

    move-result-wide v4

    .line 90
    invoke-virtual {p1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getEventTime()J

    move-result-wide v6

    .line 85
    invoke-static/range {v0 .. v7}, Lcom/tencent/tai/pal/client/cs/a/c;->b(Lcom/tencent/tai/pal/client/cs/a/c;IIIJJ)V

    return-void
.end method
