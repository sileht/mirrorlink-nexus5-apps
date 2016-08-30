.class public abstract Lcom/lge/upnp/uda/service/IArgument;
.super Ljava/lang/Object;
.source "IArgument.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArgumentName()Ljava/lang/String;
.end method

.method public abstract getArgumentValue()Ljava/lang/String;
.end method

.method public abstract getDirection()Ljava/lang/String;
.end method

.method public abstract getRelStateVarInfo()Lcom/lge/upnp/uda/service/IStateVarInfo;
.end method

.method public abstract getRelatedStateVariable()Ljava/lang/String;
.end method
