.class public Lcom/lge/upnp/uda/service/ProgressInfo;
.super Ljava/lang/Object;
.source "ProgressInfo.java"


# instance fields
.field public mIsCompleted:Z

.field public mTotalLength:J

.field public mTotalReceivedBytes:J

.field public mTotalSentBytes:J

.field public mUrl:Ljava/lang/String;

.field public merror:Lcom/lge/upnp/uda/service/EError;


# direct methods
.method public constructor <init>(JJZLcom/lge/upnp/uda/service/EError;JLjava/lang/String;)V
    .registers 11
    .param p1, "totalLength"    # J
    .param p3, "totalSentBytes"    # J
    .param p5, "isCompleted"    # Z
    .param p6, "error"    # Lcom/lge/upnp/uda/service/EError;
    .param p7, "totalReceivedBytes"    # J
    .param p9, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->mTotalLength:J

    .line 61
    iput-wide p3, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->mTotalSentBytes:J

    .line 62
    iput-boolean p5, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->mIsCompleted:Z

    .line 63
    iput-object p6, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->merror:Lcom/lge/upnp/uda/service/EError;

    .line 64
    iput-wide p7, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->mTotalReceivedBytes:J

    .line 65
    iput-object p9, p0, Lcom/lge/upnp/uda/service/ProgressInfo;->mUrl:Ljava/lang/String;

    .line 66
    return-void
.end method
