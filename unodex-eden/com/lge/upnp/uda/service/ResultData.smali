.class public Lcom/lge/upnp/uda/service/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# instance fields
.field public appdata:Ljava/lang/Object;

.field public res:Lcom/lge/upnp/uda/service/Result;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    iput-object v0, p0, Lcom/lge/upnp/uda/service/ResultData;->res:Lcom/lge/upnp/uda/service/Result;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/upnp/uda/service/ResultData;->appdata:Ljava/lang/Object;

    .line 28
    return-void
.end method
