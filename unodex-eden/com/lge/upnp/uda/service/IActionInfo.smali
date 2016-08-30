.class public abstract Lcom/lge/upnp/uda/service/IActionInfo;
.super Ljava/lang/Object;
.source "IActionInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActionName()Ljava/lang/String;
.end method

.method public abstract getArgument(Ljava/lang/String;)Lcom/lge/upnp/uda/service/IArgument;
.end method

.method public abstract getArgumentList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArgumentMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/upnp/uda/service/IArgument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArgumentValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getQos()I
.end method
