.class public abstract Lcom/tencent/tai/pal/ins/InsAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "InsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract registerOnInsInfoChangeListener(Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;)V
.end method

.method public abstract unregisterOnInsInfoChangeListener(Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;)V
.end method
