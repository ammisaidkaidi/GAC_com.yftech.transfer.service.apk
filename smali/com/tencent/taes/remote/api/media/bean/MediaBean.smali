.class public Lcom/tencent/taes/remote/api/media/bean/MediaBean;
.super Ljava/lang/Object;
.source "MediaBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_HOT:Ljava/lang/String; = "hot"

.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_NEWS:Ljava/lang/String; = "news"

.field public static final TYPE_RADIO:Ljava/lang/String; = "radio"

.field public static final TYPE_SONG:Ljava/lang/String; = "song"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private itemAuthor:Ljava/lang/String;

.field private itemContainerId:Ljava/lang/String;

.field private itemContainerTitle:Ljava/lang/String;

.field private itemContent:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemImageUrl:Ljava/lang/String;

.field private itemIndex:I

.field private itemOffset:I

.field private itemPlayDirect:I

.field private itemTitle:Ljava/lang/String;

.field private itemTotal:I

.field private itemType:Ljava/lang/String;

.field private itemUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/tencent/taes/remote/api/media/bean/MediaBean$1;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/media/bean/MediaBean$1;-><init>()V

    sput-object v0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemType:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTitle:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemAuthor:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemIndex:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemImageUrl:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContent:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemPlayDirect:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemUrl:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTotal:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemOffset:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerId:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerTitle:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getItemAuthor()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemAuthor:Ljava/lang/String;

    return-object p0
.end method

.method public getItemContainerId()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerId:Ljava/lang/String;

    return-object p0
.end method

.method public getItemContainerTitle()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getItemContent()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContent:Ljava/lang/String;

    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemId:Ljava/lang/String;

    return-object p0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getItemIndex()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemIndex:I

    return p0
.end method

.method public getItemOffset()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemOffset:I

    return p0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getItemTotal()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTotal:I

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public getItemUrl()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isItemPlayDirect()Z
    .locals 1

    .line 97
    iget p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemPlayDirect:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setItemAuthor(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemAuthor:Ljava/lang/String;

    return-void
.end method

.method public setItemContainerId(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerId:Ljava/lang/String;

    return-void
.end method

.method public setItemContainerTitle(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerTitle:Ljava/lang/String;

    return-void
.end method

.method public setItemContent(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContent:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemIndex:I

    return-void
.end method

.method public setItemOffset(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemOffset:I

    return-void
.end method

.method public setItemPlayDirect(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemPlayDirect:I

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method public setItemTotal(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTotal:I

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setItemUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 172
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemPlayDirect:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemTotal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->itemContainerTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/tencent/taes/remote/api/media/bean/MediaBean;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
