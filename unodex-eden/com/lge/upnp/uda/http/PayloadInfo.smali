.class public Lcom/lge/upnp/uda/http/PayloadInfo;
.super Ljava/lang/Object;
.source "PayloadInfo.java"


# instance fields
.field public mBuffer:[B

.field public mIsCompleted:Z

.field public mStartPos:J

.field public mTotalLength:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide v0, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mStartPos:J

    .line 57
    iput-wide v0, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mTotalLength:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mIsCompleted:Z

    .line 59
    return-void
.end method

.method public constructor <init>([BJJZ)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "totalLength"    # J
    .param p4, "startPos"    # J
    .param p6, "isCompleted"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mBuffer:[B

    .line 46
    iput-wide p2, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mTotalLength:J

    .line 47
    iput-wide p4, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mStartPos:J

    .line 48
    iput-boolean p6, p0, Lcom/lge/upnp/uda/http/PayloadInfo;->mIsCompleted:Z

    .line 49
    return-void
.end method
