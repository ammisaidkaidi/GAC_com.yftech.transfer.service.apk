.class public Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
.super Ljava/lang/RuntimeException;
.source "FeatureNotSupportedException.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureNotSupportedException found. NOT supported feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;->a:Ljava/lang/String;

    return-object p0
.end method
