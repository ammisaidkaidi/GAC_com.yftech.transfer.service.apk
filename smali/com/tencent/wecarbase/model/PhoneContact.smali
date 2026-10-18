.class public Lcom/tencent/wecarbase/model/PhoneContact;
.super Ljava/lang/Object;
.source "PhoneContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wecarbase/model/PhoneContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final RET_FAIL:I = 0x2

.field public static final RET_NOTSUPPORT:I = 0x0

.field public static final RET_SUCCESS:I = 0x1


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/tencent/wecarbase/model/PhoneContact$1;

    invoke-direct {v0}, Lcom/tencent/wecarbase/model/PhoneContact$1;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/model/PhoneContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/model/PhoneContact;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/model/PhoneContact;->number:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarbase/model/PhoneContact;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/tencent/wecarbase/model/PhoneContact;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/wecarbase/model/PhoneContact;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/wecarbase/model/PhoneContact;->number:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/wecarbase/model/PhoneContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/wecarbase/model/PhoneContact;->number:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    iget-object p2, p0, Lcom/tencent/wecarbase/model/PhoneContact;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/tencent/wecarbase/model/PhoneContact;->number:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
