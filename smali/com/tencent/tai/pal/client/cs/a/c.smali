.class final Lcom/tencent/tai/pal/client/cs/a/c;
.super Lcom/tencent/tai/pal/client/cs/a;
.source "CabinKeyInputManagerImpl.java"

# interfaces
.implements Lcom/tencent/tai/pal/client/PALCabinKeyInputManager;


# instance fields
.field private a:Lcom/tencent/tai/pal/input/d;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

.field private g:Lcom/tencent/tai/pal/input/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.tencent.tai.pal.INPUT"

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/tai/pal/client/cs/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->a:Lcom/tencent/tai/pal/input/d;

    .line 62
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    .line 63
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    .line 64
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z

    .line 67
    new-instance p1, Lcom/tencent/tai/pal/client/cs/a/c$1;

    invoke-direct {p1, p0}, Lcom/tencent/tai/pal/client/cs/a/c$1;-><init>(Lcom/tencent/tai/pal/client/cs/a/c;)V

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->g:Lcom/tencent/tai/pal/input/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/c;)Lcom/tencent/tai/pal/input/KeyFilter;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->g()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object p0

    return-object p0
.end method

.method private a(IIIJJ)V
    .locals 12

    move-object v0, p0

    move v9, p3

    .line 134
    iget-object v10, v0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string v1, "PAL_SDK"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CabinKeyInputManagerImpl.dispatchKeyEvent source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " keyCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " downTime="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " eventTime="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p6

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " mListener="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " mCabinKeyEventHandlers.size()="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    .line 142
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v11, Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(IIIJJ)V

    .line 144
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-interface {v1}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, p3}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-interface {v1, v11}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->onKeyEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V

    goto :goto_0

    :cond_0
    const-string v2, "PAL_SDK"

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CabinKeyInputManagerImpl.dispatchKeyEvent not match  mListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " keyFilter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    .line 159
    invoke-interface {v2}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v3, p3}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {v2, v11}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->onKeyEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V

    goto :goto_1

    :cond_2
    const-string v4, "PAL_SDK"

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CabinKeyInputManagerImpl.dispatchKeyEvent not match  handler="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " keyFilter="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " keyCode="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    if-eq v9, v1, :cond_4

    const/16 v1, 0xd

    if-eq v9, v1, :cond_4

    const/16 v1, 0x8

    if-eq v9, v1, :cond_4

    const/16 v1, 0x9

    if-ne v9, v1, :cond_6

    .line 175
    :cond_4
    invoke-virtual {v11}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 176
    iput-object v11, v0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v11}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    .line 178
    iput-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    .line 181
    :cond_6
    :goto_2
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/client/cs/a/c;IIIJJ)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/tencent/tai/pal/client/cs/a/c;->a(IIIJJ)V

    return-void
.end method

.method private b(IIIJJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v9, p3

    .line 185
    iget-object v10, v0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string v1, "PAL_SDK"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " downTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p4

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " eventTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p6

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCabinKeyEventHandlers.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    .line 193
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v15, Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(IIIJJ)V

    .line 195
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-interface {v1}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1, v9}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static/range {p3 .. p3}, Lcom/tencent/tai/pal/input/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/tencent/tai/pal/input/a;->a(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;IIIJJ)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-interface {v1, v15}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->onKeyLongPressEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V

    goto :goto_0

    :cond_1
    const-string v2, "PAL_SDK"

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent not match  mListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " keyFilter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    .line 215
    invoke-interface {v1}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 216
    invoke-virtual {v2, v9}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-static/range {p3 .. p3}, Lcom/tencent/tai/pal/input/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 218
    invoke-static/range {v1 .. v8}, Lcom/tencent/tai/pal/input/a;->a(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;IIIJJ)V

    goto :goto_1

    .line 220
    :cond_3
    invoke-interface {v1, v15}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->onKeyLongPressEvent(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V

    goto :goto_1

    :cond_4
    const-string v3, "PAL_SDK"

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CabinKeyInputManagerImpl.dispatchKeyLongPressEvent not match  handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keyFilter="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/16 v1, 0xc

    if-eq v9, v1, :cond_6

    const/16 v1, 0xd

    if-eq v9, v1, :cond_6

    const/16 v1, 0x8

    if-eq v9, v1, :cond_6

    const/16 v1, 0x9

    if-ne v9, v1, :cond_8

    .line 236
    :cond_6
    invoke-virtual {v15}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 237
    iput-object v15, v0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    goto :goto_2

    .line 238
    :cond_7
    invoke-virtual {v15}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    .line 239
    iput-object v1, v0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    .line 244
    :cond_8
    :goto_2
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/tai/pal/client/cs/a/c;IIIJJ)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p7}, Lcom/tencent/tai/pal/client/cs/a/c;->b(IIIJJ)V

    return-void
.end method

.method private g()Lcom/tencent/tai/pal/input/KeyFilter;
    .locals 5

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    invoke-interface {v2}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v2}, Lcom/tencent/tai/pal/input/KeyFilter;->getBindingKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v2}, Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;->getKeyFilter()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Lcom/tencent/tai/pal/input/KeyFilter;->getBindingKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance p0, Lcom/tencent/tai/pal/input/KeyFilter;

    invoke-direct {p0}, Lcom/tencent/tai/pal/input/KeyFilter;-><init>()V

    .line 127
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/tai/pal/input/KeyFilter;->addFilter(I)V

    goto :goto_2

    :cond_5
    return-object p0

    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private h()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->a:Lcom/tencent/tai/pal/input/d;

    if-nez v0, :cond_0

    const-string v0, "PAL_SDK"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAdapterRegisterStatus cabinKeyInputApi==null mHasRegister:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z

    if-nez v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 256
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->g:Lcom/tencent/tai/pal/input/c;

    invoke-interface {v0, v1}, Lcom/tencent/tai/pal/input/d;->a(Lcom/tencent/tai/pal/input/c;)V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 265
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->g:Lcom/tencent/tai/pal/input/c;

    invoke-interface {v0, v1}, Lcom/tencent/tai/pal/input/d;->b(Lcom/tencent/tai/pal/input/c;)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 268
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/tencent/tai/pal/input/d$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/input/d;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->a:Lcom/tencent/tai/pal/input/d;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z

    .line 38
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->h()V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected f()V
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    if-eqz v1, :cond_0

    const-string v1, "PAL_SDK"

    const-string v2, "PAL service disconnected send action up "

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    invoke-virtual {v1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getSource()I

    move-result v3

    .line 48
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    invoke-virtual {v1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getKeyCode()I

    move-result v5

    .line 49
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    invoke-virtual {v1}, Lcom/tencent/tai/pal/input/CabinKeyEvent;->getDownTime()J

    move-result-wide v6

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v4, 0x2

    move-object v2, p0

    .line 52
    invoke-direct/range {v2 .. v9}, Lcom/tencent/tai/pal/client/cs/a/c;->b(IIIJJ)V

    :cond_0
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->f:Lcom/tencent/tai/pal/input/CabinKeyEvent;

    .line 55
    iput-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->a:Lcom/tencent/tai/pal/input/d;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->e:Z

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCabinKeyEventHandler(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CabinKeyInputManagerImpl.registerCabinKeyEventHandler handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->h()V

    .line 296
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public setCabinKeyEventListener(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->c:Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;

    .line 278
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->h()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterCabinKeyEventHandler(Lcom/tencent/tai/pal/client/PALCabinKeyInputManager$CabinKeyEventHandler;)V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CabinKeyInputManagerImpl.unregisterCabinKeyEventHandler handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/a/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/a/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/tencent/tai/pal/client/cs/a/c;->h()V

    .line 311
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
