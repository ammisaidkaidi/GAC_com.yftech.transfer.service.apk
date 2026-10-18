.class public Lcom/tencent/wecarflow/contentsdk/bean/BookInfo;
.super Lcom/tencent/wecarflow/contentsdk/bean/BookBriefInfo;
.source "BookInfo.java"


# instance fields
.field private chapter_idx:I

.field private chapter_name:Ljava/lang/String;

.field private chapter_offset:I

.field private chapter_uid:I

.field private chapter_word_cnt:I

.field private endTTS:Ljava/lang/String;

.field private paid:I

.field private startTTS:Ljava/lang/String;

.field private synckey:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/wecarflow/contentsdk/bean/BookBriefInfo;-><init>()V

    return-void
.end method
